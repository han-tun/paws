% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/apigateway_operations.R
\name{apigateway_get_model}
\alias{apigateway_get_model}
\title{Describes an existing model defined for a RestApi resource}
\usage{
apigateway_get_model(restApiId, modelName, flatten)
}
\arguments{
\item{restApiId}{[required] [Required] The RestApi identifier under which the Model exists.}

\item{modelName}{[required] [Required] The name of the model as an identifier.}

\item{flatten}{A query parameter of a Boolean value to resolve (\code{true}) all external
model references and returns a flattened model schema or not (\code{false})
The default is \code{false}.}
}
\value{
A list with the following syntax:\preformatted{list(
  id = "string",
  name = "string",
  description = "string",
  schema = "string",
  contentType = "string"
)
}
}
\description{
Describes an existing model defined for a RestApi resource.
}
\section{Request syntax}{
\preformatted{svc$get_model(
  restApiId = "string",
  modelName = "string",
  flatten = TRUE|FALSE
)
}
}

\keyword{internal}
