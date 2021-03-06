% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chime_operations.R
\name{chime_put_voice_connector_logging_configuration}
\alias{chime_put_voice_connector_logging_configuration}
\title{Adds a logging configuration for the specified Amazon Chime Voice
Connector}
\usage{
chime_put_voice_connector_logging_configuration(VoiceConnectorId,
  LoggingConfiguration)
}
\arguments{
\item{VoiceConnectorId}{[required] The Amazon Chime Voice Connector ID.}

\item{LoggingConfiguration}{[required] The logging configuration details to add.}
}
\value{
A list with the following syntax:\preformatted{list(
  LoggingConfiguration = list(
    EnableSIPLogs = TRUE|FALSE
  )
)
}
}
\description{
Adds a logging configuration for the specified Amazon Chime Voice
Connector. The logging configuration specifies whether SIP message logs
are enabled for sending to Amazon CloudWatch Logs.
}
\section{Request syntax}{
\preformatted{svc$put_voice_connector_logging_configuration(
  VoiceConnectorId = "string",
  LoggingConfiguration = list(
    EnableSIPLogs = TRUE|FALSE
  )
)
}
}

\keyword{internal}
