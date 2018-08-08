\name{sce_full_Zhengmix4eq}
\docType{data}
\alias{sce_full_Zhengmix4eq}
\alias{sce_filteredExpr10_Zhengmix4eq}
\alias{sce_filteredHVG10_Zhengmix4eq}
\alias{sce_filteredM3Drop10_Zhengmix4eq}
\alias{sce_full_Zhengmix4uneq}
\alias{sce_filteredExpr10_Zhengmix4uneq}
\alias{sce_filteredHVG10_Zhengmix4uneq}
\alias{sce_filteredM3Drop10_Zhengmix4uneq}
\alias{sce_full_Zhengmix8eq}
\alias{sce_filteredExpr10_Zhengmix8eq}
\alias{sce_filteredHVG10_Zhengmix8eq}
\alias{sce_filteredM3Drop10_Zhengmix8eq}
\title{
Zheng data sets
}
\arguments{
\item{metadata}{Logical, whether only metadata should be returned}
}
\description{
Gene counts for scRNA-seq data sets from Zheng et al. (2017), consisting of pre-sorted cell types combined into three artificial data sets with different cell proportions.
}
\details{
This is a scRNA-seq data set originally from Zheng et al. (2017). The data set consist of eigth pre-sorted cell types (B-cells, naive cytotoxic T-cells, CD14 monocytes, regulatory T-cells, CD56 NK cells, memory T-cells, CD4 T-helper cells and naive T-cells) from \emph{Homo sapiens} combined into three artificial data sets with different cell proportions. The annotated cell type (obtained by pre-sorting of the cells) is used as the true cell label. The data sets have been used to evaluate the performance of clustering algorithms in Duò et al. (2018).

For the \code{Zhengmix4eq} data set, randomly selected B-cells, CD14 monocytes, naive cytotoxic T-cells and regulatory T-cells were combined in equal proportions (1,000 cells per subpopulation).
The \code{Zhengmix4uneq} data set consists of four cell types, combined in unequal proportions (1,000 B-cells, 500 naive cytotoxic T-cells, 2,000 CD14 monocytes and 3,000 regulatory T-cells). For the \code{Zhengmix8eq} data set, all eight populations were combined in approximately equal proportions (400–600 cells per population).

For the \code{sce_full_Zhengmix4eq}, \code{sce_full_Zhengmix4uneq} and \code{sce_full_Zhengmix8eq} data set, all genes except those with zero counts across all cells are retained. The gene counts are unique molecular identifiers (UMIs) counts.
The \code{scater} package was used to perform quality control of the data (McCarthy et al. (2017)).
Features with zero counts across all cells, as well as all cells with total count or total number of detected features more than 3 median absolute deviations (MADs) below the median across all cells (on the log scale), were excluded.

The \code{sce_full_Zhengmix4eq} data set consists of 3,994 cells and 15,568 features, the \code{sce_full_Zhengmix4uneq} data set of 6,498 cells and 16,443 features and the \code{sce_full_Zhengmix8eq} of 3,994 cells and 16,443 features, respectively.
The \code{filteredExpr}, \code{filteredHVG} and \code{filteredM3Drop10} are further reduced data sets.
For each of the filtering method, we retained 10 percent of the original number of genes
(with a non-zero count in at least one cell) in the original data sets.

For the \code{filteredExpr} data sets, only the genes with the highest average expression (log-normalized count) value across all cells were retained.
Using the \code{Seurat} package, the \code{filteredHVG} data sets were filtered on the variability of the features and only the most highly variable ones were retained (Satija et al. (2015)).  Finally, the \code{M3Drop} package was used to model the dropout rate of the genes as a function of the mean expression level using the Michaelis-Menten equation and select variables to retain for the \code{filteredM3Drop10} data sets (Andrews and Hemberg (2018)).

The \code{scater} package was used to normalize the count values, based on normalization factors calculated by the deconvolution method from the \code{scran} package (Lun et al. (2016)).
This data set is provided as a \code{\linkS4class{SingleCellExperiment}} object (Lun and Risso (2017)). For further information on the \code{\linkS4class{SingleCellExperiment}} class, see the respective manual. Raw data files or the original data sets are available from https://support.10xgenomics.com/single-cell-gene-expression/datasets.}

\usage{
sce_full_Zhengmix4eq(metadata = FALSE)
sce_filteredExpr10_Zhengmix4eq(metadata = FALSE)
sce_filteredHVG10_Zhengmix4eq(metadata = FALSE)
sce_filteredM3Drop10_Zhengmix4eq(metadata = FALSE)
sce_full_Zhengmix4uneq(metadata = FALSE)
sce_filteredExpr10_Zhengmix4uneq(metadata = FALSE)
sce_filteredHVG10_Zhengmix4uneq(metadata = FALSE)
sce_filteredM3Drop10_Zhengmix4uneq(metadata = FALSE)
sce_full_Zhengmix8eq(metadata = FALSE)
sce_filteredExpr10_Zhengmix8eq(metadata = FALSE)
sce_filteredHVG10_Zhengmix8eq(metadata = FALSE)
sce_filteredM3Drop10_Zhengmix8eq(metadata = FALSE)
}
\examples{
sce_full_Zhengmix4uneq()
}
\value{Returns a \code{\link{SingleCellExperiment}} class.}
\references{
Andrews, T.S., and Hemberg, M. (2018). \emph{Dropout-based feature selection for scRNASeq}. bioRxiv doi:https://doi.org/10.1101/065094.

Duò, A., Robinson, M.D., and Soneson, C. (2018).
\emph{A systematic performance evaluation of clustering methods for single-cell RNA-seq data.}
F1000Research, 7:1141.

Lun, A.T.L., Bach, K., and Marioni, J.C. (2016) \emph{Pooling across cells to normalize single-cell RNA sequencing data with many zero counts.} Genome Biol., 17(1): 75.

Lun, A.T.L., and Risso, D. (2017). \emph{SingleCellExperiment: S4 Classes for Single Cell Data}. R package version 1.0.0.

Satija, R., Farrell, J.A., Gennert, D., et al. (2015). \emph{Spatial reconstruction of single-cell gene expression data.} Nat Biotechnol., 33(5): 495–502.

McCarthy, D.J., Campbell, K.R., Lun, A.T.L., and Wills, Q.F. (2017): \emph{Scater: pre-processing, quality control, normalization and visualization of single-cell RNA-seq data in R. } Bioinformatics 33(8): 1179-1186.

Satija, R., Farrell, J.A., Gennert, D., Schier, A.F., and Regev, A. (2015). \emph{Spatial reconstruction of single-cell gene expression data.} Nat Biotechnol., 33(5): 495–502.

Soneson, C., and Robinson, M.D. (2018). \emph{Bias, robustness and scalability in single-cell differential expression analysis. } Nat Methods, 15(4): 255-261.

Zheng, G.X., Terry, J.M., Belgrader P., et al. (2017). \emph{Massively parallel digital transcriptional profiling of single cells.} Nat Commun., 8:14049.
}
\keyword{datasets}
