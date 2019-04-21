% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glue_operations.R
\name{glue_get_triggers}
\alias{glue_get_triggers}
\title{Gets all the triggers associated with a job}
\usage{
glue_get_triggers(NextToken, DependentJobName, MaxResults)
}
\arguments{
\item{NextToken}{A continuation token, if this is a continuation call.}

\item{DependentJobName}{The name of the job for which to retrieve triggers. The trigger that can
start this job will be returned, and if there is no such trigger, all
triggers will be returned.}

\item{MaxResults}{The maximum size of the response.}
}
\description{
Gets all the triggers associated with a job.
}
\section{Request syntax}{
\preformatted{svc$get_triggers(
  NextToken = "string",
  DependentJobName = "string",
  MaxResults = 123
)
}
}

\keyword{internal}