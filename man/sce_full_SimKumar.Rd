\name{sce_full_SimKumar4easy}
\docType{data}
\alias{sce_full_SimKumar4easy}
\alias{sce_filteredExpr10_SimKumar4easy}
\alias{sce_filteredHVG10_SimKumar4easy}
\alias{sce_filteredM3Drop10_SimKumar4easy}
\alias{sce_full_SimKumar4hard}
\alias{sce_filteredExpr10_SimKumar4hard}
\alias{sce_filteredHVG10_SimKumar4hard}
\alias{sce_filteredM3Drop10_SimKumar4hard}
\alias{sce_full_SimKumar8hard}
\alias{sce_filteredExpr10_SimKumar8hard}
\alias{sce_filteredHVG10_SimKumar8hard}
\alias{sce_filteredM3Drop10_SimKumar8hard}


\title{
SimKumar data sets
}
\arguments{
\item{metadata}{Logical, whether only metadata should be returned}
}
\description{
Gene counts for scRNA-seq data sets simulated with the \code{splatter} package.
}
\details{
Using one subpopulation of the \code{sce_full_Kumar} data set as input,
scRNA-seq data with known group structure was simulated with the \code{splatter}
package from Zappia et al. (2017). The simulated data have been used to evaluate
the performance of clustering algorithms in Duò et al. (2018).

Three data sets have been generated, each consisting of 500 cells and
approximately 43,000 features, with varying degree of cluster separability.
The \code{sce_full_SimKumar4easy} data set consists of 4 subpopulations with
relative abundances 0.1, 0.15, 0.5 and 0.25, and probabilities of differential
expression set to 0.05, 0.1, 0.2 and 0.4 for the four subpopulations,
respectively. The \code{sce_full_SimKumar4hard} data set consists of 4
subpopulations with relative abundances 0.2, 0.15, 0.4 and 0.25, and
probabilities of differential expression 0.01, 0.05, 0.05 and 0.08. Finally,
the \code{sce_full_SimKumar8hard} data set consists of 8 subpopulations with
relative abundances 0.13, 0.07, 0.1, 0.05, 0.4, 0.1, 0.1 and 0.05, and
probabilities of differential expression equal to 0.03, 0.03, 0.03, 0.05, 0.05,
0.07, 0.08 and 0.1, respectively.

The \code{scater} package was used to perform quality control of the data sets
(McCarthy et al. (2017)).
Features with zero counts across all cells, as well as cells with total count
or total number of detected features more than 3 median absolute deviations
(MADs) below the median across all cells (on the log scale), were excluded.
The \code{filteredExpr}, \code{filteredHVG} and \code{filteredM3Drop10} are
further reduced data sets. For each of the filtering method, we retained 10
percent of the original number of genes
(with a non-zero count in at least one cell) in the original data sets.

For the \code{filteredExpr} data sets, only the genes with the highest average
expression (log-normalized count) value across all cells were retained.
Using the \code{Seurat} package, the \code{filteredHVG} data sets were filtered
on the variability of the features and only the most highly variable ones were
retained (Satija et al. (2015)).  Finally, the \code{M3Drop} package was used
to model the dropout rate of the genes as a function of the mean expression
level using the Michaelis-Menten equation and select variables to retain for
the \code{filteredM3Drop10} data sets (Andrews and Hemberg (2018)).

The \code{scater} package was used to normalize the count values, based on
normalization factors calculated by the deconvolution method from the
\code{scran} package (Lun et al. (2016)).
This data set is provided as a \code{\link{SingleCellExperiment}} object
(Lun and Risso (2017)). For further information on the
\code{\linkS4class{SingleCellExperiment}} class, see the respective manual. }

\usage{
sce_full_SimKumar4easy(metadata = FALSE)
sce_filteredExpr10_SimKumar4easy(metadata = FALSE)
sce_filteredHVG10_SimKumar4easy(metadata = FALSE)
sce_filteredM3Drop10_SimKumar4easy(metadata = FALSE)
sce_full_SimKumar4hard(metadata = FALSE)
sce_filteredExpr10_SimKumar4hard(metadata = FALSE)
sce_filteredHVG10_SimKumar4hard(metadata = FALSE)
sce_filteredM3Drop10_SimKumar4hard(metadata = FALSE)
sce_full_SimKumar8hard(metadata = FALSE)
sce_filteredExpr10_SimKumar8hard(metadata = FALSE)
sce_filteredHVG10_SimKumar8hard(metadata = FALSE)
sce_filteredM3Drop10_SimKumar8hard(metadata = FALSE)
}
\examples{
sce_full_SimKumar4easy()
}
\format{SingleCellExperiment}
\value{Returns a \code{\link{SingleCellExperiment}} object.}
\references{
Andrews, T.S., and Hemberg, M. (2018). \emph{Dropout-based feature selection
for scRNASeq}. bioRxiv doi:https://doi.org/10.1101/065094.

Duò, A., Robinson, M.D., and Soneson, C. (2018).
\emph{A systematic performance evaluation of clustering methods for single-cell
RNA-seq data.}
F1000Research, 7:1141.

Lun, A.T.L., Bach, K., and Marioni, J.C. (2016) \emph{Pooling across cells to
normalize single-cell RNA sequencing data with many zero counts.}
Genome Biol., 17(1): 75.

Lun, A.T.L., and Risso, D. (2017). \emph{SingleCellExperiment: S4 Classes for
Single Cell Data}. R package version 1.0.0.

McCarthy, D.J., Campbell, K.R., Lun, A.T.L., and Wills, Q.F. (2017):
\emph{Scater: pre-processing, quality control, normalization and visualization
of single-cell RNA-seq data in R. } Bioinformatics 33(8): 1179-1186.

Satija, R., Farrell, J.A., Gennert, D., Schier, A.F., and Regev, A. (2015).
\emph{Spatial reconstruction of single-cell gene expression data.}
Nat Biotechnol., 33(5): 495–502.

Zappia, L., Phipson, B., and Oshlack, A. (2017). \emph{Splatter: simulation of
single-cell RNA sequencing data.} Genome Biol., 18(1): 174.
}
\keyword{datasets}
