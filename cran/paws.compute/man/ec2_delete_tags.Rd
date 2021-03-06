% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_delete_tags}
\alias{ec2_delete_tags}
\title{Deletes the specified set of tags from the specified set of resources}
\usage{
ec2_delete_tags(DryRun, Resources, Tags)
}
\arguments{
\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}

\item{Resources}{[required] The IDs of the resources, separated by spaces.

Constraints: Up to 1000 resource IDs. We recommend breaking up this
request into smaller batches.}

\item{Tags}{The tags to delete. Specify a tag key and an optional tag value to
delete specific tags. If you specify a tag key without a tag value, we
delete any tag with this key regardless of its value. If you specify a
tag key with an empty string as the tag value, we delete the tag only if
its value is an empty string.

If you omit this parameter, we delete all user-defined tags for the
specified resources. We do not delete AWS-generated tags (tags that have
the \verb{aws:} prefix).}
}
\value{
An empty list.
}
\description{
Deletes the specified set of tags from the specified set of resources.

To list the current tags, use \code{\link[=ec2_describe_tags]{describe_tags}}. For
more information about tags, see \href{https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html}{Tagging Your Resources}
in the \emph{Amazon Elastic Compute Cloud User Guide}.
}
\section{Request syntax}{
\preformatted{svc$delete_tags(
  DryRun = TRUE|FALSE,
  Resources = list(
    "string"
  ),
  Tags = list(
    list(
      Key = "string",
      Value = "string"
    )
  )
)
}
}

\examples{
\dontrun{
# This example deletes the tag Stack=test from the specified image.
svc$delete_tags(
  Resources = list(
    "ami-78a54011"
  ),
  Tags = list(
    list(
      Key = "Stack",
      Value = "test"
    )
  )
)
}

}
\keyword{internal}
