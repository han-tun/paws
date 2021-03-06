% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ssm_operations.R
\name{ssm_describe_activations}
\alias{ssm_describe_activations}
\title{Describes details about the activation, such as the date and time the
activation was created, its expiration date, the IAM role assigned to
the instances in the activation, and the number of instances registered
by using this activation}
\usage{
ssm_describe_activations(Filters, MaxResults, NextToken)
}
\arguments{
\item{Filters}{A filter to view information about your activations.}

\item{MaxResults}{The maximum number of items to return for this call. The call also
returns a token that you can specify in a subsequent call to get the
next set of results.}

\item{NextToken}{A token to start the list. Use this token to get the next set of
results.}
}
\value{
A list with the following syntax:\preformatted{list(
  ActivationList = list(
    list(
      ActivationId = "string",
      Description = "string",
      DefaultInstanceName = "string",
      IamRole = "string",
      RegistrationLimit = 123,
      RegistrationsCount = 123,
      ExpirationDate = as.POSIXct(
        "2015-01-01"
      ),
      Expired = TRUE|FALSE,
      CreatedDate = as.POSIXct(
        "2015-01-01"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
  ),
  NextToken = "string"
)
}
}
\description{
Describes details about the activation, such as the date and time the
activation was created, its expiration date, the IAM role assigned to
the instances in the activation, and the number of instances registered
by using this activation.
}
\section{Request syntax}{
\preformatted{svc$describe_activations(
  Filters = list(
    list(
      FilterKey = "ActivationIds"|"DefaultInstanceName"|"IamRole",
      FilterValues = list(
        "string"
      )
    )
  ),
  MaxResults = 123,
  NextToken = "string"
)
}
}

\keyword{internal}
