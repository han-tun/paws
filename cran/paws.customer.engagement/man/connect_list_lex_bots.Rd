% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/connect_operations.R
\name{connect_list_lex_bots}
\alias{connect_list_lex_bots}
\title{This API is in preview release for Amazon Connect and is subject to
change}
\usage{
connect_list_lex_bots(InstanceId, NextToken, MaxResults)
}
\arguments{
\item{InstanceId}{[required] The identifier of the Amazon Connect instance.}

\item{NextToken}{The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.}

\item{MaxResults}{The maximimum number of results to return per page.}
}
\value{
A list with the following syntax:\preformatted{list(
  LexBots = list(
    list(
      Name = "string",
      LexRegion = "string"
    )
  ),
  NextToken = "string"
)
}
}
\description{
This API is in preview release for Amazon Connect and is subject to
change.

Returns a paginated list of all the Amazon Lex bots currently associated
with the instance.
}
\section{Request syntax}{
\preformatted{svc$list_lex_bots(
  InstanceId = "string",
  NextToken = "string",
  MaxResults = 123
)
}
}

\keyword{internal}
