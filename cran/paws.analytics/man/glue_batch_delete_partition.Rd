% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glue_operations.R
\name{glue_batch_delete_partition}
\alias{glue_batch_delete_partition}
\title{Deletes one or more partitions in a batch operation}
\usage{
glue_batch_delete_partition(CatalogId, DatabaseName, TableName,
  PartitionsToDelete)
}
\arguments{
\item{CatalogId}{The ID of the Data Catalog where the partition to be deleted resides. If
none is provided, the AWS account ID is used by default.}

\item{DatabaseName}{[required] The name of the catalog database in which the table in question resides.}

\item{TableName}{[required] The name of the table that contains the partitions to be deleted.}

\item{PartitionsToDelete}{[required] A list of \code{PartitionInput} structures that define the partitions to be
deleted.}
}
\value{
A list with the following syntax:\preformatted{list(
  Errors = list(
    list(
      PartitionValues = list(
        "string"
      ),
      ErrorDetail = list(
        ErrorCode = "string",
        ErrorMessage = "string"
      )
    )
  )
)
}
}
\description{
Deletes one or more partitions in a batch operation.
}
\section{Request syntax}{
\preformatted{svc$batch_delete_partition(
  CatalogId = "string",
  DatabaseName = "string",
  TableName = "string",
  PartitionsToDelete = list(
    list(
      Values = list(
        "string"
      )
    )
  )
)
}
}

\keyword{internal}
