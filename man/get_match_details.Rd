% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/match_data.R
\name{get_match_details}
\alias{get_match_details}
\title{Retrieve details for a single match}
\usage{
get_match_details(match_id, api = get_api_details())
}
\arguments{
\item{match_id}{The match id you are interested in.}

\item{api}{list from get_api_details}
}
\value{
api results in a list
}
\description{
Retrieve details for a single match
}
\examples{
get_match_details(1843264929)
}

