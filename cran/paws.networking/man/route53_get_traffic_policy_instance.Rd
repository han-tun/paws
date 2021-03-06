% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/route53_operations.R
\name{route53_get_traffic_policy_instance}
\alias{route53_get_traffic_policy_instance}
\title{Gets information about a specified traffic policy instance}
\usage{
route53_get_traffic_policy_instance(Id)
}
\arguments{
\item{Id}{[required] The ID of the traffic policy instance that you want to get information
about.}
}
\value{
A list with the following syntax:\preformatted{list(
  TrafficPolicyInstance = list(
    Id = "string",
    HostedZoneId = "string",
    Name = "string",
    TTL = 123,
    State = "string",
    Message = "string",
    TrafficPolicyId = "string",
    TrafficPolicyVersion = 123,
    TrafficPolicyType = "SOA"|"A"|"TXT"|"NS"|"CNAME"|"MX"|"NAPTR"|"PTR"|"SRV"|"SPF"|"AAAA"|"CAA"|"DS"
  )
)
}
}
\description{
Gets information about a specified traffic policy instance.

After you submit a
\code{\link[=route53_create_traffic_policy_instance]{create_traffic_policy_instance}}
or an
\code{\link[=route53_update_traffic_policy_instance]{update_traffic_policy_instance}}
request, there's a brief delay while Amazon Route 53 creates the
resource record sets that are specified in the traffic policy
definition. For more information, see the \code{State} response element.

In the Route 53 console, traffic policy instances are known as policy
records.
}
\section{Request syntax}{
\preformatted{svc$get_traffic_policy_instance(
  Id = "string"
)
}
}

\keyword{internal}
