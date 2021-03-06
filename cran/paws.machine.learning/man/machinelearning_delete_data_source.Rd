% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/machinelearning_operations.R
\name{machinelearning_delete_data_source}
\alias{machinelearning_delete_data_source}
\title{Assigns the DELETED status to a DataSource, rendering it unusable}
\usage{
machinelearning_delete_data_source(DataSourceId)
}
\arguments{
\item{DataSourceId}{[required] A user-supplied ID that uniquely identifies the \code{DataSource}.}
}
\value{
A list with the following syntax:\preformatted{list(
  DataSourceId = "string"
)
}
}
\description{
Assigns the DELETED status to a \code{DataSource}, rendering it unusable.

After using the
\code{\link[=machinelearning_delete_data_source]{delete_data_source}} operation,
you can use the \code{\link[=machinelearning_get_data_source]{get_data_source}}
operation to verify that the status of the \code{DataSource} changed to
DELETED.

\strong{Caution:} The results of the
\code{\link[=machinelearning_delete_data_source]{delete_data_source}} operation are
irreversible.
}
\section{Request syntax}{
\preformatted{svc$delete_data_source(
  DataSourceId = "string"
)
}
}

\keyword{internal}
