\name{sce_full_Trapnell}
\docType{data}
\alias{sce_filteredExpr10_Trapnell}
\alias{sce_filteredHVG10_Trapnell}
\alias{sce_filteredM3Drop10_Trapnell}
\alias{sce_full_TrapnellTCC}
\alias{sce_filteredExpr10_TrapnellTCC}
\alias{sce_filteredHVG10_TrapnellTCC}
\alias{sce_filteredM3Drop10_TrapnellTCC}

\title{
Trapnell data sets
}
\description{
Gene or TCC counts for scRNA-seq data set from Trapnell et al. (2014), consisting of primary myoblasts over a time course of serum-induced differentiation.
}
\details{
This is a scRNA-seq data set originally from Trapnell et al. (2014). The data set consist of human primary myoblasts over a time course of serum-induced differentiation. It contains 3 subpopulations, defined by the cell phenotype given by the author's annotations. The data sets have been used to evaluate the performance of clustering algorithms in Duò et al. (2018).

For the \code{sce_full_Trapnell} data set, all genes except those with zero counts across all cells are retained. The gene counts are
gene-level length-scaled TPM values derived from Salmon quantifications (see Soneson and Robinson (2018)). For the TCC data set we estimated transcripts compatibility counts using \code{kallisto} as an alternative to the gene-level count matrix (Bray et al. (2016)).

The \code{scater} package was used to perform quality control of the data sets (McCarthy et al. (2017)).
Features with zero counts across all cells, as well as all cells with total count or total number of detected features more than 3 median absolute deviations (MADs) below the median across all cells (on the log scale), were excluded. Additionally, cells that were classified as doublets or debris were filtered out.

The \code{sce_full_Trapnell} data set consists of 222 cells and 41,111 features, the \code{sce_full_TrapnellTCC} data set of 227 cells and 684,953 features, respectively.
The \code{filteredExpr}, \code{filteredHVG} and \code{filteredM3Drop10} are further reduced data sets.
For each of the filtering method, we retained 10 percent of the original number of genes
(with a non-zero count in at least one cell) in the original data sets.

For the \code{filteredExpr} data sets, only the genes/TCCs with the highest average expression (log-normalized count) value across all cells were retained.
Using the \code{Seurat} package, the \code{filteredHVG} data sets were filtered on the variability of the features and only the most highly variable ones were retained (Satija et al. (2015)).  Finally, the \code{M3Drop} package was used to model the dropout rate of the genes as a function of the mean expression level using the Michaelis-Menten equation and select variables to retain for the \code{filteredM3Drop10} data sets (Andrews and Hemberg (2018)).

The \code{scater} package was used to normalize the count values, based on normalization factors calculated by the deconvolution method from the \code{scran} package (Lun et al. (2016)).

This data set is provided as a \code{\link{SingleCellExperiment}} object (Lun and Risso (2017)). For further information on the \code{\linkS4class{SingleCellExperiment}} class, see the respective manual. Raw data files for the original data set (GEO GSE52529) are available from https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE52529.}

\usage{
sce_full_Trapnell()
sce_filteredExpr10_Trapnell()
sce_filteredHVG10_Trapnell()
sce_filteredM3Drop10_Trapnell()
sce_full_TrapnellTCC()
sce_filteredExpr10_TrapnellTCC()
sce_filteredHVG10_TrapnellTCC()
sce_filteredM3Drop10_TrapnellTCC()
}
\examples{
sce_full_Trapnell()
}
\value{Returns a \code{\link{SingleCellExperiment}} class.}
\references{
Andrews, T.S., and Hemberg, M. (2018). \emph{Dropout-based feature selection for scRNASeq}. bioRxiv doi:https://doi.org/10.1101/065094.

Bray, N.L., Pimentel, H., Melsted, P., and Pachter, L. (2016). \emph{Near-optimal probabilistic RNA-seq quantification}. Nat Biotechnol., 34: 525–527.

Duò, A., Robinson, M.D., and Soneson, C. (2018).
\emph{A systematic performance evaluation of clustering methods for single-cell RNA-seq data.}
F1000Research, 7:1141.

Lun, A.T.L., Bach, K., and Marioni, J.C. (2016) \emph{Pooling across cells to normalize single-cell RNA sequencing data with many zero counts.} Genome Biol., 17(1): 75.

Lun, A.T.L., and Risso, D. (2017). \emph{SingleCellExperiment: S4 Classes for Single Cell Data}. R package version 1.0.0.

Satija, R., Farrell, J.A., Gennert, D., et al. (2015). \emph{Spatial reconstruction of single-cell gene expression data.} Nat Biotechnol., 33(5): 495–502.

McCarthy, D.J., Campbell, K.R., Lun, A.T.L., and Wills, Q.F. (2017): \emph{Scater: pre-processing, quality control, normalization and visualization of single-cell RNA-seq data in R. } Bioinformatics 33(8): 1179-1186.

Trapnell, C., Cacchiarelli, D., Grimsby, J., et al. (2014). \emph{The dynamics and regulators of cell fate decisions are revealed by pseudotemporal ordering of single cells.} Nat Biotechnol., 32(4): 381–386.

Satija, R., Farrell, J.A., Gennert, D., Schier, A.F., and Regev, A. (2015). \emph{Spatial reconstruction of single-cell gene expression data.} Nat Biotechnol., 33(5): 495–502.

Soneson, C., and Robinson, M.D. (2018). \emph{Bias, robustness and scalability in single-cell differential expression analysis. } Nat Methods, 15(4): 255-261.
}
\keyword{datasets}
