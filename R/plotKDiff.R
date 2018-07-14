#' Plot differences between optimal, estimated and true number of clusters
#'
#' @param res A data.frame with clustering results.
#' @param methodColors A named vector with colors to use for the different
#'   clustering methods. Can be NULL, in which case colors are chosen
#'   automatically.
#'
#' @export
#'
#' @author Angelo Duo, Charlotte Soneson
#'
#' @importFrom magrittr %>%
#' @importFrom dplyr group_by summarize select ungroup filter mutate
#' @importFrom tidyr separate
#' @importFrom mclust adjustedRandIndex
#' @importFrom ggplot2 scale_colour_manual theme element_text facet_wrap
#'   geom_boxplot geom_dotplot aes labs ggplot geom_hline
#'
#' @return A named list of ggplot2 objects
#'
#' @examples
#'
plotKDiff <- function(res, methodColors = NULL) {
  ## Initialize list to hold plots
  plots <- list()

  if (is.null(methodColors)) {
    manualScale <- ggplot2::scale_colour_discrete(name = "")
  } else {
    manualScale <- ggplot2::scale_colour_manual(name = "", values = methodColors)
  }

  sharedTheme <- list(
    ggplot2::theme_bw(),
    manualScale,
    ggplot2::theme(legend.text = ggplot2::element_text(size = 13),
                   legend.title = ggplot2::element_text(size = 16),
                   axis.title = ggplot2::element_text(size = 16),
                   axis.text.y = ggplot2::element_text(size = 13),
                   axis.text.x = ggplot2::element_text(size = 13),
                   strip.text = ggplot2::element_text(size = 13),
                   legend.position = "none"),
    ggplot2::facet_wrap(~ filtering, scales = "free"),
    ggplot2::geom_hline(yintercept = 0, linetype = "dashed"),
    ggplot2::geom_boxplot(outlier.color = NA, alpha = 0.5),
    ggplot2::geom_dotplot(binaxis = "y", stackdir = "center", dotsize = 0.2, stackratio = 1)
  )

  ## Compute ARI, true number of clusters, estimated number of clusters,
  ## elapsed time
  res_summary <- res %>%
    dplyr::group_by(dataset, method, run, k) %>%
    dplyr::summarize(ARI = mclust::adjustedRandIndex(cluster, trueclass),
                     truenclust = length(unique(trueclass)),
                     estnclust = unique(est_k),
                     elapsed = median(elapsed)) %>%
    tidyr::separate(dataset, sep = "_", into = c("sce", "filtering", "dataset")) %>%
    dplyr::select(-sce) %>% dplyr::ungroup()

  ## Calculate the difference between the k that gives the maximal ARI and the true k
  diff_abs <- res_summary %>%
    dplyr::group_by(dataset, filtering, method, truenclust, k) %>%
    dplyr::summarize(medARI = median(ARI, na.rm = TRUE)) %>%
    dplyr::filter(medARI == max(medARI, na.rm = TRUE)) %>%
    dplyr::mutate(k_diff = (k - truenclust))

  plots[["diff_kmax_ktrue"]] <-
    ggplot2::ggplot(diff_abs,
                    ggplot2::aes(x = method, y = k_diff, group = method, color = method)) +
    sharedTheme +
    ggplot2::labs(y = "Difference between number of clusters giving \nmaximal ARI and true number of clusters",
                  x = "", title = "") +
    ggplot2::theme(axis.text.x = ggplot2::element_text(size = 13, angle = 90, hjust = 1, vjust = 0.5))

  ## Calculate the difference between the estimated and true number of clusters
  diff_estnclust <- res_summary %>%
    dplyr::filter(k == truenclust) %>%
    dplyr::group_by(method, dataset, filtering, estnclust, truenclust) %>%
    dplyr::summarize(k_diff = unique(estnclust) - unique(truenclust)) %>%
    dplyr::ungroup()
  diff_estnclust$method <- factor(diff_estnclust$method)

  plots[["diff_kest_ktrue"]] <-
    ggplot2::ggplot(na.omit(diff_estnclust),
                    ggplot2::aes(x = method, y = k_diff, color = method)) +
    sharedTheme +
    ggplot2::labs(y = "Difference between estimated and true number of clusters", x = "", title = "") +
    ggplot2::theme(axis.text.x = ggplot2::element_text(size = 13, angle = 90, hjust = 1, vjust = 0.5))

}
