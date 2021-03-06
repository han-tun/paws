% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/appmesh_operations.R
\name{appmesh_delete_mesh}
\alias{appmesh_delete_mesh}
\title{Deletes an existing service mesh}
\usage{
appmesh_delete_mesh(meshName)
}
\arguments{
\item{meshName}{[required] The name of the service mesh to delete.}
}
\value{
A list with the following syntax:\preformatted{list(
  mesh = list(
    meshName = "string",
    metadata = list(
      arn = "string",
      createdAt = as.POSIXct(
        "2015-01-01"
      ),
      lastUpdatedAt = as.POSIXct(
        "2015-01-01"
      ),
      meshOwner = "string",
      resourceOwner = "string",
      uid = "string",
      version = 123
    ),
    spec = list(
      egressFilter = list(
        type = "ALLOW_ALL"|"DROP_ALL"
      )
    ),
    status = list(
      status = "ACTIVE"|"INACTIVE"|"DELETED"
    )
  )
)
}
}
\description{
Deletes an existing service mesh.

You must delete all resources (virtual services, routes, virtual
routers, and virtual nodes) in the service mesh before you can delete
the mesh itself.
}
\section{Request syntax}{
\preformatted{svc$delete_mesh(
  meshName = "string"
)
}
}

\keyword{internal}
