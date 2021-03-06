% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/applicationdiscoveryservice_operations.R
\name{applicationdiscoveryservice_describe_configurations}
\alias{applicationdiscoveryservice_describe_configurations}
\title{Retrieves attributes for a list of configuration item IDs}
\usage{
applicationdiscoveryservice_describe_configurations(configurationIds)
}
\arguments{
\item{configurationIds}{[required] One or more configuration IDs.}
}
\value{
A list with the following syntax:\preformatted{list(
  configurations = list(
    list(
      "string"
    )
  )
)
}
}
\description{
Retrieves attributes for a list of configuration item IDs.

All of the supplied IDs must be for the same asset type from one of the
following:
\itemize{
\item server
\item application
\item process
\item connection
}

Output fields are specific to the asset type specified. For example, the
output for a \emph{server} configuration item includes a list of attributes
about the server, such as host name, operating system, number of network
cards, etc.

For a complete list of outputs for each asset type, see \href{https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-api-queries.html#DescribeConfigurations}{Using the DescribeConfigurations Action}
in the \emph{AWS Application Discovery Service User Guide}.
}
\section{Request syntax}{
\preformatted{svc$describe_configurations(
  configurationIds = list(
    "string"
  )
)
}
}

\keyword{internal}
