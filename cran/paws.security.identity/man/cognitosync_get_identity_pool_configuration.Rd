% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cognitosync_operations.R
\name{cognitosync_get_identity_pool_configuration}
\alias{cognitosync_get_identity_pool_configuration}
\title{Gets the configuration settings of an identity pool}
\usage{
cognitosync_get_identity_pool_configuration(IdentityPoolId)
}
\arguments{
\item{IdentityPoolId}{[required] A name-spaced GUID (for example,
us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
Cognito. This is the ID of the pool for which to return a configuration.}
}
\value{
A list with the following syntax:\preformatted{list(
  IdentityPoolId = "string",
  PushSync = list(
    ApplicationArns = list(
      "string"
    ),
    RoleArn = "string"
  ),
  CognitoStreams = list(
    StreamName = "string",
    RoleArn = "string",
    StreamingStatus = "ENABLED"|"DISABLED"
  )
)
}
}
\description{
Gets the configuration settings of an identity pool.

This API can only be called with developer credentials. You cannot call
this API with the temporary user credentials provided by Cognito
Identity.
}
\section{Request syntax}{
\preformatted{svc$get_identity_pool_configuration(
  IdentityPoolId = "string"
)
}
}

\keyword{internal}
