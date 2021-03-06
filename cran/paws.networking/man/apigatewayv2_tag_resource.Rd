% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/apigatewayv2_operations.R
\name{apigatewayv2_tag_resource}
\alias{apigatewayv2_tag_resource}
\title{Creates a new Tag resource to represent a tag}
\usage{
apigatewayv2_tag_resource(ResourceArn, Tags)
}
\arguments{
\item{ResourceArn}{[required] The resource ARN for the tag.}

\item{Tags}{The collection of tags. Each tag element is associated with a given
resource.}
}
\value{
An empty list.
}
\description{
Creates a new Tag resource to represent a tag.
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
