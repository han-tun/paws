% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iot_operations.R
\name{iot_delete_custom_metric}
\alias{iot_delete_custom_metric}
\title{Before you can delete a custom metric, you must first remove the custom
metric from all security profiles it's a part of}
\usage{
iot_delete_custom_metric(metricName)
}
\arguments{
\item{metricName}{[required] The name of the custom metric.}
}
\value{
An empty list.
}
\description{
Before you can delete a custom metric, you must first remove the custom
metric from all security profiles it's a part of. The security profile
associated with the custom metric can be found using the
\code{\link[=iot_list_security_profiles]{list_security_profiles}} API with
\code{metricName} set to your custom metric name.

Deletes a Device Defender detect custom metric.
}
\section{Request syntax}{
\preformatted{svc$delete_custom_metric(
  metricName = "string"
)
}
}

\keyword{internal}
