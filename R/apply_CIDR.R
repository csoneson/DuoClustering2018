#' Apply CIDR
#'
#' @importFrom cidr scDataConstructor determineDropoutCandidates wThreshold scDissim scPCA nPC scCluster
#' @importFrom SingleCellExperiment counts
#'
apply_CIDR <- function(sce, params, k) {
  tryCatch({
    dat <- SingleCellExperiment::counts(sce)
    st <- system.time({
      sData <- cidr::scDataConstructor(dat, tagType = "raw")
      sData <- cidr::determineDropoutCandidates(sData)
      sData <- cidr::wThreshold(sData)
      sData <- cidr::scDissim(sData, threads = 1)
      sData <- cidr::scPCA(sData, plotPC = FALSE)
      sData <- cidr::nPC(sData)

      ## Cluster with preset number of clusters
      sDataC <- cidr::scCluster(object = sData, nCluster = k,
                                nPC = sData@nPC, cMethod = "ward.D2")
      cluster <- sDataC@clusters
      names(cluster) <- colnames(sDataC@tags)
    })
    ## Determine number of clusters automatically
    sDataA <- cidr::scCluster(object = sData, n = max(params$range_clusters),
                              nPC = sData@nPC, cMethod = "ward.D2")
    est_k <- sDataA@nCluster

    st <- c(user.self = st[["user.self"]], sys.self = st[["sys.self"]],
            user.child = st[["user.child"]], sys.child = st[["sys.child"]],
            elapsed = st[["elapsed"]])
    list(st = st, cluster = cluster, est_k = est_k)
  }, error = function(e) {
    list(st = c(user.self = NA, sys.self = NA, user.child = NA, sys.child = NA,
                elapsed = NA),
         cluster = structure(rep(NA, ncol(sce)), names = colnames(sce)),
         est_k = NA)
  })
}
