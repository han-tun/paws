% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mq_operations.R
\name{mq_list_configurations}
\alias{mq_list_configurations}
\title{Returns a list of all configurations}
\usage{
mq_list_configurations(MaxResults, NextToken)
}
\arguments{
\item{MaxResults}{The maximum number of configurations that Amazon MQ can return per page
(20 by default). This value must be an integer from 5 to 100.}

\item{NextToken}{The token that specifies the next page of results Amazon MQ should
return. To request the first page, leave nextToken empty.}
}
\value{
A list with the following syntax:\preformatted{list(
  Configurations = list(
    list(
      Arn = "string",
      AuthenticationStrategy = "SIMPLE"|"LDAP",
      Created = as.POSIXct(
        "2015-01-01"
      ),
      Description = "string",
      EngineType = "ACTIVEMQ"|"RABBITMQ",
      EngineVersion = "string",
      Id = "string",
      LatestRevision = list(
        Created = as.POSIXct(
          "2015-01-01"
        ),
        Description = "string",
        Revision = 123
      ),
      Name = "string",
      Tags = list(
        "string"
      )
    )
  ),
  MaxResults = 123,
  NextToken = "string"
)
}
}
\description{
Returns a list of all configurations.
}
\section{Request syntax}{
\preformatted{svc$list_configurations(
  MaxResults = 123,
  NextToken = "string"
)
}
}

\keyword{internal}
