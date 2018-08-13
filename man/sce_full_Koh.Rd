\name{sce_full_Koh}
\docType{data}
\alias{sce_full_Koh}
\alias{sce_filteredExpr10_Koh}
\alias{sce_filteredHVG10_Koh}
\alias{sce_filteredM3Drop10_Koh}
\alias{sce_full_KohTCC}
\alias{sce_filteredExpr10_KohTCC}
\alias{sce_filteredHVG10_KohTCC}
\alias{sce_filteredM3Drop10_KohTCC}

\title{
Koh data sets
}
\arguments{
\item{metadata}{Logical, whether only metadata should be returned}
}
\description{
Gene or TCC counts for a scRNA-seq data set from Koh et al. (2016), consisting
of in vitro cultured
H7 embryonic stem cells (WiCell) and H7-derived downstream early mesoderm
progenitors.
}
\details{
This is a scRNA-seq data set originally from Koh et al. (2016). The data set
consists of
gene-level read counts or TCCs (transcript compatibility counts)
of in vitro cultured human H7 embryonic stem cells (WiCell) and
H7-derived downstream
early mesoderm progenitors. It contains 9 subpopulations, defined by the
cell phenotype given by the authors' annotations. The data sets have been used
to evaluate the performance of clustering algorithms in Duò et al. (2018).

For the \code{sce_full_Koh} data set, all genes except those with zero counts
across all cells are retained. The gene counts are
gene-level length-scaled TPM values derived from Salmon (Patro et al. (2017))
quantifications (see
Soneson and Robinson (2018)). For the TCC data set we estimated transcripts
compatibility counts using \code{kallisto} as an alternative to the gene-level
count matrix (Bray et al. (2016), Ntranos et al. (2016)).

The \code{scater} package was used to perform quality control of the data sets
(McCarthy et al. (2017)).
Features with zero counts across all cells, as well as all cells with total
count or total number
of detected features more than 3 median absolute deviations (MADs) below the
median across all cells (on the log scale), were excluded.

The \code{sce_full_Koh} data set consists of 531 cells and 48,981 features,
and the \code{sce_full_KohTCC} data set of 531 cells and 811,938 features.
The \code{filteredExpr}, \code{filteredHVG} and \code{filteredM3Drop10} are
further reduced data sets.
For each of the filtering methods, we retained 10 percent of the number of genes
(with a non-zero count in at least one cell) in the original data sets.

For the \code{filteredExpr} data sets, only the genes/TCCs with the highest
average expression (log-normalized count) value across all cells were retained.
Using the \code{Seurat} package (Satija et al. (2015)), the \code{filteredHVG}
data sets were filtered on the variability of the features and only the most
highly variable ones were retained. Finally, the \code{M3Drop} package was
used to model the dropout rate of the genes as a function of the mean
expression level using the Michaelis-Menten equation and select variables to
retain for the \code{filteredM3Drop10} data sets (Andrews and Hemberg (2018)).

The \code{scater} package was used to normalize the count values, based on
normalization factors calculated by the deconvolution method from the
\code{scran} package (Lun et al. (2016)).

This data set is provided as a \code{SingleCellExperiment} object
(Lun and Risso (2017)). Raw data files for the original data set (SRP073808)
are available from https://www.ncbi.nlm.nih.gov/sra?term=SRP073808.}

\usage{
sce_full_Koh(metadata = FALSE)
sce_filteredExpr10_Koh(metadata = FALSE)
sce_filteredHVG10_Koh(metadata = FALSE)
sce_filteredM3Drop10_Koh(metadata = FALSE)
sce_full_KohTCC(metadata = FALSE)
sce_filteredExpr10_KohTCC(metadata = FALSE)
sce_filteredHVG10_KohTCC(metadata = FALSE)
sce_filteredM3Drop10_KohTCC(metadata = FALSE)
}

\examples{
sce_filteredHVG10_Koh()
}
\format{SingleCellExperiment}
\value{Returns a \code{SingleCellExperiment} object.}
\references{
Andrews, T.S., and Hemberg, M. (2018). \emph{Dropout-based feature selection for
scRNASeq}. bioRxiv doi:https://doi.org/10.1101/065094.

Bray, N.L., Pimentel, H., Melsted, P., and Pachter, L. (2016).
\emph{Near-optimal probabilistic RNA-seq quantification}.
Nat. Biotechnol. 34: 525–527.

Duò, A., Robinson, M.D., and Soneson, C. (2018).
\emph{A systematic performance evaluation of clustering methods for single-cell
RNA-seq data.}
F1000Res. 7:1141.

Koh, P.W., Sinha, R., Barkal, A.A., Morganti  R.M., Chen, A., Weissman, I.L.,
Ang, L.T., Kundaje, A., and Loh, K.M. (2016).
\emph{An atlas of transcriptional, chromatin accessibility, and surface marker
changes in human mesoderm development.}
Scientific Data 3:160109.

Lun, A.T.L., Bach, K., and Marioni, J.C. (2016) \emph{Pooling across cells to
normalize single-cell RNA sequencing data with many zero counts.}
Genome Biol. 17(1): 75.

Lun, A.T.L., and Risso, D. (2017). \emph{SingleCellExperiment: S4 Classes for
Single Cell Data}. R package version 1.0.0.

McCarthy, D.J., Campbell, K.R., Lun, A.T.L., and Wills, Q.F. (2017):
\emph{Scater: pre-processing, quality control, normalization and visualization
of single-cell RNA-seq data in R.} Bioinformatics 33(8): 1179-1186.

Ntranos, V., Kamath, G.M., Zhang, J.M., Pachter, L., and Tse, D.N. (2016):
\emph{Fast and accurate single-cell RNA-seq analysis by clustering of
transcript-compatibility counts.} Genome Biol. 17:112.

Patro, R., Duggal, G., Love, M.I., Irizarry, R.A., and Kingsford, C. (2017):
\emph{Salmon provides fast and bias-aware quantification of transcript
expression.} Nat. Methods 14:417-419.

Satija, R., Farrell, J.A., Gennert, D., Schier, A.F., and Regev, A. (2015).
\emph{Spatial reconstruction of single-cell gene expression data.}
Nat. Biotechnol. 33(5): 495–502.

Soneson, C., and Robinson, M.D. (2018). \emph{Bias, robustness and scalability
in single-cell differential expression analysis.} Nat. Methods, 15(4): 255-261.
}
\keyword{datasets}
