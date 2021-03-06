% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/devicefarm_operations.R
\name{devicefarm_get_instance_profile}
\alias{devicefarm_get_instance_profile}
\title{Returns information about the specified instance profile}
\usage{
devicefarm_get_instance_profile(arn)
}
\arguments{
\item{arn}{[required] The Amazon Resource Name (ARN) of an instance profile.}
}
\value{
A list with the following syntax:\preformatted{list(
  instanceProfile = list(
    arn = "string",
    packageCleanup = TRUE|FALSE,
    excludeAppPackagesFromCleanup = list(
      "string"
    ),
    rebootAfterUse = TRUE|FALSE,
    name = "string",
    description = "string"
  )
)
}
}
\description{
Returns information about the specified instance profile.
}
\section{Request syntax}{
\preformatted{svc$get_instance_profile(
  arn = "string"
)
}
}

\keyword{internal}
