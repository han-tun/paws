% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wafregional_operations.R
\name{wafregional_list_resources_for_web_acl}
\alias{wafregional_list_resources_for_web_acl}
\title{Returns an array of resources associated with the specified web ACL}
\usage{
wafregional_list_resources_for_web_acl(WebACLId, ResourceType)
}
\arguments{
\item{WebACLId}{[required] The unique identifier (ID) of the web ACL for which to list the
associated resources.}

\item{ResourceType}{The type of resource to list, either an application load balancer or
Amazon API Gateway.}
}
\description{
Returns an array of resources associated with the specified web ACL.
}
\section{Request syntax}{
\preformatted{svc$list_resources_for_web_acl(
  WebACLId = "string",
  ResourceType = "APPLICATION_LOAD_BALANCER"|"API_GATEWAY"
)
}
}

\keyword{internal}