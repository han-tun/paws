% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/apigateway_operations.R
\name{apigateway_get_documentation_versions}
\alias{apigateway_get_documentation_versions}
\title{Get documentation versions}
\usage{
apigateway_get_documentation_versions(restApiId, position, limit)
}
\arguments{
\item{restApiId}{[required] [Required] The string identifier of the associated RestApi.}

\item{position}{The current pagination position in the paged result set.}

\item{limit}{The maximum number of returned results per page. The default value is 25
and the maximum value is 500.}
}
\value{
A list with the following syntax:\preformatted{list(
  position = "string",
  items = list(
    list(
      version = "string",
      createdDate = as.POSIXct(
        "2015-01-01"
      ),
      description = "string"
    )
  )
)
}
}
\description{
Get documentation versions
}
\section{Request syntax}{
\preformatted{svc$get_documentation_versions(
  restApiId = "string",
  position = "string",
  limit = 123
)
}
}

\keyword{internal}
