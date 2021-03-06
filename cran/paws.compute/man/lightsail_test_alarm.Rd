% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lightsail_operations.R
\name{lightsail_test_alarm}
\alias{lightsail_test_alarm}
\title{Tests an alarm by displaying a banner on the Amazon Lightsail console}
\usage{
lightsail_test_alarm(alarmName, state)
}
\arguments{
\item{alarmName}{[required] The name of the alarm to test.}

\item{state}{[required] The alarm state to test.

An alarm has the following possible states that can be tested:
\itemize{
\item \code{ALARM} - The metric is outside of the defined threshold.
\item \code{INSUFFICIENT_DATA} - The alarm has just started, the metric is not
available, or not enough data is available for the metric to
determine the alarm state.
\item \code{OK} - The metric is within the defined threshold.
}}
}
\value{
A list with the following syntax:\preformatted{list(
  operations = list(
    list(
      id = "string",
      resourceName = "string",
      resourceType = "ContainerService"|"Instance"|"StaticIp"|"KeyPair"|"InstanceSnapshot"|"Domain"|"PeeredVpc"|"LoadBalancer"|"LoadBalancerTlsCertificate"|"Disk"|"DiskSnapshot"|"RelationalDatabase"|"RelationalDatabaseSnapshot"|"ExportSnapshotRecord"|"CloudFormationStackRecord"|"Alarm"|"ContactMethod"|"Distribution"|"Certificate",
      createdAt = as.POSIXct(
        "2015-01-01"
      ),
      location = list(
        availabilityZone = "string",
        regionName = "us-east-1"|"us-east-2"|"us-west-1"|"us-west-2"|"eu-west-1"|"eu-west-2"|"eu-west-3"|"eu-central-1"|"ca-central-1"|"ap-south-1"|"ap-southeast-1"|"ap-southeast-2"|"ap-northeast-1"|"ap-northeast-2"
      ),
      isTerminal = TRUE|FALSE,
      operationDetails = "string",
      operationType = "DeleteKnownHostKeys"|"DeleteInstance"|"CreateInstance"|"StopInstance"|"StartInstance"|"RebootInstance"|"OpenInstancePublicPorts"|"PutInstancePublicPorts"|"CloseInstancePublicPorts"|"AllocateStaticIp"|"ReleaseStaticIp"|"AttachStaticIp"|"DetachStaticIp"|"UpdateDomainEntry"|"DeleteDomainEntry"|"CreateDomain"|"DeleteDomain"|"CreateInstanceSnapshot"|"DeleteInstanceSnapshot"|"CreateInstancesFromSnapshot"|"CreateLoadBalancer"|"DeleteLoadBalancer"|"AttachInstancesToLoadBalancer"|"DetachInstancesFromLoadBalancer"|"UpdateLoadBalancerAttribute"|"CreateLoadBalancerTlsCertificate"|"DeleteLoadBalancerTlsCertificate"|"AttachLoadBalancerTlsCertificate"|"CreateDisk"|"DeleteDisk"|"AttachDisk"|"DetachDisk"|"CreateDiskSnapshot"|"DeleteDiskSnapshot"|"CreateDiskFromSnapshot"|"CreateRelationalDatabase"|"UpdateRelationalDatabase"|"DeleteRelationalDatabase"|"CreateRelationalDatabaseFromSnapshot"|"CreateRelationalDatabaseSnapshot"|"DeleteRelationalDatabaseSnapshot"|"UpdateRelationalDatabaseParameters"|"StartRelationalDatabase"|"RebootRelationalDatabase"|"StopRelationalDatabase"|"EnableAddOn"|"DisableAddOn"|"PutAlarm"|"GetAlarms"|"DeleteAlarm"|"TestAlarm"|"CreateContactMethod"|"GetContactMethods"|"SendContactMethodVerification"|"DeleteContactMethod"|"CreateDistribution"|"UpdateDistribution"|"DeleteDistribution"|"ResetDistributionCache"|"AttachCertificateToDistribution"|"DetachCertificateFromDistribution"|"UpdateDistributionBundle"|"CreateCertificate"|"DeleteCertificate"|"CreateContainerService"|"UpdateContainerService"|"DeleteContainerService"|"CreateContainerServiceDeployment"|"CreateContainerServiceRegistryLogin"|"RegisterContainerImage"|"DeleteContainerImage",
      status = "NotStarted"|"Started"|"Failed"|"Completed"|"Succeeded",
      statusChangedAt = as.POSIXct(
        "2015-01-01"
      ),
      errorCode = "string",
      errorDetails = "string"
    )
  )
)
}
}
\description{
Tests an alarm by displaying a banner on the Amazon Lightsail console.
If a notification trigger is configured for the specified alarm, the
test also sends a notification to the notification protocol (\code{Email}
and/or \code{SMS}) configured for the alarm.

An alarm is used to monitor a single metric for one of your resources.
When a metric condition is met, the alarm can notify you by email, SMS
text message, and a banner displayed on the Amazon Lightsail console.
For more information, see Alarms in Amazon Lightsail.
}
\section{Request syntax}{
\preformatted{svc$test_alarm(
  alarmName = "string",
  state = "OK"|"ALARM"|"INSUFFICIENT_DATA"
)
}
}

\keyword{internal}
