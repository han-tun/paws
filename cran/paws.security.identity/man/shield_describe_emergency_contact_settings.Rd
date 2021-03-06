% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/shield_operations.R
\name{shield_describe_emergency_contact_settings}
\alias{shield_describe_emergency_contact_settings}
\title{A list of email addresses and phone numbers that the DDoS Response Team
(DRT) can use to contact you if you have proactive engagement enabled,
for escalations to the DRT and to initiate proactive customer support}
\usage{
shield_describe_emergency_contact_settings()
}
\value{
A list with the following syntax:\preformatted{list(
  EmergencyContactList = list(
    list(
      EmailAddress = "string",
      PhoneNumber = "string",
      ContactNotes = "string"
    )
  )
)
}
}
\description{
A list of email addresses and phone numbers that the DDoS Response Team
(DRT) can use to contact you if you have proactive engagement enabled,
for escalations to the DRT and to initiate proactive customer support.
}
\section{Request syntax}{
\preformatted{svc$describe_emergency_contact_settings()
}
}

\keyword{internal}
