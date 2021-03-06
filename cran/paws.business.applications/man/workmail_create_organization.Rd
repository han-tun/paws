% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/workmail_operations.R
\name{workmail_create_organization}
\alias{workmail_create_organization}
\title{Creates a new Amazon WorkMail organization}
\usage{
workmail_create_organization(DirectoryId, Alias, ClientToken, Domains,
  KmsKeyArn, EnableInteroperability)
}
\arguments{
\item{DirectoryId}{The AWS Directory Service directory ID.}

\item{Alias}{[required] The organization alias.}

\item{ClientToken}{The idempotency token associated with the request.}

\item{Domains}{The email domains to associate with the organization.}

\item{KmsKeyArn}{The Amazon Resource Name (ARN) of a customer managed master key from AWS
KMS.}

\item{EnableInteroperability}{When \code{true}, allows organization interoperability between Amazon
WorkMail and Microsoft Exchange. Can only be set to \code{true} if an AD
Connector directory ID is included in the request.}
}
\value{
A list with the following syntax:\preformatted{list(
  OrganizationId = "string"
)
}
}
\description{
Creates a new Amazon WorkMail organization. Optionally, you can choose
to associate an existing AWS Directory Service directory with your
organization. If an AWS Directory Service directory ID is specified, the
organization alias must match the directory alias. If you choose not to
associate an existing directory with your organization, then we create a
new Amazon WorkMail directory for you. For more information, see \href{https://docs.aws.amazon.com/workmail/latest/adminguide/add_new_organization.html}{Adding an organization}
in the \emph{Amazon WorkMail Administrator Guide}.

You can associate multiple email domains with an organization, then set
your default email domain from the Amazon WorkMail console. You can also
associate a domain that is managed in an Amazon Route 53 public hosted
zone. For more information, see \href{https://docs.aws.amazon.com/workmail/latest/adminguide/add_domain.html}{Adding a domain}
and \href{https://docs.aws.amazon.com/workmail/latest/adminguide/default_domain.html}{Choosing the default domain}
in the \emph{Amazon WorkMail Administrator Guide}.

Optionally, you can use a customer managed master key from AWS Key
Management Service (AWS KMS) to encrypt email for your organization. If
you don't associate an AWS KMS key, Amazon WorkMail creates a default
AWS managed master key for you.
}
\section{Request syntax}{
\preformatted{svc$create_organization(
  DirectoryId = "string",
  Alias = "string",
  ClientToken = "string",
  Domains = list(
    list(
      DomainName = "string",
      HostedZoneId = "string"
    )
  ),
  KmsKeyArn = "string",
  EnableInteroperability = TRUE|FALSE
)
}
}

\keyword{internal}
