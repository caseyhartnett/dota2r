% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/api_helpers.R
\name{create_options_printout}
\alias{create_options_printout}
\title{Convert options list into string for url request}
\usage{
create_options_printout(options)
}
\arguments{
\item{options}{list of options for query}
}
\value{
a string to be used in url request
}
\description{
Convert options list into string for url request
}
\examples{
options = list("hero_id" = 1)
create_options_printout(options)
}

