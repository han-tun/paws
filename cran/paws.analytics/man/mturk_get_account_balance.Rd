% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mturk_operations.R
\name{mturk_get_account_balance}
\alias{mturk_get_account_balance}
\title{The GetAccountBalance operation retrieves the amount of money in your
Amazon Mechanical Turk account}
\usage{
mturk_get_account_balance()
}
\value{
A list with the following syntax:\preformatted{list(
  AvailableBalance = "string",
  OnHoldBalance = "string"
)
}
}
\description{
The \code{\link[=mturk_get_account_balance]{get_account_balance}} operation
retrieves the amount of money in your Amazon Mechanical Turk account.
}
\section{Request syntax}{
\preformatted{svc$get_account_balance()
}
}

\keyword{internal}
