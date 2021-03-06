% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/COVIMPUTEFUNCTION_Example.R
\name{COVIMPUTEFUNCTION_Example}
\alias{COVIMPUTEFUNCTION_Example}
\title{COVIMPUTEFUNCTION_Example}
\usage{
COVIMPUTEFUNCTION_Example(datWIDE, param, ImputeDat, TransCov)
}
\arguments{
\item{datWIDE}{defined as in MultiCure}

\item{param}{If baselines are WEIBULL, this is a vector containing beta, alpha, scale, and shape. If baselines are COX, this is a vector containing beta and alpha.}

\item{ImputeDat}{This is a list with the following elements:
\itemize{
\item UnequalCens: A vector taking value 1 if the subject has unequal follow-up. Note: If subject is assumed cured in datWIDE, they are listed as UnequalCens = 0.
\item CovMissing: A matrix indicating which elements of Cov are missing. Not needed for this imputation.
\item CovImp: A list containing a single imputation of Cov
\item GImp: A vector with a recent single imputation of G
\item YRImp: A vector with a recent single imputation of Y_R
\item deltaRImp: A vector with a recent single imputation of delta_R
If baselines are COX, then this will also include
\item Basehaz13: A matrix containing the estimate of the baseline hazard function for the 1->3 transition specified intervals
\item Basehaz24: A matrix containing the estimate of the baseline hazard function for the 2->4 transition specified intervals
\item Basehaz14: A matrix containing the estimate of the baseline hazard function for the 1->4 transition specified intervals
\item Basehaz34: A matrix containing the estimate of the baseline hazard function for the 3->4 transition specified intervals
}}

\item{TransCov}{defined as in MultiCure}
}
\value{
CovImp a matrix with a SINGLE imputation of the covariate matrix
}
\description{
The function COVIMPUTEFUNCTION_Example creates a single imputed version of the covariate matrix. An example function is included in the package, but the user must specify their own function when applying MultiCure to datasets with covariate missingness. This function must have input/output as described below.
}
\details{
The example code included in the package imputes missing covariate X2 in the Multistate cure model example. In the example code, a normal covariate is imputed using an approach similar to SMC-FCS in Bartlett et al. (2014) and Metropolis-Hastings methods. In practice, this function can use any imputation method the user desires. For example, the user-written function can call 'mice' in R to perform the imputation.
}
