% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/workmail_operations.R
\name{workmail_get_mailbox_details}
\alias{workmail_get_mailbox_details}
\title{Requests a user's mailbox details for a specified organization and user}
\usage{
workmail_get_mailbox_details(OrganizationId, UserId)
}
\arguments{
\item{OrganizationId}{[required] The identifier for the organization that contains the user whose mailbox
details are being requested.}

\item{UserId}{[required] The identifier for the user whose mailbox details are being requested.}
}
\value{
A list with the following syntax:\preformatted{list(
  MailboxQuota = 123,
  MailboxSize = 123.0
)
}
}
\description{
Requests a user's mailbox details for a specified organization and user.
}
\section{Request syntax}{
\preformatted{svc$get_mailbox_details(
  OrganizationId = "string",
  UserId = "string"
)
}
}

\keyword{internal}
