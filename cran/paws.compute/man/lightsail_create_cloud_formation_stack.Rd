% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lightsail_operations.R
\name{lightsail_create_cloud_formation_stack}
\alias{lightsail_create_cloud_formation_stack}
\title{Creates an AWS CloudFormation stack, which creates a new Amazon EC2
instance from an exported Amazon Lightsail snapshot}
\usage{
lightsail_create_cloud_formation_stack(instances)
}
\arguments{
\item{instances}{[required] An array of parameters that will be used to create the new Amazon EC2
instance. You can only pass one instance entry at a time in this array.
You will get an invalid parameter error if you pass more than one
instance entry in this array.}
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
Creates an AWS CloudFormation stack, which creates a new Amazon EC2
instance from an exported Amazon Lightsail snapshot. This operation
results in a CloudFormation stack record that can be used to track the
AWS CloudFormation stack created. Use the
\verb{get cloud formation stack records} operation to get a list of the
CloudFormation stacks created.

Wait until after your new Amazon EC2 instance is created before running
the \verb{create cloud formation stack} operation again with the same export
snapshot record.
}
\section{Request syntax}{
\preformatted{svc$create_cloud_formation_stack(
  instances = list(
    list(
      sourceName = "string",
      instanceType = "string",
      portInfoSource = "DEFAULT"|"INSTANCE"|"NONE"|"CLOSED",
      userData = "string",
      availabilityZone = "string"
    )
  )
)
}
}

\keyword{internal}
