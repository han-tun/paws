% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/databasemigrationservice_operations.R
\name{databasemigrationservice_reload_tables}
\alias{databasemigrationservice_reload_tables}
\title{Reloads the target database table with the source data}
\usage{
databasemigrationservice_reload_tables(ReplicationTaskArn,
  TablesToReload, ReloadOption)
}
\arguments{
\item{ReplicationTaskArn}{[required] The Amazon Resource Name (ARN) of the replication task.}

\item{TablesToReload}{[required] The name and schema of the table to be reloaded.}

\item{ReloadOption}{Options for reload. Specify \code{data-reload} to reload the data and
re-validate it if validation is enabled. Specify \code{validate-only} to
re-validate the table. This option applies only when validation is
enabled for the task.

Valid values: data-reload, validate-only

Default value is data-reload.}
}
\value{
A list with the following syntax:\preformatted{list(
  ReplicationTaskArn = "string"
)
}
}
\description{
Reloads the target database table with the source data.
}
\section{Request syntax}{
\preformatted{svc$reload_tables(
  ReplicationTaskArn = "string",
  TablesToReload = list(
    list(
      SchemaName = "string",
      TableName = "string"
    )
  ),
  ReloadOption = "data-reload"|"validate-only"
)
}
}

\keyword{internal}
