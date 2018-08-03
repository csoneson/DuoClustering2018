#' Apply t-SNE + K-means.
#'
#' @importFrom Rtsne Rtsne
#' @importFrom SingleCellExperiment logcounts
#' @importFrom stats kmeans
#'
#' @param sce A \code{SingleCellExperiment} object
#' @param params A list of parameter settings
#' @param k An integer giving the number of clusters to generate
#'
#' @return A list with timing information, cluster assignments and the estimated
#'   number of clusters.
#'
apply_RtsneKmeans <- function(sce, params, k) {
  tryCatch({
    dat <- SingleCellExperiment::logcounts(sce)
    st <- system.time({
      rtsne <- Rtsne::Rtsne(X = t(dat), dims = params$dims,
                            perplexity = params$perplexity, pca = TRUE,
                            initial_dims = params$initial_dims, check_duplicates = FALSE)
      cluster <- stats::kmeans(rtsne$Y, centers = k, nstart = 25)$cluster
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
