% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glue_operations.R
\name{glue_get_schema_version}
\alias{glue_get_schema_version}
\title{Get the specified schema by its unique ID assigned when a version of the
schema is created or registered}
\usage{
glue_get_schema_version(SchemaId, SchemaVersionId, SchemaVersionNumber)
}
\arguments{
\item{SchemaId}{This is a wrapper structure to contain schema identity fields. The
structure contains:
\itemize{
\item SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema.
Either \code{SchemaArn} or \code{SchemaName} and \code{RegistryName} has to be
provided.
\item SchemaId$SchemaName: The name of the schema. Either \code{SchemaArn} or
\code{SchemaName} and \code{RegistryName} has to be provided.
}}

\item{SchemaVersionId}{The \code{SchemaVersionId} of the schema version. This field is required for
fetching by schema ID. Either this or the \code{SchemaId} wrapper has to be
provided.}

\item{SchemaVersionNumber}{The version number of the schema.}
}
\value{
A list with the following syntax:\preformatted{list(
  SchemaVersionId = "string",
  SchemaDefinition = "string",
  DataFormat = "AVRO",
  SchemaArn = "string",
  VersionNumber = 123,
  Status = "AVAILABLE"|"PENDING"|"FAILURE"|"DELETING",
  CreatedTime = "string"
)
}
}
\description{
Get the specified schema by its unique ID assigned when a version of the
schema is created or registered. Schema versions in Deleted status will
not be included in the results.
}
\section{Request syntax}{
\preformatted{svc$get_schema_version(
  SchemaId = list(
    SchemaArn = "string",
    SchemaName = "string",
    RegistryName = "string"
  ),
  SchemaVersionId = "string",
  SchemaVersionNumber = list(
    LatestVersion = TRUE|FALSE,
    VersionNumber = 123
  )
)
}
}

\keyword{internal}
