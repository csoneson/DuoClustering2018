\name{sce_full_Kumar}
\docType{data}
\alias{sce_filteredExpr10_Kumar}
\alias{sce_filteredHVG10_Kumar}
\alias{sce_filteredM3Drop10_Kumar}
\alias{sce_full_KumarTCC}
\alias{sce_filteredExpr10_KumarTCC}
\alias{sce_filteredHVG10_KumarTCC}
\alias{sce_filteredM3Drop10_KumarTCC}

\title{
'Kumar' data set
}
\description{
Gene counts for scRNA-seq data set from Kumar et al. (2014), consisting of mESCs with various genetic perturbations which are cultured in different media.
}
\details{
This is a scRNA-seq data set originally from Kumar et al. (2014). The data set consist of gene counts of mESCs from \emph{Mus musculus} with various genetic perturbations which are cultured in different media. It contains 3 subpopulations, defined by the cell phenotype given by the author's annotations.

All genes except those with zero counts across all cells are retained. The gene counts are gene-level length-scaled TPM values. For the TCC data set we estimated transcripts compatibility counts using \code{\link{kallisto}} as an alternative to the gene-level count matrix (Bray et. al (2016)).

The \code{\link{scater}} package was used to perform quality control of the data sets (Lun et. al (2016)).
Features with zero counts across all cells, as well as all cells with total count or total number of detected features more than 3 median absolute deviations (MADs) below the median across all cells (on the log scale), were excluded. Additionally, cells that were classified as doublets or debris were filtered out.

The \code{\link{sce_full_Kumar}} data set consists of 246 cells and 45,159 features, the \code{\link{sce_full_KumarTCC}} data set of 246 cells and 803,405 features, respectively.
The \code{\link{filteredExpr}}, \code{\link{filteredHVG}} and \code{\link{filteredM3Drop10}} are further reduced data sets.
For each of the filtering method, we retained 10 percent of the original number of genes
(with a non-zero count in at least one cell) in the original data sets.

For the \code{\link{filteredExpr}} data sets, only the genes with the highest average expression (log-normalized count) value across all cells were retained.
Using the \code{\link{Seurat}} package, the \code{\link{filteredHVG}} data sets were filtered on the variability of the features and only the most highly variable ones were retained (Satija et al. (2015)). Finally, the \code{\link{M3Drop}} package was used to model the dropout rate of the genes as a function of the mean expression level using the Michaelis-Menten equation for the \code{\link{filteredM3Drop10}} data sets (Andrews et. al (2018)).

The \code{\link{scater}} package was used to normalize the count values, based on normalization factors calculated by the deconvolution method from the \code{\link{scran}} package.

This data set is provided as a S4 class for Single Cell Data. For further information on the \code{\linkS4class{SingleCellExperiment}} class, see the respective manual. Raw data files for the original data set (GEO GSE60749) are available from https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE60749.}

\usage{
\code{\link{sce_full_Kumar()}}
\code{\link{sce_filteredExpr10_Kumar()}}
\code{\link{sce_filteredHVG10_Kumar()}}
\code{\link{sce_filteredM3Drop10_Kumar()}}
\code{\link{sce_full_KumarTCC()}}
\code{\link{sce_filteredExpr10_KumarTCC()}}
\code{\link{sce_filteredHVG10_KumarTCC()}}
\code{\link{sce_filteredM3Drop10_KumarTCC()}}
}
\examples{
sce_filteredExpr10_Kumar()
}
\value{Returns a \code{\link{SingleCellExperiment}} class.}
\references{
Andrews, T.S., Hemberg, M. (2018). \emph{Dropout-based feature selection for scRNASeq}. bioRxiv.

Bray, N.L., Pimentel, H., Melsted, P., et al. (2016). \emph{Near-optimal probabilistic RNA-seq quantification}. Nat Biotechnol., 34: 525–527.

Duò, A., Robinson, M.D., and Soneson, C. (2018).
\emph{A systematic performance evaluation of clustering methods for single-cell RNA-seq data.}
F1000Research, 7:1141.

Kumar R.M., Cahan P., Shalek A.K., et al. (2014) Deconstructing transcriptional heterogeneity in pluripotent stem cells. Nature. ; 516(7529): 56–61.

Lun, A.T., Bach, K. and Marioni, J.C. (2016) \emph{Pooling across cells to normalize single-cell RNA sequencing data with many zero counts.} Genome Biol., 17(1): 75.

Aaron Lun and Davide Risso (2017). \emph{SingleCellExperiment: S4 Classes for Single Cell Data}. R package version 1.0.0.

Satija, R., Farrell, J.A., Gennert, D., et al. (2015). \emph{Spatial reconstruction of single-cell gene expression data.} Nat Biotechnol., 33(5): 495–502.

}
\keyword{datasets}
