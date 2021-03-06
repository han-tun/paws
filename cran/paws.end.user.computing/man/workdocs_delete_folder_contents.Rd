% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/workdocs_operations.R
\name{workdocs_delete_folder_contents}
\alias{workdocs_delete_folder_contents}
\title{Deletes the contents of the specified folder}
\usage{
workdocs_delete_folder_contents(AuthenticationToken, FolderId)
}
\arguments{
\item{AuthenticationToken}{Amazon WorkDocs authentication token. Not required when using AWS
administrator credentials to access the API.}

\item{FolderId}{[required] The ID of the folder.}
}
\value{
An empty list.
}
\description{
Deletes the contents of the specified folder.
}
\section{Request syntax}{
\preformatted{svc$delete_folder_contents(
  AuthenticationToken = "string",
  FolderId = "string"
)
}
}

\keyword{internal}
