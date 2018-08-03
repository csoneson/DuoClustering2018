#' Apply pcaReduce.
#'
#' @importFrom pcaReduce PCAreduce
#' @importFrom clue as.cl_partition cl_consensus cl_class_ids as.cl_ensemble
#' @importFrom SingleCellExperiment logcounts
#'
#' @param sce A \code{SingleCellExperiment} object
#' @param params A list of parameter settings
#' @param k An integer giving the number of clusters to generate
#'
#' @return A list with timing information, cluster assignments and the estimated
#'   number of clusters.
#'
apply_pcaReduce <- function(sce, params, k) {
  tryCatch({
    dat <- SingleCellExperimentlogcounts(sce)
    st <- system.time({
      pca <- pcaReduce::PCAreduce(t(dat), nbt = params$nbt, q = params$q, method = "S")
      part <- lapply(pca, function(x) {
        colnames(x) <- paste0("k", (params$q + 1):2)
        clue::as.cl_partition(x[, paste0("k", k)])
      })
      cons <- clue::cl_consensus(clue::as.cl_ensemble(part), method = "SE",
                                 control = list(nruns = 50))
      cluster <- c(clue::cl_class_ids(cons))
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
