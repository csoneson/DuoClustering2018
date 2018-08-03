#' Apply SC3svm
#'
#' @importFrom SC3 sc3_prepare sc3_estimate_k sc3 sc3_run_svm
#' @importFrom SingleCellExperiment counts
#' @importFrom SummarizedExperiment rowData
#'
#' @param sce A \code{SingleCellExperiment} object
#' @param params A list of parameter settings
#' @param k An integer giving the number of clusters to generate
#'
#' @return A list with timing information, cluster assignments and the estimated
#'   number of clusters.
#'
apply_SC3svm <- function(sce, params, k) {
  (seed <- round(1e6*runif(1)))
  tryCatch({
    SummarizedExperiment::rowData(sce)$feature_symbol <-
      rownames(SingleCellExperiment::counts(sce))
    st1 <- system.time({
      dat <- SC3::sc3_prepare(sce, gene_filter = params$gene_filter,
                              pct_dropout_min = params$pct_dropout_min,
                              pct_dropout_max = params$pct_dropout_max,
                              n_cores = 1, rand_seed = seed, svm_max = 1,
                              svm_num_cells = round(ncol(sce)/2))
    })
    est_k <- metadata(SC3::sc3_estimate_k(dat))$sc3$k_estimation
    st2 <- system.time({
      dat <- SC3::sc3(dat, ks = k, pct_dropout_min = params$pct_dropout_min,
                      pct_dropout_max = params$pct_dropout_max,
                      gene_filter = params$gene_filter, rand_seed = seed, n_cores = 1,
                      biology = FALSE, k_estimator = FALSE, svm_max = 1,
                      svm_num_cells = round(ncol(sce)/2))
      dat <- SC3::sc3_run_svm(dat, ks = k)
      cluster <- as.numeric(colData(dat)[, paste0("sc3_", k, "_clusters")])
      names(cluster) <- rownames(colData(dat))
    })

    st <- st1 + st2
    st <- c(user.self = st[["user.self"]], sys.self = st[["sys.self"]],
            user.child = st[["user.child"]], sys.child = st[["sys.child"]],
            elapsed = st[["elapsed"]])
    list(st = st, cluster = cluster, est_k = est_k)
  },
  error = function(e) {
    list(st = c(user.self = NA, sys.self = NA, user.child = NA, sys.child = NA,
                elapsed = NA),
         cluster = structure(rep(NA, ncol(sce)), names = colnames(sce)),
         est_k = NA)
  })
}
