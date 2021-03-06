% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glue_operations.R
\name{glue_get_resource_policies}
\alias{glue_get_resource_policies}
\title{Retrieves the security configurations for the resource policies set on
individual resources, and also the account-level policy}
\usage{
glue_get_resource_policies(NextToken, MaxResults)
}
\arguments{
\item{NextToken}{A continuation token, if this is a continuation request.}

\item{MaxResults}{The maximum size of a list to return.}
}
\value{
A list with the following syntax:\preformatted{list(
  GetResourcePoliciesResponseList = list(
    list(
      PolicyInJson = "string",
      PolicyHash = "string",
      CreateTime = as.POSIXct(
        "2015-01-01"
      ),
      UpdateTime = as.POSIXct(
        "2015-01-01"
      )
    )
  ),
  NextToken = "string"
)
}
}
\description{
Retrieves the security configurations for the resource policies set on
individual resources, and also the account-level policy.

This operation also returns the Data Catalog resource policy. However,
if you enabled metadata encryption in Data Catalog settings, and you do
not have permission on the AWS KMS key, the operation can't return the
Data Catalog resource policy.
}
\section{Request syntax}{
\preformatted{svc$get_resource_policies(
  NextToken = "string",
  MaxResults = 123
)
}
}

\keyword{internal}
