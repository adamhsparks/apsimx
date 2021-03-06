% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/apsim_met.R
\name{napad_apsim_met}
\alias{napad_apsim_met}
\title{Pad a met file with NAs when there are date discontinuities}
\usage{
napad_apsim_met(met)
}
\arguments{
\item{met}{object of class \sQuote{met}}
}
\value{
It returns an object of class \sQuote{met} with padded NAs.
}
\description{
It will fill in or \sQuote{pad} a met object with NAs
}
\details{
Fill in with missing data date discontinuities in a met file
}
\note{
The purpose of this function is to allow for imputation using \code{\link{impute_apsim_met}}
}
