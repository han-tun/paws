% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/servicediscovery_operations.R
\name{servicediscovery_get_service}
\alias{servicediscovery_get_service}
\title{Gets the settings for a specified service}
\usage{
servicediscovery_get_service(Id)
}
\arguments{
\item{Id}{[required] The ID of the service that you want to get settings for.}
}
\value{
A list with the following syntax:\preformatted{list(
  Service = list(
    Id = "string",
    Arn = "string",
    Name = "string",
    NamespaceId = "string",
    Description = "string",
    InstanceCount = 123,
    DnsConfig = list(
      NamespaceId = "string",
      RoutingPolicy = "MULTIVALUE"|"WEIGHTED",
      DnsRecords = list(
        list(
          Type = "SRV"|"A"|"AAAA"|"CNAME",
          TTL = 123
        )
      )
    ),
    HealthCheckConfig = list(
      Type = "HTTP"|"HTTPS"|"TCP",
      ResourcePath = "string",
      FailureThreshold = 123
    ),
    HealthCheckCustomConfig = list(
      FailureThreshold = 123
    ),
    CreateDate = as.POSIXct(
      "2015-01-01"
    ),
    CreatorRequestId = "string"
  )
)
}
}
\description{
Gets the settings for a specified service.
}
\section{Request syntax}{
\preformatted{svc$get_service(
  Id = "string"
)
}
}

\examples{
\dontrun{
# This example gets the settings for a specified service.
svc$get_service(
  Id = "srv-e4anhexample0004"
)
}

}
\keyword{internal}
