% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/route53_operations.R
\name{route53_list_traffic_policy_versions}
\alias{route53_list_traffic_policy_versions}
\title{Gets information about all of the versions for a specified traffic
policy}
\usage{
route53_list_traffic_policy_versions(Id, TrafficPolicyVersionMarker,
  MaxItems)
}
\arguments{
\item{Id}{[required] Specify the value of \code{Id} of the traffic policy for which you want to
list all versions.}

\item{TrafficPolicyVersionMarker}{For your first request to
\code{\link[=route53_list_traffic_policy_versions]{list_traffic_policy_versions}},
don't include the \code{TrafficPolicyVersionMarker} parameter.

If you have more traffic policy versions than the value of \code{MaxItems},
\code{\link[=route53_list_traffic_policy_versions]{list_traffic_policy_versions}}
returns only the first group of \code{MaxItems} versions. To get more traffic
policy versions, submit another
\code{\link[=route53_list_traffic_policy_versions]{list_traffic_policy_versions}}
request. For the value of \code{TrafficPolicyVersionMarker}, specify the
value of \code{TrafficPolicyVersionMarker} in the previous response.}

\item{MaxItems}{The maximum number of traffic policy versions that you want Amazon Route
53 to include in the response body for this request. If the specified
traffic policy has more than \code{MaxItems} versions, the value of
\code{IsTruncated} in the response is \code{true}, and the value of the
\code{TrafficPolicyVersionMarker} element is the ID of the first version that
Route 53 will return if you submit another request.}
}
\value{
A list with the following syntax:\preformatted{list(
  TrafficPolicies = list(
    list(
      Id = "string",
      Version = 123,
      Name = "string",
      Type = "SOA"|"A"|"TXT"|"NS"|"CNAME"|"MX"|"NAPTR"|"PTR"|"SRV"|"SPF"|"AAAA"|"CAA"|"DS",
      Document = "string",
      Comment = "string"
    )
  ),
  IsTruncated = TRUE|FALSE,
  TrafficPolicyVersionMarker = "string",
  MaxItems = "string"
)
}
}
\description{
Gets information about all of the versions for a specified traffic
policy.

Traffic policy versions are listed in numerical order by
\code{VersionNumber}.
}
\section{Request syntax}{
\preformatted{svc$list_traffic_policy_versions(
  Id = "string",
  TrafficPolicyVersionMarker = "string",
  MaxItems = "string"
)
}
}

\keyword{internal}
