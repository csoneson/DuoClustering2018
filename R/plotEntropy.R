shannonEntropy <- function(clusterAssignments) {
  p <- c(table(clusterAssignments)) / length(clusterAssignments)
  -1 * sum(p * log2(p))
}

#' Plot entropy of cluster assignments
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
#' @importFrom ggplot2 scale_colour_manual scale_colour_discrete theme_bw theme element_text aes ggplot geom_line facet_grid geom_vline geom_point labs geom_hline geom_point geom_boxplot
#'
#' @return A named list of ggplot2 objects
#'
#' @examples
#'
plotEntropy <- function(res, methodColors = NULL) {
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
                   strip.text = ggplot2::element_text(size = 13))
  )

  ## Compute entropy and ARI
  res_entropy <- res %>%
    dplyr::group_by(dataset, method, run, k) %>%
    dplyr::filter(!is.na(cluster)) %>%
    dplyr::summarize(s = shannonEntropy(cluster),
                     s.true = shannonEntropy(trueclass),
                     s.norm = s/log2(unique(k)),
                     s.true.norm = s.true/log2(unique(k)),
                     ARI = mclust::adjustedRandIndex(cluster, trueclass),
                     truenclust = length(unique(trueclass)),
                     estnclust = unique(est_k)
    ) %>%
    tidyr::separate(dataset, sep = "_", into = c("sce", "filtering", "dataset")) %>%
    dplyr::select(-sce) %>%
    dplyr::ungroup()

  # plot entropy per k
  plots[["entropy_byds_byk"]] <-
    ggplot2::ggplot(data = res_entropy %>%
                      dplyr::filter(!is.na(s)) %>%
                      dplyr::group_by(dataset, method, filtering, k, truenclust, s.true) %>%
                      dplyr::summarize(entropy = median(s, na.rm = TRUE)),
                    ggplot2::aes(x = k, y = entropy, group = method, color = method)) +
    sharedTheme +
    ggplot2::geom_line(size = 1) +
    ggplot2::facet_grid(filtering ~ dataset, scale = "free_x") +
    ggplot2::geom_vline(aes(xintercept = truenclust), linetype = "dashed") +
    ggplot2::geom_point(aes(x = truenclust, y = s.true), color = 1, shape = 4) +
    ggplot2::labs(x = "Number of clusters", y = "Entropy")  +
    ggplot2::theme(legend.position = "right")

  plots[["entropy_vs_ari_byds"]] <-
    ggplot2::ggplot(data = res_entropy %>%
                      dplyr::filter(k == truenclust),
                    ggplot2::aes(x = ARI, y = s, group = method, color = method)) +
    sharedTheme +
    ggplot2::geom_point() +
    ggplot2::facet_grid(filtering ~ dataset, scale = "free") +
    ggplot2::geom_hline(aes(yintercept = s.true), linetype = "dashed") +
    ggplot2::labs(x = "ARI", y = "Entropy")

  plots[["normentropy_by_ds"]] <-
    ggplot2::ggplot(data = res_entropy %>%
                      dplyr::filter(k == truenclust),
                    ggplot2::aes(x = method, y = s.norm, group = method, color = method)) +
    sharedTheme +
    ggplot2::geom_boxplot() +
    ggplot2::facet_grid(. ~ dataset, scale = "free") +
    ggplot2::geom_hline(aes(yintercept = s.true.norm), linetype = "dashed") +
    ggplot2::labs(x = "", y = "Normalized Entropy for true number of clusters") +
    ggplot2::theme(axis.text.x = ggplot2::element_text(angle = 90, size = 13, vjust = 0.5, hjust = 1),
                   legend.position = "none")

  # Difference to truth at truenclust
  plots[["deltaentropy_at_truth"]] <-
    ggplot2::ggplot(data = res_entropy %>%
                      dplyr::filter(k == truenclust) %>%
                      dplyr::mutate(ds = s - s.true),
                    ggplot2::aes(x = method, y = ds, group = method, color = method)) +
    sharedTheme +
    ggplot2::geom_boxplot() +
    ggplot2::geom_hline(aes(yintercept = 0), linetype = "dashed") +
    ggplot2::facet_grid(. ~ dataset, scale = "free") +
    ggplot2::theme(axis.text.x = ggplot2::element_text(angle = 90, size = 13, vjust = 0.5, hjust = 1),
                   legend.position = "none") +
    ggplot2::labs(x = "", y = "Difference between entropy for clustering and truth, \nfor true number of clusters")

  # Difference to truth at truenclust, normalized entropy
  plots[["deltanormentropy_at_truth"]] <-
    ggplot2::ggplot(data = res_entropy %>%
                      dplyr::filter(k == truenclust) %>%
                      dplyr::mutate(ds.norm = s.norm - s.true.norm),
                    ggplot2::aes(x = method, y = ds.norm, group = method, color = method)) +
    sharedTheme +
    ggplot2::geom_boxplot() +
    ggplot2::geom_hline(aes(yintercept = 0), linetype = "dashed") +
    ggplot2::theme(legend.position = "none",
                   axis.text.x = ggplot2::element_text(angle = 90, size = 13, vjust = 0.5, hjust = 1)) +
    ggplot2::labs(x = "", y = "Difference between normalised entropy \nfor clustering and truth, for true number of clusters")

}
