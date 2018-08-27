#' Plot timing of methods
#'
#' Plot the elapsed time for each clustering method
#'
#' @param res A data.frame with clustering results.
#' @param method_colors A named vector with colors to use for the different
#'   clustering methods. Can be NULL, in which case colors are chosen
#'   automatically.
#' @param scaleMethod Either NULL or one of the clustering methods in the result
#'   data.frame. If not NULL, a plot will be generated where all elapsed times
#'   are normalized by dividing with the time for \code{scaleMethod}. If NULL,
#'   this plot will not be generated.
#'
#' @export
#'
#' @author Angelo Duo, Charlotte Soneson
#'
#' @importFrom magrittr %>%
#' @importFrom dplyr group_by summarize select ungroup
#' @importFrom tidyr separate
#' @importFrom mclust adjustedRandIndex
#' @importFrom ggplot2 scale_colour_manual geom_boxplot geom_line facet_grid
#'   scale_y_log10 theme_bw labs theme element_text aes
#' @importFrom stats median
#'
#' @return A named list of ggplot2 objects
#'
#' @examples
#' res <- clustering_summary_filteredExpr10_Koh_v2()
#' plots <- plot_timing(res)
#'
plot_timing <- function(res, method_colors = NULL, scaleMethod = NULL) {
  ## Initialize list to hold plots
  plots <- list()

  if (is.null(method_colors)) {
    manual_scale <- ggplot2::scale_colour_discrete(name = "")
  } else {
    manual_scale <- ggplot2::scale_colour_manual(name = "",
                                                 values = method_colors)
  }

  shared_theme <- list(
    ggplot2::scale_y_log10(),
    ggplot2::theme_bw(),
    manual_scale,
    ggplot2::theme(legend.text = ggplot2::element_text(size = 13),
                   legend.title = ggplot2::element_text(size = 16),
                   axis.title = ggplot2::element_text(size = 16),
                   axis.text.y = ggplot2::element_text(size = 13),
                   axis.text.x = ggplot2::element_text(size = 13),
                   strip.text = ggplot2::element_text(size = 13))
  )

  ## Compute ARI, true number of clusters, estimated number of clusters,
  ## elapsed time
  res_summary <- res %>%
    dplyr::group_by(dataset, method, run, k) %>%
    dplyr::summarize(ARI = mclust::adjustedRandIndex(cluster, trueclass),
                     truenclust = length(unique(trueclass)),
                     estnclust = unique(est_k),
                     elapsed = stats::median(elapsed)) %>%
    tidyr::separate(dataset, sep = "_", into = c("sce", "filtering",
                                                 "dataset")) %>%
    dplyr::select(-sce) %>% dplyr::ungroup()

  ## Elapsed time, one boxplot per dataset, over all ks and runs
  plots[["time_boxplot"]] <-
    ggplot2::ggplot(res_summary,
                    ggplot2::aes(x = reorder(method, elapsed,
                                             FUN = stats::median,
                                             order = TRUE, na.rm = TRUE),
                                 y = elapsed, group = method, color = method)) +
    shared_theme +
    ggplot2::geom_boxplot() +
    ggplot2::facet_grid(filtering ~ dataset, scales = "free") +
    ggplot2::labs(title = "", x = "", y = "Elapsed time (s)") +
    ggplot2::theme(axis.text.x = ggplot2::element_text(size = 13, angle = 90,
                                                       vjust = 0.5, hjust = 1),
                   legend.position = "none")

  ## Elapsed time, normalized by median time for scaleMethod
  if (!is.null(scaleMethod) && scaleMethod %in% res$method) {
    median.ref <- res_summary %>%
      dplyr::select(filtering, dataset, method, k, run, truenclust, elapsed) %>%
      dplyr::group_by(dataset, filtering, k) %>%
      dplyr::filter(method == scaleMethod) %>%
      dplyr::summarise(med.t = stats::median(elapsed)) %>%
      dplyr::ungroup()
    res.time <- res_summary %>%
      dplyr::group_by(filtering, dataset, method, k) %>%
      dplyr::summarise(median.elapsed = stats::median(elapsed))%>%
      dplyr::ungroup()
    res.time <- dplyr::full_join(res.time, median.ref,
                                 by = c("dataset", "filtering", "k")) %>%
      dplyr::mutate(norm.time = median.elapsed/med.t)

    plots[["time_normalized_by_ref"]] <-
      ggplot2::ggplot(res.time,
                      ggplot2::aes(x = reorder(method, norm.time,
                                               FUN = stats::median,
                                               order = TRUE, na.rm = TRUE),
                                   y = norm.time, group = method,
                                   color = method)) +
      shared_theme +
      ggplot2::geom_boxplot() +
      ggplot2::labs(x = "", y = paste0("Run time, normalized by ",
                                       scaleMethod), size = 16)+
      ggplot2::theme(axis.text.x = ggplot2::element_text(size = 13, angle = 90,
                                                         vjust = 0.5,
                                                         hjust = 1),
                     legend.position = "none")
  }

  plots[["time_vs_k"]] <-
    ggplot2::ggplot(res_summary %>% dplyr::group_by(dataset, filtering,
                                                    method, k) %>%
                      dplyr::summarize(
                        medianelapsed = stats::median(elapsed)) %>%
                      dplyr::ungroup(),
                    ggplot2::aes(x = k, y = medianelapsed, group = method,
                                 color = method)) +
    shared_theme +
    ggplot2::geom_line(size = 1) +
    ggplot2::facet_grid(filtering ~ dataset, scales = "free") +
    ggplot2::labs(title = "", y = "Elapsed time (s)",
                  x = "Number of clusters") +
    ggplot2::theme(legend.position = "right")

  plots
}
