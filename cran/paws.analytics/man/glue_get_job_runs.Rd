% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glue_operations.R
\name{glue_get_job_runs}
\alias{glue_get_job_runs}
\title{Retrieves metadata for all runs of a given job definition}
\usage{
glue_get_job_runs(JobName, NextToken, MaxResults)
}
\arguments{
\item{JobName}{[required] The name of the job definition for which to retrieve all job runs.}

\item{NextToken}{A continuation token, if this is a continuation call.}

\item{MaxResults}{The maximum size of the response.}
}
\value{
A list with the following syntax:\preformatted{list(
  JobRuns = list(
    list(
      Id = "string",
      Attempt = 123,
      PreviousRunId = "string",
      TriggerName = "string",
      JobName = "string",
      StartedOn = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedOn = as.POSIXct(
        "2015-01-01"
      ),
      CompletedOn = as.POSIXct(
        "2015-01-01"
      ),
      JobRunState = "STARTING"|"RUNNING"|"STOPPING"|"STOPPED"|"SUCCEEDED"|"FAILED"|"TIMEOUT",
      Arguments = list(
        "string"
      ),
      ErrorMessage = "string",
      PredecessorRuns = list(
        list(
          JobName = "string",
          RunId = "string"
        )
      ),
      AllocatedCapacity = 123,
      ExecutionTime = 123,
      Timeout = 123,
      MaxCapacity = 123.0,
      WorkerType = "Standard"|"G.1X"|"G.2X",
      NumberOfWorkers = 123,
      SecurityConfiguration = "string",
      LogGroupName = "string",
      NotificationProperty = list(
        NotifyDelayAfter = 123
      ),
      GlueVersion = "string"
    )
  ),
  NextToken = "string"
)
}
}
\description{
Retrieves metadata for all runs of a given job definition.
}
\section{Request syntax}{
\preformatted{svc$get_job_runs(
  JobName = "string",
  NextToken = "string",
  MaxResults = 123
)
}
}

\keyword{internal}
