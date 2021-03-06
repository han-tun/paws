% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/securityhub_operations.R
\name{securityhub_batch_enable_standards}
\alias{securityhub_batch_enable_standards}
\title{Enables the standards specified by the provided StandardsArn}
\usage{
securityhub_batch_enable_standards(StandardsSubscriptionRequests)
}
\arguments{
\item{StandardsSubscriptionRequests}{[required] The list of standards checks to enable.}
}
\value{
A list with the following syntax:\preformatted{list(
  StandardsSubscriptions = list(
    list(
      StandardsSubscriptionArn = "string",
      StandardsArn = "string",
      StandardsInput = list(
        "string"
      ),
      StandardsStatus = "PENDING"|"READY"|"FAILED"|"DELETING"|"INCOMPLETE"
    )
  )
)
}
}
\description{
Enables the standards specified by the provided \code{StandardsArn}. To
obtain the ARN for a standard, use the
\code{\link[=securityhub_describe_standards]{describe_standards}} operation.

For more information, see the \href{https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards.html}{Security Standards}
section of the \emph{AWS Security Hub User Guide}.
}
\section{Request syntax}{
\preformatted{svc$batch_enable_standards(
  StandardsSubscriptionRequests = list(
    list(
      StandardsArn = "string",
      StandardsInput = list(
        "string"
      )
    )
  )
)
}
}

\keyword{internal}
