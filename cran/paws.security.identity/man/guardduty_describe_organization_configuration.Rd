% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/guardduty_operations.R
\name{guardduty_describe_organization_configuration}
\alias{guardduty_describe_organization_configuration}
\title{Returns information about the account selected as the delegated
administrator for GuardDuty}
\usage{
guardduty_describe_organization_configuration(DetectorId)
}
\arguments{
\item{DetectorId}{[required] The ID of the detector to retrieve information about the delegated
administrator from.}
}
\value{
A list with the following syntax:\preformatted{list(
  AutoEnable = TRUE|FALSE,
  MemberAccountLimitReached = TRUE|FALSE,
  DataSources = list(
    S3Logs = list(
      AutoEnable = TRUE|FALSE
    )
  )
)
}
}
\description{
Returns information about the account selected as the delegated
administrator for GuardDuty.
}
\section{Request syntax}{
\preformatted{svc$describe_organization_configuration(
  DetectorId = "string"
)
}
}

\keyword{internal}
