% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/apigateway_operations.R
\name{apigateway_get_integration_response}
\alias{apigateway_get_integration_response}
\title{Represents a get integration response}
\usage{
apigateway_get_integration_response(restApiId, resourceId, httpMethod,
  statusCode)
}
\arguments{
\item{restApiId}{[required] [Required] The string identifier of the associated RestApi.}

\item{resourceId}{[required] [Required] Specifies a get integration response request's resource
identifier.}

\item{httpMethod}{[required] [Required] Specifies a get integration response request's HTTP method.}

\item{statusCode}{[required] [Required] Specifies a get integration response request's status code.}
}
\value{
A list with the following syntax:\preformatted{list(
  statusCode = "string",
  selectionPattern = "string",
  responseParameters = list(
    "string"
  ),
  responseTemplates = list(
    "string"
  ),
  contentHandling = "CONVERT_TO_BINARY"|"CONVERT_TO_TEXT"
)
}
}
\description{
Represents a get integration response.
}
\section{Request syntax}{
\preformatted{svc$get_integration_response(
  restApiId = "string",
  resourceId = "string",
  httpMethod = "string",
  statusCode = "string"
)
}
}

\keyword{internal}
