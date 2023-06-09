% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/timeseries_client.R
\name{timeseriesClient_getTimeSeriesData}
\alias{timeseriesClient_getTimeSeriesData}
\title{Gets time-series points for multiple time-series}
\arguments{
\item{timeSeriesIds}{A list of time-series identifiers or unique IDs}

\item{queryFrom}{Optional time from which to retrieve data.If missing, fetches data from the start-of-record}

\item{queryTo}{Optional time to which data willl be retrieved. If missing, fetches data to the end-of-record}

\item{outputUnitIds}{Optional unit IDs for output. If missing or empty, the default unit of the time-series will be used}
}
\value{
The JSON object from the /GetTimeSeriesData response
}
\description{
Retrieves points for up to 10 time-series.
Point values from secondary time-series will be time-aligned via interpolation
rules to the timestamps from the first time-series.
}
\examples{
\dontrun{
## Get the discharge and stage timeseries for 2012
json = timeseries$getTimeSeriesData(c("Discharge.Working@Location","Stage.Working@Location"),
                                    queryFrom = "2012-01-01T00:00:00Z",
                                    queryTo   = "2013-01-01T00:00:00Z")

## Plot stage vs dicharge
plot(json$Points$NumericValue1, json$Points$NumericValue2)

## Plot stage vs dicharge, with log scale, and some labeled axis
plot(json$Points$NumericValue1, json$Points$NumericValue2, log = "xy",
     xlab = json$TimeSeries$Identifier[1],
     ylab = json$TimeSeries$Identifier[2])
}
}
