% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/devicefarm_operations.R
\name{devicefarm_get_vpce_configuration}
\alias{devicefarm_get_vpce_configuration}
\title{Returns information about the configuration settings for your Amazon
Virtual Private Cloud (VPC) endpoint}
\usage{
devicefarm_get_vpce_configuration(arn)
}
\arguments{
\item{arn}{[required] The Amazon Resource Name (ARN) of the VPC endpoint configuration you
want to describe.}
}
\value{
A list with the following syntax:\preformatted{list(
  vpceConfiguration = list(
    arn = "string",
    vpceConfigurationName = "string",
    vpceServiceName = "string",
    serviceDnsName = "string",
    vpceConfigurationDescription = "string"
  )
)
}
}
\description{
Returns information about the configuration settings for your Amazon
Virtual Private Cloud (VPC) endpoint.
}
\section{Request syntax}{
\preformatted{svc$get_vpce_configuration(
  arn = "string"
)
}
}

\keyword{internal}
