% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/robomaker_operations.R
\name{robomaker_list_robots}
\alias{robomaker_list_robots}
\title{Returns a list of robots}
\usage{
robomaker_list_robots(nextToken, maxResults, filters)
}
\arguments{
\item{nextToken}{If the previous paginated request did not return all of the remaining
results, the response object's \code{nextToken} parameter value is set to a
token. To retrieve the next set of results, call
\code{\link[=robomaker_list_robots]{list_robots}} again and assign that token to
the request object's \code{nextToken} parameter. If there are no remaining
results, the previous response object's NextToken parameter is set to
null.}

\item{maxResults}{When this parameter is used, \code{\link[=robomaker_list_robots]{list_robots}} only
returns \code{maxResults} results in a single page along with a \code{nextToken}
response element. The remaining results of the initial request can be
seen by sending another \code{\link[=robomaker_list_robots]{list_robots}} request
with the returned \code{nextToken} value. This value can be between 1 and
200. If this parameter is not used, then
\code{\link[=robomaker_list_robots]{list_robots}} returns up to 200 results and a
\code{nextToken} value if applicable.}

\item{filters}{Optional filters to limit results.

The filter names \code{status} and \code{fleetName} are supported. When filtering,
you must use the complete value of the filtered item. You can use up to
three filters, but they must be for the same named item. For example, if
you are looking for items with the status \code{Registered} or the status
\code{Available}.}
}
\value{
A list with the following syntax:\preformatted{list(
  robots = list(
    list(
      arn = "string",
      name = "string",
      fleetArn = "string",
      status = "Available"|"Registered"|"PendingNewDeployment"|"Deploying"|"Failed"|"InSync"|"NoResponse",
      greenGrassGroupId = "string",
      createdAt = as.POSIXct(
        "2015-01-01"
      ),
      architecture = "X86_64"|"ARM64"|"ARMHF",
      lastDeploymentJob = "string",
      lastDeploymentTime = as.POSIXct(
        "2015-01-01"
      )
    )
  ),
  nextToken = "string"
)
}
}
\description{
Returns a list of robots. You can optionally provide filters to retrieve
specific robots.
}
\section{Request syntax}{
\preformatted{svc$list_robots(
  nextToken = "string",
  maxResults = 123,
  filters = list(
    list(
      name = "string",
      values = list(
        "string"
      )
    )
  )
)
}
}

\keyword{internal}
