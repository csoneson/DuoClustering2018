#' Help function for computing ARI
#'
#' @importFrom utils combn
#' @importFrom mclust adjustedRandIndex
#' @importFrom dplyr select
#' @importFrom stats median
#' @importFrom methods is
#'
#' @param x A \code{data.frame} with clustering results.
#'
#' @return a \code{data.frame} with ARI values for each pair of runs.
#'
ARIdf <- function(x) {
  stopifnot(methods::is(x, "data.frame"))
  stopifnot(methods::is(x[, 1], "character"))

  x <- dplyr::select(x, -cell)
  columns <- utils::combn(ncol(x), 2)
  ari.nk <- array(NA, ncol(columns))
  for (i in seq_len(length(ari.nk))) {
    ari.nk[i] <- mclust::adjustedRandIndex(x[, columns[1, i]],
                                           x[, columns[2, i]])
  }
  data.frame(ari.stab = ari.nk, run1 = columns[1, ], run2 = columns[2, ],
             stringsAsFactors = FALSE)
}

#' Plot stability of methods
#'
#' Plot the stability of the clusterings obtained for each method
#'
#' @param res A data.frame with clustering results.
#' @param method_colors A named vector with colors to use for the different
#'   clustering methods. Can be NULL, in which case colors are chosen
#'   automatically.
#'
#' @export
#'
#' @author Angelo Duo, Charlotte Soneson
#'
#' @importFrom magrittr %>%
#' @importFrom dplyr group_by select mutate summarize filter
#' @importFrom tidyr nest unnest separate
#' @importFrom purrr map_int map
#' @importFrom reshape2 dcast
#' @importFrom ggplot2 scale_colour_manual ggplot aes geom_line geom_vline
#'   theme_bw theme facet_grid ylim labs element_text element_blank geom_boxplot
#'   geom_tile coord_equal
#' @importFrom viridis scale_fill_viridis
#' @importFrom ggthemes theme_tufte
#'
#' @return A named list of \code{ggplot2} objects
#'
#' @examples
#' res <- clustering_summary_filteredExpr10_Koh_v1()
#' plots <- plot_stability(res)
#'
plot_stability <- function(res, method_colors = NULL) {
  ## Initialize list to hold plots
  plots <- list()

  if (is.null(method_colors)) {
    manual_scale <- ggplot2::scale_colour_discrete(name = "")
  } else {
    manual_scale <- ggplot2::scale_colour_manual(name = "",
                                                 values = method_colors)
  }

  shared_theme <- list(
    ggplot2::theme_bw(),
    manual_scale,
    ggplot2::theme(legend.text = ggplot2::element_text(size = 13),
                   legend.title = ggplot2::element_text(size = 16),
                   axis.title = ggplot2::element_text(size = 16),
                   axis.text.y = ggplot2::element_text(size = 13),
                   axis.text.x = ggplot2::element_text(size = 13),
                   strip.text = ggplot2::element_text(size = 13)),
    ggplot2::facet_grid(filtering ~ dataset, scales = "free_x"),
    ggplot2::ylim(NA, 1)
  )

  ## Compute stability
  ## nest df
  res_summary <- res %>% dplyr::group_by(dataset, method, k) %>%
    tidyr::nest() %>%
    dplyr::mutate(truenclust = purrr::map_int(data, function(x) {
      length(unique(x$trueclass))
    }))

  ## wide format
  cast.map <-  function(x) {
    reshape2::dcast(x, cell ~ run, value.var = "cluster")
  }

  res_nested <- res_summary %>%
    dplyr::mutate(data.wide = purrr::map(data, cast.map))

  ## compute ARI
  res_stab.tmp <- res_nested %>%
    dplyr::mutate(stability = purrr::map(data.wide, ARIdf))

  ## unnest
  res_stab <- res_stab.tmp %>%
    dplyr::select(dataset, method, k, stability, truenclust) %>%
    tidyr::unnest() %>%
    tidyr::separate(dataset, sep = "_", into = c("sce", "filtering",
                                                 "dataset")) %>%
    dplyr::select(-sce)
  res_stab$k <- as.integer(res_stab$k)

  ## methods combined
  plots[["stability_allmethods"]] <-
    ggplot2::ggplot(res_stab %>%
                      dplyr::group_by(dataset, method, filtering, k,
                                      truenclust) %>%
                      dplyr::summarize(ari.stab = stats::median(ari.stab,
                                                                na.rm = TRUE)),
                    ggplot2::aes(x = k, y = ari.stab, group = method,
                                 color = method)) +
    shared_theme +
    ggplot2::geom_vline(aes(xintercept = truenclust), linetype = "dashed") +
    ggplot2::geom_line(size = 1) +
    ggplot2::labs(y = "Stability (ARI)", x = "Number of clusters") +
    ggplot2::theme(legend.position = "right")

  ## stability at truenclust
  plots[["stability_truek"]] <-
    ggplot2::ggplot(res_stab %>% dplyr::filter(k == truenclust),
                    ggplot2::aes(x = method, y = ari.stab, group = method,
                                 color = method)) +
    shared_theme +
    ggplot2::geom_boxplot() +
    ggplot2::labs(y = "Stability (ARI) at true number of clusters") +
    ggplot2::theme(axis.text.x = element_text(size = 13, angle = 90,
                                              hjust = 1, vjust = 0.5))

  ## plot heat map on median stability with truenclust
  plots[["stability_heatmap_truek"]] <-
    ggplot2::ggplot(res_stab %>% dplyr::filter(k == truenclust) %>%
                      dplyr::group_by(filtering, dataset, method, k) %>%
                      dplyr::summarise(median.stability = stats::median(ari.stab)),
                    ggplot2::aes(x = stats::reorder(method, median.stability,
                                                    FUN = mean, na.rm = TRUE),
                                 y = stats::reorder(dataset, median.stability,
                                                    FUN = mean, na.rm = TRUE),
                                 fill = median.stability)) +
    ggplot2::geom_tile(color = "white", size = 0.5, na.rm = FALSE) +
    ggplot2::facet_wrap(~ filtering) +
    viridis::scale_fill_viridis(name = "Median \nstability \n(ARI)",
                                direction = -1,
                                limits = c(0, 1), na.value = "white") +
    ggthemes::theme_tufte(base_family = "Helvetica") +
    ggplot2::labs(x = NULL, y = NULL,
                  title = "median stability (ARI) at true number of clusters") +
    ggplot2::coord_equal() +
    ggplot2::theme(axis.text.x = ggplot2::element_text(size = 13, angle = 90,
                                                       hjust = 1, vjust = 0.5),
                   axis.text.y = ggplot2::element_text(size = 13),
                   legend.title = ggplot2::element_text(size = 16),
                   legend.title.align = 0,
                   legend.text = ggplot2::element_text(size = 13),
                   legend.position = "right",
                   legend.key.size = unit(2, "cm"),
                   legend.key.width = unit(0.5, "cm"),
                   axis.ticks = ggplot2::element_blank(),
                   strip.text = ggplot2::element_text(size = 16))

  plots
}
