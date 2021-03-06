% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/opsworks_operations.R
\name{opsworks_tag_resource}
\alias{opsworks_tag_resource}
\title{Apply cost-allocation tags to a specified stack or layer in AWS OpsWorks
Stacks}
\usage{
opsworks_tag_resource(ResourceArn, Tags)
}
\arguments{
\item{ResourceArn}{[required] The stack or layer's Amazon Resource Number (ARN).}

\item{Tags}{[required] A map that contains tag keys and tag values that are attached to a stack
or layer.
\itemize{
\item The key cannot be empty.
\item The key can be a maximum of 127 characters, and can contain only
Unicode letters, numbers, or separators, or the following special
characters: \verb{+ - = . _ : /}
\item The value can be a maximum 255 characters, and contain only Unicode
letters, numbers, or separators, or the following special
characters: \verb{+ - = . _ : /}
\item Leading and trailing white spaces are trimmed from both the key and
value.
\item A maximum of 40 tags is allowed for any resource.
}}
}
\value{
An empty list.
}
\description{
Apply cost-allocation tags to a specified stack or layer in AWS OpsWorks
Stacks. For more information about how tagging works, see
\href{https://docs.aws.amazon.com/opsworks/latest/userguide/tagging.html}{Tags}
in the AWS OpsWorks User Guide.
}
\section{Request syntax}{
\preformatted{svc$tag_resource(
  ResourceArn = "string",
  Tags = list(
    "string"
  )
)
}
}

\keyword{internal}
