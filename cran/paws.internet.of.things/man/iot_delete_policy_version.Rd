% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iot_operations.R
\name{iot_delete_policy_version}
\alias{iot_delete_policy_version}
\title{Deletes the specified version of the specified policy}
\usage{
iot_delete_policy_version(policyName, policyVersionId)
}
\arguments{
\item{policyName}{[required] The name of the policy.}

\item{policyVersionId}{[required] The policy version ID.}
}
\value{
An empty list.
}
\description{
Deletes the specified version of the specified policy. You cannot delete
the default version of a policy using this API. To delete the default
version of a policy, use \code{\link[=iot_delete_policy]{delete_policy}}. To find
out which version of a policy is marked as the default version, use
ListPolicyVersions.
}
\section{Request syntax}{
\preformatted{svc$delete_policy_version(
  policyName = "string",
  policyVersionId = "string"
)
}
}

\keyword{internal}
