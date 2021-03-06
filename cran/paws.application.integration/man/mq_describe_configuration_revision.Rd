% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mq_operations.R
\name{mq_describe_configuration_revision}
\alias{mq_describe_configuration_revision}
\title{Returns the specified configuration revision for the specified
configuration}
\usage{
mq_describe_configuration_revision(ConfigurationId,
  ConfigurationRevision)
}
\arguments{
\item{ConfigurationId}{[required] The unique ID that Amazon MQ generates for the configuration.}

\item{ConfigurationRevision}{[required] The revision of the configuration.}
}
\value{
A list with the following syntax:\preformatted{list(
  ConfigurationId = "string",
  Created = as.POSIXct(
    "2015-01-01"
  ),
  Data = "string",
  Description = "string"
)
}
}
\description{
Returns the specified configuration revision for the specified
configuration.
}
\section{Request syntax}{
\preformatted{svc$describe_configuration_revision(
  ConfigurationId = "string",
  ConfigurationRevision = "string"
)
}
}

\keyword{internal}
