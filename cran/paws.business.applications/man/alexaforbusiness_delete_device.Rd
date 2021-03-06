% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/alexaforbusiness_operations.R
\name{alexaforbusiness_delete_device}
\alias{alexaforbusiness_delete_device}
\title{Removes a device from Alexa For Business}
\usage{
alexaforbusiness_delete_device(DeviceArn)
}
\arguments{
\item{DeviceArn}{[required] The ARN of the device for which to request details.}
}
\value{
An empty list.
}
\description{
Removes a device from Alexa For Business.
}
\section{Request syntax}{
\preformatted{svc$delete_device(
  DeviceArn = "string"
)
}
}

\keyword{internal}
