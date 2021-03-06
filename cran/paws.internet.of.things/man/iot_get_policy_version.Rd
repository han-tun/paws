% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iot_operations.R
\name{iot_get_policy_version}
\alias{iot_get_policy_version}
\title{Gets information about the specified policy version}
\usage{
iot_get_policy_version(policyName, policyVersionId)
}
\arguments{
\item{policyName}{[required] The name of the policy.}

\item{policyVersionId}{[required] The policy version ID.}
}
\value{
A list with the following syntax:\preformatted{list(
  policyArn = "string",
  policyName = "string",
  policyDocument = "string",
  policyVersionId = "string",
  isDefaultVersion = TRUE|FALSE,
  creationDate = as.POSIXct(
    "2015-01-01"
  ),
  lastModifiedDate = as.POSIXct(
    "2015-01-01"
  ),
  generationId = "string"
)
}
}
\description{
Gets information about the specified policy version.
}
\section{Request syntax}{
\preformatted{svc$get_policy_version(
  policyName = "string",
  policyVersionId = "string"
)
}
}

\keyword{internal}
