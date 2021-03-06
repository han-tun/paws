% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/workspaces_operations.R
\name{workspaces_delete_ip_group}
\alias{workspaces_delete_ip_group}
\title{Deletes the specified IP access control group}
\usage{
workspaces_delete_ip_group(GroupId)
}
\arguments{
\item{GroupId}{[required] The identifier of the IP access control group.}
}
\value{
An empty list.
}
\description{
Deletes the specified IP access control group.

You cannot delete an IP access control group that is associated with a
directory.
}
\section{Request syntax}{
\preformatted{svc$delete_ip_group(
  GroupId = "string"
)
}
}

\keyword{internal}
