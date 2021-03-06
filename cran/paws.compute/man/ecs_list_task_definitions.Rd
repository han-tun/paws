% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ecs_operations.R
\name{ecs_list_task_definitions}
\alias{ecs_list_task_definitions}
\title{Returns a list of task definitions that are registered to your account}
\usage{
ecs_list_task_definitions(familyPrefix, status, sort, nextToken,
  maxResults)
}
\arguments{
\item{familyPrefix}{The full family name with which to filter the
\code{\link[=ecs_list_task_definitions]{list_task_definitions}} results. Specifying
a \code{familyPrefix} limits the listed task definitions to task definition
revisions that belong to that family.}

\item{status}{The task definition status with which to filter the
\code{\link[=ecs_list_task_definitions]{list_task_definitions}} results. By
default, only \code{ACTIVE} task definitions are listed. By setting this
parameter to \code{INACTIVE}, you can view task definitions that are
\code{INACTIVE} as long as an active task or service still references them.
If you paginate the resulting output, be sure to keep the \code{status} value
constant in each subsequent request.}

\item{sort}{The order in which to sort the results. Valid values are \code{ASC} and
\code{DESC}. By default (\code{ASC}), task definitions are listed
lexicographically by family name and in ascending numerical order by
revision so that the newest task definitions in a family are listed
last. Setting this parameter to \code{DESC} reverses the sort order on family
name and revision so that the newest task definitions in a family are
listed first.}

\item{nextToken}{The \code{nextToken} value returned from a
\code{\link[=ecs_list_task_definitions]{list_task_definitions}} request indicating
that more results are available to fulfill the request and further calls
will be needed. If \code{maxResults} was provided, it is possible the number
of results to be fewer than \code{maxResults}.

This token should be treated as an opaque identifier that is only used
to retrieve the next items in a list and not for other programmatic
purposes.}

\item{maxResults}{The maximum number of task definition results returned by
\code{\link[=ecs_list_task_definitions]{list_task_definitions}} in paginated
output. When this parameter is used,
\code{\link[=ecs_list_task_definitions]{list_task_definitions}} only returns
\code{maxResults} results in a single page along with a \code{nextToken} response
element. The remaining results of the initial request can be seen by
sending another \code{\link[=ecs_list_task_definitions]{list_task_definitions}}
request with the returned \code{nextToken} value. This value can be between 1
and 100. If this parameter is not used, then
\code{\link[=ecs_list_task_definitions]{list_task_definitions}} returns up to 100
results and a \code{nextToken} value if applicable.}
}
\value{
A list with the following syntax:\preformatted{list(
  taskDefinitionArns = list(
    "string"
  ),
  nextToken = "string"
)
}
}
\description{
Returns a list of task definitions that are registered to your account.
You can filter the results by family name with the \code{familyPrefix}
parameter or by status with the \code{status} parameter.
}
\section{Request syntax}{
\preformatted{svc$list_task_definitions(
  familyPrefix = "string",
  status = "ACTIVE"|"INACTIVE",
  sort = "ASC"|"DESC",
  nextToken = "string",
  maxResults = 123
)
}
}

\examples{
\dontrun{
# This example lists all of your registered task definitions.
svc$list_task_definitions()

# This example lists the task definition revisions of a specified family.
svc$list_task_definitions(
  familyPrefix = "wordpress"
)
}

}
\keyword{internal}
