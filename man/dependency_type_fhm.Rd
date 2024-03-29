% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dependency_type_fhm.R
\name{dependency_type_fhm}
\alias{dependency_type_fhm}
\title{Dependency type based on Flexible Heuristics Miner (FHM)}
\usage{
dependency_type_fhm(
  threshold_dependency = 0.9,
  threshold_l1 = threshold_dependency,
  threshold_l2 = threshold_dependency,
  threshold_frequency = 0,
  all_connected = FALSE,
  endpoints_connected = FALSE
)
}
\arguments{
\item{threshold_dependency}{A dependency threshold, usually in the interval \verb{[0,1]}, filtering out dependencies below the threshold.}

\item{threshold_l1}{A dependency threshold, usually in the interval \verb{[0,1]}, filtering out self-loop dependencies below the threshold.}

\item{threshold_l2}{A dependency threshold, usually in the interval \verb{[0,1]}, filtering out length-two loop dependencies below the threshold.}

\item{threshold_frequency}{An absolute frequency threshold filtering dependencies which are observed infrequently.}

\item{all_connected}{If \code{TRUE} the best antecedent and consequent (as determined by the dependency measure) are going to be added regardless of the \code{threshold} value.}

\item{endpoints_connected}{If \code{TRUE} the start/end activity is added as antecedent/consequent when an activity would not be connected according to the \code{threshold} value.}
}
\value{
A dependency type.
}
\description{
Computes the dependencies based on the approach known as Flexible Heuristics Miner.
}
\examples{
dependency_matrix(L_heur_1,
                  dependency_type = dependency_type_fhm(all_connected = TRUE))

}
\references{
A. J. M. M. Weijters and J. T. S. Ribeiro, "Flexible Heuristics Miner (FHM)," 2011 IEEE Symposium on Computational Intelligence and Data Mining (CIDM), Paris, 2011, pp. 310-317. doi: 10.1109/CIDM.2011.5949453
}
