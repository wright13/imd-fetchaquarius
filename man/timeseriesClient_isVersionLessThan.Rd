% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/timeseries_client.R
\name{timeseriesClient_isVersionLessThan}
\alias{timeseriesClient_isVersionLessThan}
\title{Determines if a target version string is strictly less than a source version}
\arguments{
\item{targetVersion}{Target version string}

\item{sourceVersion}{Optional source version string. If missing, use the connected server version}
}
\value{
TRUE if the target version is strictly less than the source version
}
\description{
This method takes dotted version strings and compares them by numerical components.
It safely avoids the errors string comparison, which incorrectly says "3.10.510" > "17.2.123".
}
