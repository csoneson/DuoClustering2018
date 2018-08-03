#' Apply PCA + K-means.
#'
#' @importFrom SingleCellExperiment logcounts
#' @importFrom stats prcomp kmeans
#'
#' @param sce A \code{SingleCellExperiment} object
#' @param params A list of parameter settings
#' @param k An integer giving the number of clusters to generate
#'
#' @return A list with timing information, cluster assignments and the estimated
#'   number of clusters.
#'
apply_PCAKmeans <- function(sce, params, k) {
  tryCatch({
    dat <- SingleCellExperiment::logcounts(sce)
    st <- system.time({
      pca <- stats::prcomp(t(dat), center = TRUE, scale. = FALSE)
      pca <- pca$x[, seq_len(params$nPC), drop = FALSE]
      cluster <- stats::kmeans(pca, centers = k, nstart = 25)$cluster
      names(cluster) = colnames(dat)
    })

    st <- c(user.self = st[["user.self"]], sys.self = st[["sys.self"]],
            user.child = st[["user.child"]], sys.child = st[["sys.child"]],
            elapsed = st[["elapsed"]])
    list(st = st, cluster = cluster, est_k = NA)
  }, error = function(e) {
    list(st = c(user.self = NA, sys.self = NA, user.child = NA, sys.child = NA,
                elapsed = NA),
         cluster = structure(rep(NA, ncol(sce)), names = colnames(sce)),
         est_k = NA)
  })
}
