% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/apigateway_operations.R
\name{apigateway_get_usage_plans}
\alias{apigateway_get_usage_plans}
\title{Gets all the usage plans of the caller's account}
\usage{
apigateway_get_usage_plans(position, keyId, limit)
}
\arguments{
\item{position}{The current pagination position in the paged result set.}

\item{keyId}{The identifier of the API key associated with the usage plans.}

\item{limit}{The maximum number of returned results per page. The default value is 25
and the maximum value is 500.}
}
\description{
Gets all the usage plans of the caller's account.
}
\section{Request syntax}{
\preformatted{svc$get_usage_plans(
  position = "string",
  keyId = "string",
  limit = 123
)
}
}

\keyword{internal}