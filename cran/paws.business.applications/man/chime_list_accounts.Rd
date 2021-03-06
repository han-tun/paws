% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chime_operations.R
\name{chime_list_accounts}
\alias{chime_list_accounts}
\title{Lists the Amazon Chime accounts under the administrator's AWS account}
\usage{
chime_list_accounts(Name, UserEmail, NextToken, MaxResults)
}
\arguments{
\item{Name}{Amazon Chime account name prefix with which to filter results.}

\item{UserEmail}{User email address with which to filter results.}

\item{NextToken}{The token to use to retrieve the next page of results.}

\item{MaxResults}{The maximum number of results to return in a single call. Defaults to
100.}
}
\value{
A list with the following syntax:\preformatted{list(
  Accounts = list(
    list(
      AwsAccountId = "string",
      AccountId = "string",
      Name = "string",
      AccountType = "Team"|"EnterpriseDirectory"|"EnterpriseLWA"|"EnterpriseOIDC",
      CreatedTimestamp = as.POSIXct(
        "2015-01-01"
      ),
      DefaultLicense = "Basic"|"Plus"|"Pro"|"ProTrial",
      SupportedLicenses = list(
        "Basic"|"Plus"|"Pro"|"ProTrial"
      ),
      SigninDelegateGroups = list(
        list(
          GroupName = "string"
        )
      )
    )
  ),
  NextToken = "string"
)
}
}
\description{
Lists the Amazon Chime accounts under the administrator's AWS account.
You can filter accounts by account name prefix. To find out which Amazon
Chime account a user belongs to, you can filter by the user's email
address, which returns one account result.
}
\section{Request syntax}{
\preformatted{svc$list_accounts(
  Name = "string",
  UserEmail = "string",
  NextToken = "string",
  MaxResults = 123
)
}
}

\keyword{internal}
