% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudwatchlogs_operations.R
\name{cloudwatchlogs_get_log_events}
\alias{cloudwatchlogs_get_log_events}
\title{Lists log events from the specified log stream}
\usage{
cloudwatchlogs_get_log_events(logGroupName, logStreamName, startTime,
  endTime, nextToken, limit, startFromHead)
}
\arguments{
\item{logGroupName}{[required] The name of the log group.}

\item{logStreamName}{[required] The name of the log stream.}

\item{startTime}{The start of the time range, expressed as the number of milliseconds
after Jan 1, 1970 00:00:00 UTC. Events with a timestamp equal to this
time or later than this time are included. Events with a timestamp
earlier than this time are not included.}

\item{endTime}{The end of the time range, expressed as the number of milliseconds after
Jan 1, 1970 00:00:00 UTC. Events with a timestamp equal to or later than
this time are not included.}

\item{nextToken}{The token for the next set of items to return. (You received this token
from a previous call.)

Using this token works only when you specify \code{true} for \code{startFromHead}.}

\item{limit}{The maximum number of log events returned. If you don't specify a value,
the maximum is as many log events as can fit in a response size of 1 MB,
up to 10,000 log events.}

\item{startFromHead}{If the value is true, the earliest log events are returned first. If the
value is false, the latest log events are returned first. The default
value is false.

If you are using \code{nextToken} in this operation, you must specify \code{true}
for \code{startFromHead}.}
}
\value{
A list with the following syntax:\preformatted{list(
  events = list(
    list(
      timestamp = 123,
      message = "string",
      ingestionTime = 123
    )
  ),
  nextForwardToken = "string",
  nextBackwardToken = "string"
)
}
}
\description{
Lists log events from the specified log stream. You can list all of the
log events or filter using a time range.

By default, this operation returns as many log events as can fit in a
response size of 1MB (up to 10,000 log events). You can get additional
log events by specifying one of the tokens in a subsequent call. This
operation can return empty results while there are more log events
available through the token.
}
\section{Request syntax}{
\preformatted{svc$get_log_events(
  logGroupName = "string",
  logStreamName = "string",
  startTime = 123,
  endTime = 123,
  nextToken = "string",
  limit = 123,
  startFromHead = TRUE|FALSE
)
}
}

\keyword{internal}
