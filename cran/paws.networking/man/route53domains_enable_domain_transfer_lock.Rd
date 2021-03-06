% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/route53domains_operations.R
\name{route53domains_enable_domain_transfer_lock}
\alias{route53domains_enable_domain_transfer_lock}
\title{This operation sets the transfer lock on the domain (specifically the
clientTransferProhibited status) to prevent domain transfers}
\usage{
route53domains_enable_domain_transfer_lock(DomainName)
}
\arguments{
\item{DomainName}{[required] The name of the domain that you want to set the transfer lock for.}
}
\value{
A list with the following syntax:\preformatted{list(
  OperationId = "string"
)
}
}
\description{
This operation sets the transfer lock on the domain (specifically the
\code{clientTransferProhibited} status) to prevent domain transfers.
Successful submission returns an operation ID that you can use to track
the progress and completion of the action. If the request is not
completed successfully, the domain registrant will be notified by email.
}
\section{Request syntax}{
\preformatted{svc$enable_domain_transfer_lock(
  DomainName = "string"
)
}
}

\keyword{internal}
