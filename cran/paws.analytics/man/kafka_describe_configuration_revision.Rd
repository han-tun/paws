% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kafka_operations.R
\name{kafka_describe_configuration_revision}
\alias{kafka_describe_configuration_revision}
\title{Returns a description of this revision of the configuration}
\usage{
kafka_describe_configuration_revision(Arn, Revision)
}
\arguments{
\item{Arn}{[required] The Amazon Resource Name (ARN) that uniquely identifies an MSK
configuration and all of its revisions.}

\item{Revision}{[required] A string that uniquely identifies a revision of an MSK configuration.}
}
\value{
A list with the following syntax:\preformatted{list(
  Arn = "string",
  CreationTime = as.POSIXct(
    "2015-01-01"
  ),
  Description = "string",
  Revision = 123,
  ServerProperties = raw
)
}
}
\description{
Returns a description of this revision of the configuration.
}
\section{Request syntax}{
\preformatted{svc$describe_configuration_revision(
  Arn = "string",
  Revision = 123
)
}
}

\keyword{internal}
