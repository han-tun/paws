% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chime_operations.R
\name{chime_redact_room_message}
\alias{chime_redact_room_message}
\title{Redacts the specified message from the specified Amazon Chime channel}
\usage{
chime_redact_room_message(AccountId, RoomId, MessageId)
}
\arguments{
\item{AccountId}{[required] The Amazon Chime account ID.}

\item{RoomId}{[required] The room ID.}

\item{MessageId}{[required] The message ID.}
}
\value{
An empty list.
}
\description{
Redacts the specified message from the specified Amazon Chime channel.
}
\section{Request syntax}{
\preformatted{svc$redact_room_message(
  AccountId = "string",
  RoomId = "string",
  MessageId = "string"
)
}
}

\keyword{internal}
