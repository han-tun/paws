% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/configservice_operations.R
\name{configservice_delete_configuration_recorder}
\alias{configservice_delete_configuration_recorder}
\title{Deletes the configuration recorder}
\usage{
configservice_delete_configuration_recorder(ConfigurationRecorderName)
}
\arguments{
\item{ConfigurationRecorderName}{[required] The name of the configuration recorder to be deleted. You can retrieve
the name of your configuration recorder by using the
\code{\link[=configservice_describe_configuration_recorders]{describe_configuration_recorders}}
action.}
}
\value{
An empty list.
}
\description{
Deletes the configuration recorder.

After the configuration recorder is deleted, AWS Config will not record
resource configuration changes until you create a new configuration
recorder.

This action does not delete the configuration information that was
previously recorded. You will be able to access the previously recorded
information by using the
\code{\link[=configservice_get_resource_config_history]{get_resource_config_history}}
action, but you will not be able to access this information in the AWS
Config console until you create a new configuration recorder.
}
\section{Request syntax}{
\preformatted{svc$delete_configuration_recorder(
  ConfigurationRecorderName = "string"
)
}
}

\keyword{internal}
