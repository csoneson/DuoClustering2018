#' Apply PCA + Hierarchical clustering
#'
#' @importFrom SingleCellExperiment logcounts
#' @importFrom stats prcomp hclust cutree
#'
apply_PCAHC <- function(sce, params, k) {
  tryCatch({
    dat <- SingleCellExperiment::logcounts(sce)
    st <- system.time({
      pca <- stats::prcomp(t(dat), center = TRUE, scale. = FALSE)
      pca <- pca$x[, seq_len(params$nPC), drop = FALSE]
      hcl <- stats::hclust(dist(pca), method = "ward.D2")
      cluster <- stats::cutree(hcl, k = k)
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
