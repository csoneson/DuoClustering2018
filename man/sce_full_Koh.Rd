\name{sce_full_Koh}
\docType{data}
\alias{sce_filteredExpr10_Koh}
\alias{sce_filteredHVG10_Koh}
\alias{sce_filteredM3Drop10_Koh}
\alias{sce_full_KohTCC}
\alias{sce_filteredExpr10_KohTCC}
\alias{sce_filteredHVG10_KohTCC}
\alias{sce_filteredM3Drop10_KohTCC}

\title{
'Koh' data sets
}
\description{
Gene counts for a scRNA-seq data set from Koh et al. 2016, consisting of in vitro cultured 
H7 embryonic stem cells (WiCell) and H7-derived downstream early mesoderm progenitors.
}
\details{
This is a scRNA-seq data set originally from Koh et al. (2016). The data set consist of 
gene counts of in vitro cultured human H7 embryonic stem cells (WiCell) and H7-derived downstream 
early mesoderm progenitors. It contains 9 subpopulations, defined by the 
cell phenotype given by the author's annotations. The data sets have been used to evaluate the performance of clustering algorithms in Duò et al. (2018).

All genes except those with zero counts across all cells are retained. The gene counts are
gene-level length-scaled TPM values. For the TCC data set we estimated transcripts compatibility counts using \code{\link{kallisto}} as an alternative to the gene-level count matrix (Bray et. al (2016)).

The \code{\link{scater}} package was used to perform quality control of the data sets (Lun et. al (2016)). 
Features with zero counts across all cells, as well as all cells with total count or total number 
of detected features more than 3 median absolute deviations (MADs) below the median across all cells (on the log scale), were excluded. Additionally, cells that were classified as doublets or debris were filtered out. 

The \code{\link{sce_full_Koh}} data set consists of 531 cells and 48,981 features, the \code{\link{sce_full_KohTCC}} data set of 531 cells and 811,938 features, respectively. 
The \code{\link{filteredExpr}}, \code{\link{filteredHVG}} and \code{\link{filteredM3Drop10}} are further reduced data sets. 
For each of the filtering method, we retained 10 percent of the original number of genes 
(with a non-zero count in at least one cell) in the original data sets. 

For the \code{\link{filteredExpr}} data sets, only the genes with the highest average expression (log-normalized count) value across all cells were retained.
Using the \code{\link{Seurat}} package, the \code{\link{filteredHVG}} data sets were filtered on the variability of the features and only the most highly variable ones were retained (Satija et al. (2015)). Finally, the \code{\link{M3Drop}} package was used to model the dropout rate of the genes as a function of the mean expression level using the Michaelis-Menten equation for the \code{\link{filteredM3Drop10}} data sets (Andrews et. al (2018)). 

The \code{\link{scater} package was used to normalize the count values, based on normalization factors calculated by the deconvolution method from the \code{\link{scran}} package.

This data set is provided as a S4 class for Single Cell Data. For further information on the \code{\linkS4class{SingleCellExperiment}} class, see the respective manual. Raw data files for the original data set (SRA SRP073808) are available from https://www.ncbi.nlm.nih.gov/sra?term=SRP073808 .}

}
\usage{
\code{\link{sce_full_Koh()}}
\code{\link{sce_filteredExpr10_Koh()}}
\code{\link{sce_filteredHVG10_Koh()}}
\code{\link{sce_filteredM3Drop10_Koh()}}
\code{\link{sce_full_KohTCC()}}
\code{\link{sce_filteredExpr10_KohTCC()}}
\code{\link{sce_filteredHVG10_KohTCC()}}
\code{\link{sce_filteredM3Drop10_KohTCC()}}
}
\examples{
sce_filteredHVG10_Koh()
}
\value{Returns a \code{\link{SingleCellExperiment}} class.}
\references{
Andrews, T.S., Hemberg, M. (2018). \emph{Dropout-based feature selection for scRNASeq}. bioRxiv.

Bray, N.L., Pimentel, H., Melsted, P., et al. (2016). \emph{Near-optimal probabilistic RNA-seq quantification}. Nat Biotechnol., 34: 525–527. 

Duò, A., Robinson, M.D., and Soneson, C. (2018). 
\emph{A systematic performance evaluation of clustering methods for single-cell RNA-seq data.} 
F1000Research, 7:1141.

Koh, P.W., Sinha, R., Barkal, A.A.,Morganti  R.M., Chen, A., Weissman, I.L., Ang, L.T., Kundaje, A., and Loh, K.M. (2016). 
\emph{An atlas of transcriptional, chromatin accessibility, and surface marker changes in human mesoderm development.} 
Scientific Data, 3:160109.

Lun, A.T., Bach, K. and Marioni, J.C. (2016) \emph{Pooling across cells to normalize single-cell RNA sequencing data with many zero counts.} Genome Biol., 17(1): 75.

Aaron Lun and Davide Risso (2017). \emph{SingleCellExperiment: S4 Classes for Single Cell Data}. R package version 1.0.0.

Satija, R., Farrell, J.A., Gennert, D., et al. (2015). \emph{Spatial reconstruction of single-cell gene expression data.} Nat Biotechnol., 33(5): 495–502.
}
\keyword{datasets}