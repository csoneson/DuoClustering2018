\name{clustering_summary_filteredExpr10_Koh_v1}
\docType{data}
\alias{clustering_summary_filteredExpr10_Koh_v1}
\alias{clustering_summary_filteredHVG10_Koh_v1}
\alias{clustering_summary_filteredM3Drop10_Koh_v1}
\alias{clustering_summary_filteredExpr10_KohTCC_v1}
\alias{clustering_summary_filteredHVG10_KohTCC_v1}
\alias{clustering_summary_filteredM3Drop10_KohTCC_v1}
\alias{clustering_summary_filteredExpr10_Kumar_v1}
\alias{clustering_summary_filteredHVG10_Kumar_v1}
\alias{clustering_summary_filteredM3Drop10_Kumar_v1}
\alias{clustering_summary_filteredExpr10_KumarTCC_v1}
\alias{clustering_summary_filteredHVG10_KumarTCC_v1}
\alias{clustering_summary_filteredM3Drop10_KumarTCC_v1}
\alias{clustering_summary_filteredExpr10_Trapnell_v1}
\alias{clustering_summary_filteredHVG10_Trapnell_v1}
\alias{clustering_summary_filteredM3Drop10_Trapnell_v1}
\alias{clustering_summary_filteredExpr10_TrapnellTCC_v1}
\alias{clustering_summary_filteredHVG10_TrapnellTCC_v1}
\alias{clustering_summary_filteredM3Drop10_TrapnellTCC_v1}
\alias{clustering_summary_filteredExpr10_Zhengmix4eq_v1}
\alias{clustering_summary_filteredHVG10_Zhengmix4eq_v1}
\alias{clustering_summary_filteredM3Drop10_Zhengmix4eq_v1}
\alias{clustering_summary_filteredExpr10_Zhengmix4uneq_v1}
\alias{clustering_summary_filteredHVG10_Zhengmix4uneq_v1}
\alias{clustering_summary_filteredM3Drop10_Zhengmix4uneq_v1}
\alias{clustering_summary_filteredExpr10_Zhengmix8eq_v1}
\alias{clustering_summary_filteredHVG10_Zhengmix8eq_v1}
\alias{clustering_summary_filteredM3Drop10_Zhengmix8eq_v1}
\alias{clustering_summary_filteredExpr10_SimKumar4easy_v1}
\alias{clustering_summary_filteredHVG10_SimKumar4easy_v1}
\alias{clustering_summary_filteredM3Drop10_SimKumar4easy_v1}
\alias{clustering_summary_filteredExpr10_SimKumar4hard_v1}
\alias{clustering_summary_filteredHVG10_SimKumar4hard_v1}
\alias{clustering_summary_filteredM3Drop10_SimKumar4hard_v1}
\alias{clustering_summary_filteredExpr10_SimKumar8hard_v1}
\alias{clustering_summary_filteredHVG10_SimKumar8hard_v1}
\alias{clustering_summary_filteredM3Drop10_SimKumar8hard_v1}

\title{
'Clustering summary' data
}
\description{
Clustering results for the performance evaluation of clustering methods for scRNA-seq data.
}
\details{
This are clustering results from the performance evaluation of clustering methods for scRNA-seq data. The clustering results are provided as a \code{\link{data.frame}} object containing 10 variables (columns) named \code{\link{dataset}}, \code{\link{method}}, \code{\link{cell}}, \code{\link{run}}, \code{\link{k}}, \code{\link{resolution}}, \code{\link{cluster}}, \code{\link{trueclass}}, \code{\link{est_k}} and \code{\link{elapsed}}. For further information the see Duò et al. (2018). }
}
\usage{
\code{\link{clustering_summary_filteredExpr10_Koh}}
}
\examples{
clustering_summary_filteredExpr10_Koh
}
\value{Returns a \code{\link{data.frame}} class.}
\references{
Duò A, Robinson MD. and Soneson C. (2018).
\emph{A systematic performance evaluation of clustering methods for single-cell RNA-seq data.}
F1000Research, 7:1141.
}
\keyword{datasets}
