% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iot1clickdevicesservice_operations.R
\name{iot1clickdevicesservice_unclaim_device}
\alias{iot1clickdevicesservice_unclaim_device}
\title{Disassociates a device from your AWS account using its device ID}
\usage{
iot1clickdevicesservice_unclaim_device(DeviceId)
}
\arguments{
\item{DeviceId}{[required] The unique identifier of the device.}
}
\value{
A list with the following syntax:\preformatted{list(
  State = "string"
)
}
}
\description{
Disassociates a device from your AWS account using its device ID.
}
\section{Request syntax}{
\preformatted{svc$unclaim_device(
  DeviceId = "string"
)
}
}

\keyword{internal}
