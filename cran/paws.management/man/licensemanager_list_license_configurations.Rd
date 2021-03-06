% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/licensemanager_operations.R
\name{licensemanager_list_license_configurations}
\alias{licensemanager_list_license_configurations}
\title{Lists the license configurations for your account}
\usage{
licensemanager_list_license_configurations(LicenseConfigurationArns,
  MaxResults, NextToken, Filters)
}
\arguments{
\item{LicenseConfigurationArns}{Amazon Resource Names (ARN) of the license configurations.}

\item{MaxResults}{Maximum number of results to return in a single call.}

\item{NextToken}{Token for the next set of results.}

\item{Filters}{Filters to scope the results. The following filters and logical
operators are supported:
\itemize{
\item \code{licenseCountingType} - The dimension on which licenses are counted.
Possible values are \code{vCPU} | \code{Instance} | \code{Core} | \code{Socket}. Logical
operators are \code{EQUALS} | \code{NOT_EQUALS}.
\item \code{enforceLicenseCount} - A Boolean value that indicates whether hard
license enforcement is used. Logical operators are \code{EQUALS} |
\code{NOT_EQUALS}.
\item \code{usagelimitExceeded} - A Boolean value that indicates whether the
available licenses have been exceeded. Logical operators are
\code{EQUALS} | \code{NOT_EQUALS}.
}}
}
\value{
A list with the following syntax:\preformatted{list(
  LicenseConfigurations = list(
    list(
      LicenseConfigurationId = "string",
      LicenseConfigurationArn = "string",
      Name = "string",
      Description = "string",
      LicenseCountingType = "vCPU"|"Instance"|"Core"|"Socket",
      LicenseRules = list(
        "string"
      ),
      LicenseCount = 123,
      LicenseCountHardLimit = TRUE|FALSE,
      DisassociateWhenNotFound = TRUE|FALSE,
      ConsumedLicenses = 123,
      Status = "string",
      OwnerAccountId = "string",
      ConsumedLicenseSummaryList = list(
        list(
          ResourceType = "EC2_INSTANCE"|"EC2_HOST"|"EC2_AMI"|"RDS"|"SYSTEMS_MANAGER_MANAGED_INSTANCE",
          ConsumedLicenses = 123
        )
      ),
      ManagedResourceSummaryList = list(
        list(
          ResourceType = "EC2_INSTANCE"|"EC2_HOST"|"EC2_AMI"|"RDS"|"SYSTEMS_MANAGER_MANAGED_INSTANCE",
          AssociationCount = 123
        )
      ),
      ProductInformationList = list(
        list(
          ResourceType = "string",
          ProductInformationFilterList = list(
            list(
              ProductInformationFilterName = "string",
              ProductInformationFilterValue = list(
                "string"
              ),
              ProductInformationFilterComparator = "string"
            )
          )
        )
      ),
      AutomatedDiscoveryInformation = list(
        LastRunTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )
  ),
  NextToken = "string"
)
}
}
\description{
Lists the license configurations for your account.
}
\section{Request syntax}{
\preformatted{svc$list_license_configurations(
  LicenseConfigurationArns = list(
    "string"
  ),
  MaxResults = 123,
  NextToken = "string",
  Filters = list(
    list(
      Name = "string",
      Values = list(
        "string"
      )
    )
  )
)
}
}

\keyword{internal}
