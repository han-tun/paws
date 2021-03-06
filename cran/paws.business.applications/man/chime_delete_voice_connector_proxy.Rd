% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chime_operations.R
\name{chime_delete_voice_connector_proxy}
\alias{chime_delete_voice_connector_proxy}
\title{Deletes the proxy configuration from the specified Amazon Chime Voice
Connector}
\usage{
chime_delete_voice_connector_proxy(VoiceConnectorId)
}
\arguments{
\item{VoiceConnectorId}{[required] The Amazon Chime Voice Connector ID.}
}
\value{
An empty list.
}
\description{
Deletes the proxy configuration from the specified Amazon Chime Voice
Connector.
}
\section{Request syntax}{
\preformatted{svc$delete_voice_connector_proxy(
  VoiceConnectorId = "string"
)
}
}

\keyword{internal}
