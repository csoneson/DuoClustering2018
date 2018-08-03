#' importFrom utils read.csv
.onLoad <- function(libname, pkgname) {
  fl <- system.file("extdata", "metadata.csv", package = "DuoClustering2018")
  titles <- read.csv(fl, stringsAsFactors = FALSE)$Title
  ExperimentHub::createHubAccessors(pkgname, titles)
}
