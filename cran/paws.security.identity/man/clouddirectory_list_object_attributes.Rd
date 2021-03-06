% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clouddirectory_operations.R
\name{clouddirectory_list_object_attributes}
\alias{clouddirectory_list_object_attributes}
\title{Lists all attributes that are associated with an object}
\usage{
clouddirectory_list_object_attributes(DirectoryArn, ObjectReference,
  NextToken, MaxResults, ConsistencyLevel, FacetFilter)
}
\arguments{
\item{DirectoryArn}{[required] The Amazon Resource Name (ARN) that is associated with the Directory
where the object resides. For more information, see arns.}

\item{ObjectReference}{[required] The reference that identifies the object whose attributes will be
listed.}

\item{NextToken}{The pagination token.}

\item{MaxResults}{The maximum number of items to be retrieved in a single call. This is an
approximate number.}

\item{ConsistencyLevel}{Represents the manner and timing in which the successful write or update
of an object is reflected in a subsequent read operation of that same
object.}

\item{FacetFilter}{Used to filter the list of object attributes that are associated with a
certain facet.}
}
\value{
A list with the following syntax:\preformatted{list(
  Attributes = list(
    list(
      Key = list(
        SchemaArn = "string",
        FacetName = "string",
        Name = "string"
      ),
      Value = list(
        StringValue = "string",
        BinaryValue = raw,
        BooleanValue = TRUE|FALSE,
        NumberValue = "string",
        DatetimeValue = as.POSIXct(
          "2015-01-01"
        )
      )
    )
  ),
  NextToken = "string"
)
}
}
\description{
Lists all attributes that are associated with an object.
}
\section{Request syntax}{
\preformatted{svc$list_object_attributes(
  DirectoryArn = "string",
  ObjectReference = list(
    Selector = "string"
  ),
  NextToken = "string",
  MaxResults = 123,
  ConsistencyLevel = "SERIALIZABLE"|"EVENTUAL",
  FacetFilter = list(
    SchemaArn = "string",
    FacetName = "string"
  )
)
}
}

\keyword{internal}
