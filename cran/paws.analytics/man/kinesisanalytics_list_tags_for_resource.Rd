% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kinesisanalytics_operations.R
\name{kinesisanalytics_list_tags_for_resource}
\alias{kinesisanalytics_list_tags_for_resource}
\title{Retrieves the list of key-value tags assigned to the application}
\usage{
kinesisanalytics_list_tags_for_resource(ResourceARN)
}
\arguments{
\item{ResourceARN}{[required] The ARN of the application for which to retrieve tags.}
}
\value{
A list with the following syntax:\preformatted{list(
  Tags = list(
    list(
      Key = "string",
      Value = "string"
    )
  )
)
}
}
\description{
Retrieves the list of key-value tags assigned to the application. For
more information, see \href{https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-tagging.html}{Using Tagging}.
}
\section{Request syntax}{
\preformatted{svc$list_tags_for_resource(
  ResourceARN = "string"
)
}
}

\keyword{internal}
