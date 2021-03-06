% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/alexaforbusiness_operations.R
\name{alexaforbusiness_delete_network_profile}
\alias{alexaforbusiness_delete_network_profile}
\title{Deletes a network profile by the network profile ARN}
\usage{
alexaforbusiness_delete_network_profile(NetworkProfileArn)
}
\arguments{
\item{NetworkProfileArn}{[required] The ARN of the network profile associated with a device.}
}
\value{
An empty list.
}
\description{
Deletes a network profile by the network profile ARN.
}
\section{Request syntax}{
\preformatted{svc$delete_network_profile(
  NetworkProfileArn = "string"
)
}
}

\keyword{internal}
