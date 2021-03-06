% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/devicefarm_operations.R
\name{devicefarm_list_network_profiles}
\alias{devicefarm_list_network_profiles}
\title{Returns the list of available network profiles}
\usage{
devicefarm_list_network_profiles(arn, type, nextToken)
}
\arguments{
\item{arn}{[required] The Amazon Resource Name (ARN) of the project for which you want to list
network profiles.}

\item{type}{The type of network profile to return information about. Valid values
are listed here.}

\item{nextToken}{An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.}
}
\value{
A list with the following syntax:\preformatted{list(
  networkProfiles = list(
    list(
      arn = "string",
      name = "string",
      description = "string",
      type = "CURATED"|"PRIVATE",
      uplinkBandwidthBits = 123,
      downlinkBandwidthBits = 123,
      uplinkDelayMs = 123,
      downlinkDelayMs = 123,
      uplinkJitterMs = 123,
      downlinkJitterMs = 123,
      uplinkLossPercent = 123,
      downlinkLossPercent = 123
    )
  ),
  nextToken = "string"
)
}
}
\description{
Returns the list of available network profiles.
}
\section{Request syntax}{
\preformatted{svc$list_network_profiles(
  arn = "string",
  type = "CURATED"|"PRIVATE",
  nextToken = "string"
)
}
}

\keyword{internal}
