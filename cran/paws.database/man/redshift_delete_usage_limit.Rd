% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/redshift_operations.R
\name{redshift_delete_usage_limit}
\alias{redshift_delete_usage_limit}
\title{Deletes a usage limit from a cluster}
\usage{
redshift_delete_usage_limit(UsageLimitId)
}
\arguments{
\item{UsageLimitId}{[required] The identifier of the usage limit to delete.}
}
\value{
An empty list.
}
\description{
Deletes a usage limit from a cluster.
}
\section{Request syntax}{
\preformatted{svc$delete_usage_limit(
  UsageLimitId = "string"
)
}
}

\keyword{internal}
