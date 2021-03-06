% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/amplify_operations.R
\name{amplify_delete_domain_association}
\alias{amplify_delete_domain_association}
\title{Deletes a domain association for an Amplify app}
\usage{
amplify_delete_domain_association(appId, domainName)
}
\arguments{
\item{appId}{[required] The unique id for an Amplify app.}

\item{domainName}{[required] The name of the domain.}
}
\value{
A list with the following syntax:\preformatted{list(
  domainAssociation = list(
    domainAssociationArn = "string",
    domainName = "string",
    enableAutoSubDomain = TRUE|FALSE,
    autoSubDomainCreationPatterns = list(
      "string"
    ),
    autoSubDomainIAMRole = "string",
    domainStatus = "PENDING_VERIFICATION"|"IN_PROGRESS"|"AVAILABLE"|"PENDING_DEPLOYMENT"|"FAILED"|"CREATING"|"REQUESTING_CERTIFICATE"|"UPDATING",
    statusReason = "string",
    certificateVerificationDNSRecord = "string",
    subDomains = list(
      list(
        subDomainSetting = list(
          prefix = "string",
          branchName = "string"
        ),
        verified = TRUE|FALSE,
        dnsRecord = "string"
      )
    )
  )
)
}
}
\description{
Deletes a domain association for an Amplify app.
}
\section{Request syntax}{
\preformatted{svc$delete_domain_association(
  appId = "string",
  domainName = "string"
)
}
}

\keyword{internal}
