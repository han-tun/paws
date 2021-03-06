% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/route53domains_operations.R
\name{route53domains_cancel_domain_transfer_to_another_aws_account}
\alias{route53domains_cancel_domain_transfer_to_another_aws_account}
\title{Cancels the transfer of a domain from the current AWS account to another
AWS account}
\usage{
route53domains_cancel_domain_transfer_to_another_aws_account(DomainName)
}
\arguments{
\item{DomainName}{[required] The name of the domain for which you want to cancel the transfer to
another AWS account.}
}
\value{
A list with the following syntax:\preformatted{list(
  OperationId = "string"
)
}
}
\description{
Cancels the transfer of a domain from the current AWS account to another
AWS account. You initiate a transfer between AWS accounts using
\code{\link[=route53domains_transfer_domain_to_another_aws_account]{transfer_domain_to_another_aws_account}}.

You must cancel the transfer before the other AWS account accepts the
transfer using
\code{\link[=route53domains_accept_domain_transfer_from_another_aws_account]{accept_domain_transfer_from_another_aws_account}}.

Use either \code{\link[=route53domains_list_operations]{list_operations}} or
\code{\link[=route53domains_get_operation_detail]{get_operation_detail}} to
determine whether the operation succeeded.
\code{\link[=route53domains_get_operation_detail]{get_operation_detail}} provides
additional information, for example,
\verb{Domain Transfer from Aws Account 111122223333 has been cancelled}.
}
\section{Request syntax}{
\preformatted{svc$cancel_domain_transfer_to_another_aws_account(
  DomainName = "string"
)
}
}

\keyword{internal}
