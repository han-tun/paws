% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lightsail_operations.R
\name{lightsail_create_relational_database}
\alias{lightsail_create_relational_database}
\title{Creates a new database in Amazon Lightsail}
\usage{
lightsail_create_relational_database(relationalDatabaseName,
  availabilityZone, relationalDatabaseBlueprintId,
  relationalDatabaseBundleId, masterDatabaseName, masterUsername,
  masterUserPassword, preferredBackupWindow, preferredMaintenanceWindow,
  publiclyAccessible, tags)
}
\arguments{
\item{relationalDatabaseName}{[required] The name to use for your new database.

Constraints:
\itemize{
\item Must contain from 2 to 255 alphanumeric characters, or hyphens.
\item The first and last character must be a letter or number.
}}

\item{availabilityZone}{The Availability Zone in which to create your new database. Use the
\verb{us-east-2a} case-sensitive format.

You can get a list of Availability Zones by using the \verb{get regions}
operation. Be sure to add the
\verb{include relational database Availability Zones} parameter to your
request.}

\item{relationalDatabaseBlueprintId}{[required] The blueprint ID for your new database. A blueprint describes the major
engine version of a database.

You can get a list of database blueprints IDs by using the
\verb{get relational database blueprints} operation.}

\item{relationalDatabaseBundleId}{[required] The bundle ID for your new database. A bundle describes the performance
specifications for your database.

You can get a list of database bundle IDs by using the
\verb{get relational database bundles} operation.}

\item{masterDatabaseName}{[required] The name of the master database created when the Lightsail database
resource is created.

Constraints:
\itemize{
\item Must contain from 1 to 64 alphanumeric characters.
\item Cannot be a word reserved by the specified database engine
}}

\item{masterUsername}{[required] The master user name for your new database.

Constraints:
\itemize{
\item Master user name is required.
\item Must contain from 1 to 16 alphanumeric characters.
\item The first character must be a letter.
\item Cannot be a reserved word for the database engine you choose.

For more information about reserved words in MySQL 5.6 or 5.7, see
the Keywords and Reserved Words articles for \href{https://dev.mysql.com/doc/refman/5.6/en/keywords.html}{MySQL 5.6} or
\href{https://dev.mysql.com/doc/refman/5.7/en/keywords.html}{MySQL 5.7}
respectively.
}}

\item{masterUserPassword}{The password for the master user of your new database. The password can
include any printable ASCII character except "/", """, or "@".

Constraints: Must contain 8 to 41 characters.}

\item{preferredBackupWindow}{The daily time range during which automated backups are created for your
new database if automated backups are enabled.

The default is a 30-minute window selected at random from an 8-hour
block of time for each AWS Region. For more information about the
preferred backup window time blocks for each region, see the \href{https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithAutomatedBackups.html#USER_WorkingWithAutomatedBackups.BackupWindow}{Working With Backups}
guide in the Amazon Relational Database Service (Amazon RDS)
documentation.

Constraints:
\itemize{
\item Must be in the \code{hh24:mi-hh24:mi} format.

Example: \code{16:00-16:30}
\item Specified in Coordinated Universal Time (UTC).
\item Must not conflict with the preferred maintenance window.
\item Must be at least 30 minutes.
}}

\item{preferredMaintenanceWindow}{The weekly time range during which system maintenance can occur on your
new database.

The default is a 30-minute window selected at random from an 8-hour
block of time for each AWS Region, occurring on a random day of the
week.

Constraints:
\itemize{
\item Must be in the \code{ddd:hh24:mi-ddd:hh24:mi} format.
\item Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.
\item Must be at least 30 minutes.
\item Specified in Coordinated Universal Time (UTC).
\item Example: \code{Tue:17:00-Tue:17:30}
}}

\item{publiclyAccessible}{Specifies the accessibility options for your new database. A value of
\code{true} specifies a database that is available to resources outside of
your Lightsail account. A value of \code{false} specifies a database that is
available only to your Lightsail resources in the same region as your
database.}

\item{tags}{The tag keys and optional values to add to the resource during create.

Use the \code{\link[=lightsail_tag_resource]{tag_resource}} action to tag a
resource after it's created.}
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
Creates a new database in Amazon Lightsail.

The \verb{create relational database} operation supports tag-based access
control via request tags. For more information, see the Lightsail Dev
Guide.
}
\section{Request syntax}{
\preformatted{svc$create_relational_database(
  relationalDatabaseName = "string",
  availabilityZone = "string",
  relationalDatabaseBlueprintId = "string",
  relationalDatabaseBundleId = "string",
  masterDatabaseName = "string",
  masterUsername = "string",
  masterUserPassword = "string",
  preferredBackupWindow = "string",
  preferredMaintenanceWindow = "string",
  publiclyAccessible = TRUE|FALSE,
  tags = list(
    list(
      key = "string",
      value = "string"
    )
  )
)
}
}

\keyword{internal}
