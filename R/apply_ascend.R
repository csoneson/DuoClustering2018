#' Apply ascend
#'
#' @importFrom ascend NewEMSet NormaliseByRLE RunPCA ReduceDimensions RunCORE
#' @importFrom BiocParallel MulticoreParam
#' @importFrom class knn
#' @importFrom SingleCellExperiment counts
#'
#' @param sce A \code{SingleCellExperiment} object
#' @param params A list of parameter settings
#' @param k An integer giving the number of clusters to generate
#'
#' @return A list with timing information, cluster assignments and the estimated
#'   number of clusters.
#'
apply_ascend <- function(sce, params, k) {
  BiocParallel::register(BiocParallel::MulticoreParam(workers = 1,
                                                      progressbar = TRUE),
                         default = TRUE)
  tryCatch({
    dat <- SingleCellExperiment::counts(sce)
    st <- system.time({
      emset <- ascend::NewEMSet(ExpressionMatrix = dat)
      normset <- ascend::NormaliseByRLE(emset)
      pcaset <- ascend::RunPCA(normset)
      pcaset <- ascend::ReduceDimensions(pcaset, n = params$nPC)
      ## Try to cluster all cells. If it fails (if there are outliers), cluster
      ## the ones that can be clustered and assign the remaining ones to a
      ## cluster with kNN on the extracted PCs.
      resset <- ascend::RunCORE(pcaset, conservative = TRUE, nres = 40,
                                remove_outlier = TRUE)
      ## Select the height to use
      ks <- resset@Clusters$KeyStats
      ks <- subset(ks, ClusterCount == k)
      height <- ks$Height[which.max(ks$RandIndex)]
      cluster <- resset@Clusters$ClusteringMatrix[, height]
      names(cluster) <- rownames(resset@Clusters$ClusteringMatrix)
      ## Classify the left-out cells
      train <- names(cluster)
      test <- setdiff(rownames(pcaset@PCA$PCA), names(cluster))
      cls <- as.numeric(as.character(class::knn(train = pcaset@PCA$PCA[train, , drop = FALSE],
                                                test = pcaset@PCA$PCA[test, , drop = FALSE],
                                                cl = cluster,
                                                k = 5)))
      names(cls) <- test
      cluster <- c(cluster, cls)
      cluster <- cluster[match(colnames(dat), names(cluster))]
      est_k = resset@Clusters$NumberOfClusters
    })

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
