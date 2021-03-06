% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lexmodelbuildingservice_operations.R
\name{lexmodelbuildingservice_get_import}
\alias{lexmodelbuildingservice_get_import}
\title{Gets information about an import job started with the StartImport
operation}
\usage{
lexmodelbuildingservice_get_import(importId)
}
\arguments{
\item{importId}{[required] The identifier of the import job information to return.}
}
\value{
A list with the following syntax:\preformatted{list(
  name = "string",
  resourceType = "BOT"|"INTENT"|"SLOT_TYPE",
  mergeStrategy = "OVERWRITE_LATEST"|"FAIL_ON_CONFLICT",
  importId = "string",
  importStatus = "IN_PROGRESS"|"COMPLETE"|"FAILED",
  failureReason = list(
    "string"
  ),
  createdDate = as.POSIXct(
    "2015-01-01"
  )
)
}
}
\description{
Gets information about an import job started with the
\code{\link[=lexmodelbuildingservice_start_import]{start_import}} operation.
}
\section{Request syntax}{
\preformatted{svc$get_import(
  importId = "string"
)
}
}

\keyword{internal}
