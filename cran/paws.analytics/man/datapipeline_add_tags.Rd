% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/datapipeline_operations.R
\name{datapipeline_add_tags}
\alias{datapipeline_add_tags}
\title{Adds or modifies tags for the specified pipeline}
\usage{
datapipeline_add_tags(pipelineId, tags)
}
\arguments{
\item{pipelineId}{[required] The ID of the pipeline.}

\item{tags}{[required] The tags to add, as key/value pairs.}
}
\value{
An empty list.
}
\description{
Adds or modifies tags for the specified pipeline.
}
\section{Request syntax}{
\preformatted{svc$add_tags(
  pipelineId = "string",
  tags = list(
    list(
      key = "string",
      value = "string"
    )
  )
)
}
}

\keyword{internal}
