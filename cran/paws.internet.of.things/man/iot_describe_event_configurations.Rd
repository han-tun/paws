% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iot_operations.R
\name{iot_describe_event_configurations}
\alias{iot_describe_event_configurations}
\title{Describes event configurations}
\usage{
iot_describe_event_configurations()
}
\value{
A list with the following syntax:\preformatted{list(
  eventConfigurations = list(
    list(
      Enabled = TRUE|FALSE
    )
  ),
  creationDate = as.POSIXct(
    "2015-01-01"
  ),
  lastModifiedDate = as.POSIXct(
    "2015-01-01"
  )
)
}
}
\description{
Describes event configurations.
}
\section{Request syntax}{
\preformatted{svc$describe_event_configurations()
}
}

\keyword{internal}
