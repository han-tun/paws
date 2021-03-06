% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/directoryservice_operations.R
\name{directoryservice_accept_shared_directory}
\alias{directoryservice_accept_shared_directory}
\title{Accepts a directory sharing request that was sent from the directory
owner account}
\usage{
directoryservice_accept_shared_directory(SharedDirectoryId)
}
\arguments{
\item{SharedDirectoryId}{[required] Identifier of the shared directory in the directory consumer account.
This identifier is different for each directory owner account.}
}
\value{
A list with the following syntax:\preformatted{list(
  SharedDirectory = list(
    OwnerAccountId = "string",
    OwnerDirectoryId = "string",
    ShareMethod = "ORGANIZATIONS"|"HANDSHAKE",
    SharedAccountId = "string",
    SharedDirectoryId = "string",
    ShareStatus = "Shared"|"PendingAcceptance"|"Rejected"|"Rejecting"|"RejectFailed"|"Sharing"|"ShareFailed"|"Deleted"|"Deleting",
    ShareNotes = "string",
    CreatedDateTime = as.POSIXct(
      "2015-01-01"
    ),
    LastUpdatedDateTime = as.POSIXct(
      "2015-01-01"
    )
  )
)
}
}
\description{
Accepts a directory sharing request that was sent from the directory
owner account.
}
\section{Request syntax}{
\preformatted{svc$accept_shared_directory(
  SharedDirectoryId = "string"
)
}
}

\keyword{internal}
