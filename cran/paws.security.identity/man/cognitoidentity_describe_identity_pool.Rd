% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cognitoidentity_operations.R
\name{cognitoidentity_describe_identity_pool}
\alias{cognitoidentity_describe_identity_pool}
\title{Gets details about a particular identity pool, including the pool name,
ID description, creation date, and current number of users}
\usage{
cognitoidentity_describe_identity_pool(IdentityPoolId)
}
\arguments{
\item{IdentityPoolId}{[required] An identity pool ID in the format REGION:GUID.}
}
\value{
A list with the following syntax:\preformatted{list(
  IdentityPoolId = "string",
  IdentityPoolName = "string",
  AllowUnauthenticatedIdentities = TRUE|FALSE,
  AllowClassicFlow = TRUE|FALSE,
  SupportedLoginProviders = list(
    "string"
  ),
  DeveloperProviderName = "string",
  OpenIdConnectProviderARNs = list(
    "string"
  ),
  CognitoIdentityProviders = list(
    list(
      ProviderName = "string",
      ClientId = "string",
      ServerSideTokenCheck = TRUE|FALSE
    )
  ),
  SamlProviderARNs = list(
    "string"
  ),
  IdentityPoolTags = list(
    "string"
  )
)
}
}
\description{
Gets details about a particular identity pool, including the pool name,
ID description, creation date, and current number of users.

You must use AWS Developer credentials to call this API.
}
\section{Request syntax}{
\preformatted{svc$describe_identity_pool(
  IdentityPoolId = "string"
)
}
}

\keyword{internal}
