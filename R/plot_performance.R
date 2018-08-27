#' Plot performance of clustering methods
#'
#' Generate various plots of the agreement between each clustering and the true
#' partitioning of the cells, quantified by the adjusted Rand index (ARI).
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
#' @importFrom ggplot2 scale_colour_manual scale_y_log10 theme_bw element_text
#'   aes theme ggplot geom_tile facet_wrap labs coord_equal element_blank
#'   geom_line geom_vline facet_grid geom_point ggtitle guides unit
#' @importFrom dplyr group_by summarize select ungroup
#' @importFrom tidyr separate
#' @importFrom mclust adjustedRandIndex
#' @importFrom stats reorder
#' @importFrom viridis scale_fill_viridis
#' @importFrom ggthemes theme_tufte
#' @importFrom stats median
#'
#' @return A named list of \code{ggplot2} objects
#'
#' @examples
#' res <- clustering_summary_filteredExpr10_Koh_v2()
#' plots <- plot_performance(res)
#'
plot_performance <- function(res, method_colors = NULL) {
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
                   axis.text = ggplot2::element_text(size = 13),
                   strip.text = ggplot2::element_text(size = 13))
  )

  shared_theme_heatmap <- list(
    ggplot2::geom_tile(color = "white", size = 0.5, na.rm = FALSE),
    ggplot2::facet_wrap(~ filtering),
    viridis::scale_fill_viridis(name = "Median ARI", direction = -1,
                                na.value = "white"),
    ggthemes::theme_tufte(base_family = "Helvetica"),
    ggplot2::labs(x = NULL, y = NULL, title = ""),
    ggplot2::coord_equal(),
    ggplot2::theme(axis.text.x = ggplot2::element_text(size = 13, angle = 90,
                                                       hjust = 1, vjust = 0.5),
                   axis.text.y = ggplot2::element_text(size = 13),
                   legend.title = ggplot2::element_text(size = 16),
                   legend.title.align = 1,
                   legend.text = ggplot2::element_text(size = 13),
                   legend.position = "right",
                   legend.key.size = ggplot2::unit(2, "cm"),
                   legend.key.width = ggplot2::unit(0.5, "cm"),
                   axis.ticks = ggplot2::element_blank(),
                   strip.text = ggplot2::element_text(size = 13))
  )

  res_summary <- res %>%
    dplyr::group_by(dataset, method, run, k) %>%
    dplyr::summarize(ARI = mclust::adjustedRandIndex(cluster, trueclass),
                     truenclust = length(unique(trueclass)),
                     estnclust = unique(est_k),
                     elapsed = stats::median(elapsed)) %>%
    tidyr::separate(dataset, sep = "_", into = c("sce", "filtering",
                                                 "dataset")) %>%
    dplyr::select(-sce) %>% dplyr::ungroup()

  ## ARI plots
  ## Median ARI vs k
  plots[["median_ari_vs_k"]] <-
    ggplot2::ggplot(res_summary %>%
                      dplyr::group_by(dataset, filtering, method, k) %>%
                      dplyr::summarize(
                        medianARI = stats::median(ARI, na.rm = TRUE),
                        truenclust = unique(truenclust)) %>%
                      dplyr::ungroup(),
                    ggplot2::aes(x = k, y = medianARI, group = method,
                                 color = method)) +
    shared_theme +
    ggplot2::geom_vline(aes(xintercept = truenclust), linetype = "dashed") +
    ggplot2::geom_line(size = 1) +
    ggplot2::facet_grid(filtering ~ dataset, scales = "free_x") +
    ggplot2::labs(title = "", x = "Number of clusters",
                  y = "Median Adjusted Rand Index") +
    ggplot2::theme(legend.position = "right")

  ## Scatter plots -- time versus ARI
  plots[["scatter_time_vs_ari_truek"]] <-
    ggplot2::ggplot(res_summary %>% dplyr::filter(k == truenclust),
                    ggplot2::aes(x = ARI, y = elapsed, color = method,
                                 shape = filtering)) +
    shared_theme +
    ggplot2::geom_point(size = 6, alpha = 0.8) +
    ggplot2::scale_y_log10() +
    ggplot2::facet_wrap(~ dataset, scales = "free") +
    ggplot2::labs(y = "Elapsed time (s)", x = "Adjusted Rand Index") +
    ggplot2::guides(color = ggplot2::guide_legend(""),
                    shape = ggplot2::guide_legend(""))

  ## Heatmap of median ARI at true k
  plots[["median_ari_heatmap_truek"]] <-
    ggplot2::ggplot(res_summary %>%
                      dplyr::filter(k == truenclust) %>%
                      dplyr::group_by(dataset, filtering, method, k) %>%
                      dplyr::summarize(
                        medianARI = stats::median(ARI, na.rm = TRUE)),
                    ggplot2::aes(x = stats::reorder(method, medianARI,
                                                    FUN = mean, na.rm = TRUE),
                                 y = stats::reorder(dataset, medianARI,
                                                    FUN = mean, na.rm = TRUE),
                                 fill = medianARI)) +
    shared_theme_heatmap +
    ggplot2::ggtitle("Median ARI, true number of clusters")

  ## Heatmap of median ARI at k giving best performance
  plots[["median_ari_heatmap_bestk"]] <-
    ggplot2::ggplot(res_summary %>%
                      dplyr::group_by(dataset, filtering, method, k) %>%
                      dplyr::summarize(
                        medianARI = stats::median(ARI, na.rm = TRUE)) %>%
                      dplyr::group_by(dataset, filtering, method) %>%
                      dplyr::filter(medianARI == max(medianARI, na.rm = TRUE)),
                    ggplot2::aes(x = stats::reorder(method, medianARI,
                                                    FUN = mean, na.rm = TRUE),
                                 y = stats::reorder(dataset, medianARI,
                                                    FUN = mean, na.rm = TRUE),
                                 fill = medianARI)) +
    shared_theme_heatmap +
    ggplot2::ggtitle("Median ARI, number of clusters giving highest ARI")

  ## Heatmap of ARI at estimated number of clusters
  plots[["median_ari_heatmap_estk"]] <-
    ggplot2::ggplot(res_summary %>%
                      dplyr::filter(k == estnclust) %>%
                      dplyr::group_by(dataset, filtering, method, k) %>%
                      dplyr::summarize(medianARI = stats::median(ARI)),
                    ggplot2::aes(x = stats::reorder(method, medianARI,
                                                    FUN = mean, na.rm = TRUE),
                                 y = stats::reorder(dataset, medianARI,
                                                    FUN = mean, na.rm = TRUE),
                                 fill = medianARI)) +
    shared_theme_heatmap +
    ggplot2::ggtitle("Median ARI, estimated number of clusters")

  plots
}
