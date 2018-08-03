#' Apply FlowSOM
#'
#' @importFrom FlowSOM ReadInput BuildSOM metaClustering_consensus
#' @importFrom flowCore flowFrame
#' @importFrom stats prcomp
#' @importFrom SingleCellExperiment logcounts
#'
#' @param sce A \code{SingleCellExperiment} object
#' @param params A list of parameter settings
#' @param k An integer giving the number of clusters to generate
#'
#' @return A list with timing information, cluster assignments and the estimated
#'   number of clusters.
#'
apply_FlowSOM <- function(sce, params, k) {
  tryCatch({
    dat <- SingleCellExperiment::logcounts(sce)
    st <- system.time({
      pca <- stats::prcomp(t(dat), center = TRUE, scale. = FALSE)
      pca <- pca$x[, seq_len(params$nPC), drop = FALSE]
      ff <- flowCore::flowFrame(exprs = pca)
      fSOM <- FlowSOM::ReadInput(ff, compensate = FALSE, transform = FALSE,
                                 scale = FALSE, silent = TRUE)
      fSOM <- FlowSOM::BuildSOM(fSOM, silent = TRUE, xdim = params$xdim,
                                ydim = params$ydim)
      metaClustering <- FlowSOM::metaClustering_consensus(fSOM$map$codes, k = k)
      cluster <- metaClustering[fSOM$map$mapping[, 1]]
      names(cluster) <- colnames(dat)
    })

    st <- c(user.self = st[["user.self"]], sys.self = st[["sys.self"]],
            user.child = st[["user.child"]], sys.child = st[["sys.child"]],
            elapsed = st[["elapsed"]])
    list(st = st, cluster = cluster, est_k = NA)
  },
  error = function(e) {
    list(st = c(user.self = NA, sys.self = NA, user.child = NA, sys.child = NA,
                elapsed = NA),
         cluster = structure(rep(NA, ncol(sce)), names = colnames(sce)),
         est_k = NA)
  })
}
