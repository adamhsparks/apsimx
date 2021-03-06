% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sens_apsimx.R
\name{sens_apsimx}
\alias{sens_apsimx}
\alias{summary.sens_apsim}
\title{Sensitivity Analysis for APSIM Next Generation simulation}
\usage{
sens_apsimx(
  file,
  src.dir = ".",
  parm.paths,
  parm.vector.index,
  replacement,
  grid,
  summary = c("mean", "max", "var", "sd", "none"),
  root,
  verbose = TRUE,
  ...
)

\method{summary}{sens_apsim}(object, ..., scale = FALSE, select = "all")
}
\arguments{
\item{file}{file name to be run (the extension .apsimx is optional)}

\item{src.dir}{directory containing the .apsimx file to be run (defaults to the current directory)}

\item{parm.paths}{absolute or relative paths of the coefficients to be evaluated. 
It is recommended that you use \code{\link{inspect_apsimx}} for this}

\item{parm.vector.index}{Index to evaluate a specific element of a parameter vector.  At the moment it is
possible to only edit one element at a time. This is because there is a conflict when generating multiple
elements in the candidate vector for the same parameter.}

\item{replacement}{TRUE or FALSE for each parameter. Indicating whether it is part of 
the \sQuote{replacement} component. Its length should be equal to the length or \sQuote{parm.paths}.}

\item{grid}{grid of parameter values for the evaluation. It can be a data.frame.}

\item{summary}{function name to use to summarize the output to be a sinlge row (default is the mean).}

\item{root}{root argument for \code{\link{edit_apsimx_replacement}}}

\item{verbose}{whether to print progress in percent and elapsed time.}

\item{...}{additional arguments (none used at the moment)}

\item{object}{object of class \sQuote{sens_apsim}}

\item{scale}{if all inputs are numeric it is better to scale them. The
default is FALSE as some inputs might be characters or factors. In this
case all inputs will be treated as factors in the sum of squares decomposition.}

\item{select}{option for selecting specific variables in the APSIM output. It will be treated as a regular expression}
}
\value{
object of class \sQuote{sens_apsim}, but really just a list with results from the evaluations.

prints to console
}
\description{
It is a wrapper for running APSIM-X and evaluating different parameters values

Summary computes variance-based sensitivity indexes from an object of class \sQuote{sens_apsim}
}
\note{
The summary function is stored as an attribute of the data frame \sQuote{grid.sims}.
}
\examples{
\donttest{
## See the vignette for examples
}

}
