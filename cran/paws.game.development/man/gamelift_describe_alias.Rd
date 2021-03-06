% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gamelift_operations.R
\name{gamelift_describe_alias}
\alias{gamelift_describe_alias}
\title{Retrieves properties for an alias}
\usage{
gamelift_describe_alias(AliasId)
}
\arguments{
\item{AliasId}{[required] The unique identifier for the fleet alias that you want to retrieve. You
can use either the alias ID or ARN value.}
}
\value{
A list with the following syntax:\preformatted{list(
  Alias = list(
    AliasId = "string",
    Name = "string",
    AliasArn = "string",
    Description = "string",
    RoutingStrategy = list(
      Type = "SIMPLE"|"TERMINAL",
      FleetId = "string",
      Message = "string"
    ),
    CreationTime = as.POSIXct(
      "2015-01-01"
    ),
    LastUpdatedTime = as.POSIXct(
      "2015-01-01"
    )
  )
)
}
}
\description{
Retrieves properties for an alias. This operation returns all alias
metadata and settings. To get an alias's target fleet ID only, use
\code{\link[=gamelift_resolve_alias]{resolve_alias}}.

To get alias properties, specify the alias ID. If successful, the
requested alias record is returned.
\itemize{
\item \code{\link[=gamelift_create_alias]{create_alias}}
\item \code{\link[=gamelift_list_aliases]{list_aliases}}
\item \code{\link[=gamelift_describe_alias]{describe_alias}}
\item \code{\link[=gamelift_update_alias]{update_alias}}
\item \code{\link[=gamelift_delete_alias]{delete_alias}}
\item \code{\link[=gamelift_resolve_alias]{resolve_alias}}
}
}
\section{Request syntax}{
\preformatted{svc$describe_alias(
  AliasId = "string"
)
}
}

\keyword{internal}
