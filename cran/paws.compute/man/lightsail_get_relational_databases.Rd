% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lightsail_operations.R
\name{lightsail_get_relational_databases}
\alias{lightsail_get_relational_databases}
\title{Returns information about all of your databases in Amazon Lightsail}
\usage{
lightsail_get_relational_databases(pageToken)
}
\arguments{
\item{pageToken}{The token to advance to the next page of results from your request.

To get a page token, perform an initial
\code{\link[=lightsail_get_relational_databases]{get_relational_databases}}
request. If your results are paginated, the response will return a next
page token that you can specify as the page token in a subsequent
request.}
}
\value{
A list with the following syntax:\preformatted{list(
  relationalDatabases = list(
    list(
      name = "string",
      arn = "string",
      supportCode = "string",
      createdAt = as.POSIXct(
        "2015-01-01"
      ),
      location = list(
        availabilityZone = "string",
        regionName = "us-east-1"|"us-east-2"|"us-west-1"|"us-west-2"|"eu-west-1"|"eu-west-2"|"eu-west-3"|"eu-central-1"|"ca-central-1"|"ap-south-1"|"ap-southeast-1"|"ap-southeast-2"|"ap-northeast-1"|"ap-northeast-2"
      ),
      resourceType = "ContainerService"|"Instance"|"StaticIp"|"KeyPair"|"InstanceSnapshot"|"Domain"|"PeeredVpc"|"LoadBalancer"|"LoadBalancerTlsCertificate"|"Disk"|"DiskSnapshot"|"RelationalDatabase"|"RelationalDatabaseSnapshot"|"ExportSnapshotRecord"|"CloudFormationStackRecord"|"Alarm"|"ContactMethod"|"Distribution"|"Certificate",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      ),
      relationalDatabaseBlueprintId = "string",
      relationalDatabaseBundleId = "string",
      masterDatabaseName = "string",
      hardware = list(
        cpuCount = 123,
        diskSizeInGb = 123,
        ramSizeInGb = 123.0
      ),
      state = "string",
      secondaryAvailabilityZone = "string",
      backupRetentionEnabled = TRUE|FALSE,
      pendingModifiedValues = list(
        masterUserPassword = "string",
        engineVersion = "string",
        backupRetentionEnabled = TRUE|FALSE
      ),
      engine = "string",
      engineVersion = "string",
      latestRestorableTime = as.POSIXct(
        "2015-01-01"
      ),
      masterUsername = "string",
      parameterApplyStatus = "string",
      preferredBackupWindow = "string",
      preferredMaintenanceWindow = "string",
      publiclyAccessible = TRUE|FALSE,
      masterEndpoint = list(
        port = 123,
        address = "string"
      ),
      pendingMaintenanceActions = list(
        list(
          action = "string",
          description = "string",
          currentApplyDate = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      caCertificateIdentifier = "string"
    )
  ),
  nextPageToken = "string"
)
}
}
\description{
Returns information about all of your databases in Amazon Lightsail.
}
\section{Request syntax}{
\preformatted{svc$get_relational_databases(
  pageToken = "string"
)
}
}

\keyword{internal}
