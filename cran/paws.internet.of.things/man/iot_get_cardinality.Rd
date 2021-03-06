% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iot_operations.R
\name{iot_get_cardinality}
\alias{iot_get_cardinality}
\title{Returns the approximate count of unique values that match the query}
\usage{
iot_get_cardinality(indexName, queryString, aggregationField,
  queryVersion)
}
\arguments{
\item{indexName}{The name of the index to search.}

\item{queryString}{[required] The search query.}

\item{aggregationField}{The field to aggregate.}

\item{queryVersion}{The query version.}
}
\value{
A list with the following syntax:\preformatted{list(
  cardinality = 123
)
}
}
\description{
Returns the approximate count of unique values that match the query.
}
\section{Request syntax}{
\preformatted{svc$get_cardinality(
  indexName = "string",
  queryString = "string",
  aggregationField = "string",
  queryVersion = "string"
)
}
}

\keyword{internal}
