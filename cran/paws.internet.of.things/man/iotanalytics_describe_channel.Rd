% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iotanalytics_operations.R
\name{iotanalytics_describe_channel}
\alias{iotanalytics_describe_channel}
\title{Retrieves information about a channel}
\usage{
iotanalytics_describe_channel(channelName, includeStatistics)
}
\arguments{
\item{channelName}{[required] The name of the channel whose information is retrieved.}

\item{includeStatistics}{If true, additional statistical information about the channel is
included in the response. This feature cannot be used with a channel
whose S3 storage is customer-managed.}
}
\value{
A list with the following syntax:\preformatted{list(
  channel = list(
    name = "string",
    storage = list(
      serviceManagedS3 = list(),
      customerManagedS3 = list(
        bucket = "string",
        keyPrefix = "string",
        roleArn = "string"
      )
    ),
    arn = "string",
    status = "CREATING"|"ACTIVE"|"DELETING",
    retentionPeriod = list(
      unlimited = TRUE|FALSE,
      numberOfDays = 123
    ),
    creationTime = as.POSIXct(
      "2015-01-01"
    ),
    lastUpdateTime = as.POSIXct(
      "2015-01-01"
    ),
    lastMessageArrivalTime = as.POSIXct(
      "2015-01-01"
    )
  ),
  statistics = list(
    size = list(
      estimatedSizeInBytes = 123.0,
      estimatedOn = as.POSIXct(
        "2015-01-01"
      )
    )
  )
)
}
}
\description{
Retrieves information about a channel.
}
\section{Request syntax}{
\preformatted{svc$describe_channel(
  channelName = "string",
  includeStatistics = TRUE|FALSE
)
}
}

\keyword{internal}
