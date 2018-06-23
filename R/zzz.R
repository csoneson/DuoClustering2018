.onLoad <- function(libname, pkgname) {
  fl <- system.file("extdata", "metadata.csv", package = "DuoClustering2018")
  titles <- read.csv(fl, stringsAsFactors = FALSE)$Title
  createHubAccessors(pkgname, titles)
}
