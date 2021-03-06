% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/cr_agency.r
\name{cr_agency}
\alias{cr_agency}
\title{Check the DOI minting agency on one or more dois}
\usage{
cr_agency(dois = NULL, .progress = "none", ...)
}
\arguments{
\item{dois}{(character) One or more article or organization dois.}

\item{.progress}{Show a \code{plyr}-style progress bar? Options are "none", "text", "tk", "win,
and "time".  See \code{\link[plyr]{create_progress_bar}} for details of each.}

\item{...}{Named parameters passed on to \code{\link[httr]{GET}}}
}
\description{
Check the DOI minting agency on one or more dois
}
\examples{
\dontrun{
cr_agency(dois = '10.13039/100000001')
cr_agency(dois = c('10.13039/100000001','10.13039/100000015','10.5284/1011335'))
}
}
\author{
Scott Chamberlain \email{myrmecocystus@gmail.com}
}
\references{
\url{https://github.com/CrossRef/rest-api-doc/blob/master/rest_api.md}
}

