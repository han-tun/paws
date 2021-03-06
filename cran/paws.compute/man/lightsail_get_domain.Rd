% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lightsail_operations.R
\name{lightsail_get_domain}
\alias{lightsail_get_domain}
\title{Returns information about a specific domain recordset}
\usage{
lightsail_get_domain(domainName)
}
\arguments{
\item{domainName}{[required] The domain name for which your want to return information about.}
}
\value{
A list with the following syntax:\preformatted{list(
  domain = list(
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
    domainEntries = list(
      list(
        id = "string",
        name = "string",
        target = "string",
        isAlias = TRUE|FALSE,
        type = "string",
        options = list(
          "string"
        )
      )
    )
  )
)
}
}
\description{
Returns information about a specific domain recordset.
}
\section{Request syntax}{
\preformatted{svc$get_domain(
  domainName = "string"
)
}
}

\keyword{internal}
