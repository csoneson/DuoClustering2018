\name{sce_full_Kumar}
\docType{data}
\alias{sce_full_Kumar}
\alias{sce_filteredExpr10_Kumar}
\alias{sce_filteredHVG10_Kumar}
\alias{sce_filteredM3Drop10_Kumar}
\alias{sce_full_KumarTCC}
\alias{sce_filteredExpr10_KumarTCC}
\alias{sce_filteredHVG10_KumarTCC}
\alias{sce_filteredM3Drop10_KumarTCC}

\title{
Kumar data sets
}
\arguments{
\item{metadata}{Logical, whether only metadata should be returned}
}
\description{
Gene or TCC counts for scRNA-seq data set from Kumar et al. (2014), consisting of mESCs with various genetic perturbations which are cultured in different media.
}
\details{
This is a scRNA-seq data set originally from Kumar et al. (2014). The data set consist of gene counts of mESCs from \emph{Mus musculus} with various genetic perturbations which are cultured in different media. It contains 3 subpopulations, defined by the cell phenotype given by the author's annotations. The data sets have been used to evaluate the performance of clustering algorithms in Duò et al. (2018).

For the \code{sce_full_Kumar} data set, all genes except those with zero counts across all cells are retained. The gene counts are
gene-level length-scaled TPM values derived from Salmon quantifications (see Soneson and Robinson (2018)). For the TCC data set we estimated transcripts compatibility counts using \code{kallisto} as an alternative to the gene-level count matrix (Bray et al. (2016)).

The \code{scater} package was used to perform quality control of the data sets (McCarthy et al. (2017)).
Features with zero counts across all cells, as well as all cells with total count or total number of detected features more than 3 median absolute deviations (MADs) below the median across all cells (on the log scale), were excluded. Additionally, cells that were classified as doublets or debris were filtered out.

The \code{sce_full_Kumar} data set consists of 246 cells and 45,159 features, the \code{sce_full_KumarTCC} data set of 246 cells and 803,405 features, respectively.
The \code{filteredExpr}, \code{filteredHVG} and \code{filteredM3Drop10} are further reduced data sets.
For each of the filtering method, we retained 10 percent of the original number of genes
(with a non-zero count in at least one cell) in the original data sets.

For the \code{filteredExpr} data sets, only the genes/TCCs with the highest average expression (log-normalized count) value across all cells were retained.
Using the \code{Seurat} package, the \code{filteredHVG} data sets were filtered on the variability of the features and only the most highly variable ones were retained (Satija et al. (2015)).  Finally, the \code{M3Drop} package was used to model the dropout rate of the genes as a function of the mean expression level using the Michaelis-Menten equation and select variables to retain for the \code{filteredM3Drop10} data sets (Andrews and Hemberg (2018)).

The \code{scater} package was used to normalize the count values, based on normalization factors calculated by the deconvolution method from the \code{scran} package (Lun et al. (2016)).
This data set is provided as a \code{\link{SingleCellExperiment}} object (Lun and Risso (2017)). For further information on the \code{\linkS4class{SingleCellExperiment}} class, see the respective manual. Raw data files for the original data set (GEO GSE60749) are available from https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE60749.}

\usage{
sce_full_Kumar(metadata = FALSE)
sce_filteredExpr10_Kumar(metadata = FALSE)
sce_filteredHVG10_Kumar(metadata = FALSE)
sce_filteredM3Drop10_Kumar(metadata = FALSE)
sce_full_KumarTCC(metadata = FALSE)
sce_filteredExpr10_KumarTCC(metadata = FALSE)
sce_filteredHVG10_KumarTCC(metadata = FALSE)
sce_filteredM3Drop10_KumarTCC(metadata = FALSE)
}
\examples{
sce_filteredExpr10_Kumar()
}
\format{SingleCellExperiment}
\value{Returns a \code{\link{SingleCellExperiment}} object.}
\references{
Andrews, T.S., and Hemberg, M. (2018). \emph{Dropout-based feature selection for scRNASeq}. bioRxiv doi:https://doi.org/10.1101/065094.

Bray, N.L., Pimentel, H., Melsted, P., and Pachter, L. (2016). \emph{Near-optimal probabilistic RNA-seq quantification}. Nat Biotechnol., 34: 525–527.

Duò, A., Robinson, M.D., and Soneson, C. (2018).
\emph{A systematic performance evaluation of clustering methods for single-cell RNA-seq data.}
F1000Research, 7:1141.

Kumar R.M., Cahan P., Shalek A.K., et al. (2014) Deconstructing transcriptional heterogeneity in pluripotent stem cells. Nature. ; 516(7529): 56–61.

Lun, A.T.L., Bach, K., and Marioni, J.C. (2016) \emph{Pooling across cells to normalize single-cell RNA sequencing data with many zero counts.} Genome Biol., 17(1): 75.

Lun, A.T.L., and Risso, D. (2017). \emph{SingleCellExperiment: S4 Classes for Single Cell Data}. R package version 1.0.0.

McCarthy, D.J., Campbell, K.R., Lun, A.T.L., and Wills, Q.F. (2017): \emph{Scater: pre-processing, quality control, normalization and visualization of single-cell RNA-seq data in R. } Bioinformatics 33(8): 1179-1186.

Satija, R., Farrell, J.A., Gennert, D., Schier, A.F., and Regev, A. (2015). \emph{Spatial reconstruction of single-cell gene expression data.} Nat Biotechnol., 33(5): 495–502.

Soneson, C., and Robinson, M.D. (2018). \emph{Bias, robustness and scalability in single-cell differential expression analysis. } Nat Methods, 15(4): 255-261.
}
\keyword{datasets}
