% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mturk_operations.R
\name{mturk_reject_qualification_request}
\alias{mturk_reject_qualification_request}
\title{The RejectQualificationRequest operation rejects a user's request for a
Qualification}
\usage{
mturk_reject_qualification_request(QualificationRequestId, Reason)
}
\arguments{
\item{QualificationRequestId}{[required] The ID of the Qualification request, as returned by the
\code{\link[=mturk_list_qualification_requests]{list_qualification_requests}}
operation.}

\item{Reason}{A text message explaining why the request was rejected, to be shown to
the Worker who made the request.}
}
\value{
An empty list.
}
\description{
The \code{\link[=mturk_reject_qualification_request]{reject_qualification_request}}
operation rejects a user's request for a Qualification.

You can provide a text message explaining why the request was rejected.
The Worker who made the request can see this message.
}
\section{Request syntax}{
\preformatted{svc$reject_qualification_request(
  QualificationRequestId = "string",
  Reason = "string"
)
}
}

\keyword{internal}
