% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/codebuild_operations.R
\name{codebuild_batch_delete_builds}
\alias{codebuild_batch_delete_builds}
\title{Deletes one or more builds}
\usage{
codebuild_batch_delete_builds(ids)
}
\arguments{
\item{ids}{[required] The IDs of the builds to delete.}
}
\value{
A list with the following syntax:\preformatted{list(
  buildsDeleted = list(
    "string"
  ),
  buildsNotDeleted = list(
    list(
      id = "string",
      statusCode = "string"
    )
  )
)
}
}
\description{
Deletes one or more builds.
}
\section{Request syntax}{
\preformatted{svc$batch_delete_builds(
  ids = list(
    "string"
  )
)
}
}

\keyword{internal}
