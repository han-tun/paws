% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/emr_operations.R
\name{emr_describe_notebook_execution}
\alias{emr_describe_notebook_execution}
\title{Provides details of a notebook execution}
\usage{
emr_describe_notebook_execution(NotebookExecutionId)
}
\arguments{
\item{NotebookExecutionId}{[required] The unique identifier of the notebook execution.}
}
\value{
A list with the following syntax:\preformatted{list(
  NotebookExecution = list(
    NotebookExecutionId = "string",
    EditorId = "string",
    ExecutionEngine = list(
      Id = "string",
      Type = "EMR",
      MasterInstanceSecurityGroupId = "string"
    ),
    NotebookExecutionName = "string",
    NotebookParams = "string",
    Status = "START_PENDING"|"STARTING"|"RUNNING"|"FINISHING"|"FINISHED"|"FAILING"|"FAILED"|"STOP_PENDING"|"STOPPING"|"STOPPED",
    StartTime = as.POSIXct(
      "2015-01-01"
    ),
    EndTime = as.POSIXct(
      "2015-01-01"
    ),
    Arn = "string",
    OutputNotebookURI = "string",
    LastStateChangeReason = "string",
    NotebookInstanceSecurityGroupId = "string",
    Tags = list(
      list(
        Key = "string",
        Value = "string"
      )
    )
  )
)
}
}
\description{
Provides details of a notebook execution.
}
\section{Request syntax}{
\preformatted{svc$describe_notebook_execution(
  NotebookExecutionId = "string"
)
}
}

\keyword{internal}
