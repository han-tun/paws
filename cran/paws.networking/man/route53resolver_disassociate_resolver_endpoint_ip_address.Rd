% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/route53resolver_operations.R
\name{route53resolver_disassociate_resolver_endpoint_ip_address}
\alias{route53resolver_disassociate_resolver_endpoint_ip_address}
\title{Removes IP addresses from an inbound or an outbound Resolver endpoint}
\usage{
route53resolver_disassociate_resolver_endpoint_ip_address(
  ResolverEndpointId, IpAddress)
}
\arguments{
\item{ResolverEndpointId}{[required] The ID of the Resolver endpoint that you want to disassociate an IP
address from.}

\item{IpAddress}{[required] The IPv4 address that you want to remove from a Resolver endpoint.}
}
\value{
A list with the following syntax:\preformatted{list(
  ResolverEndpoint = list(
    Id = "string",
    CreatorRequestId = "string",
    Arn = "string",
    Name = "string",
    SecurityGroupIds = list(
      "string"
    ),
    Direction = "INBOUND"|"OUTBOUND",
    IpAddressCount = 123,
    HostVPCId = "string",
    Status = "CREATING"|"OPERATIONAL"|"UPDATING"|"AUTO_RECOVERING"|"ACTION_NEEDED"|"DELETING",
    StatusMessage = "string",
    CreationTime = "string",
    ModificationTime = "string"
  )
)
}
}
\description{
Removes IP addresses from an inbound or an outbound Resolver endpoint.
If you want to remove more than one IP address, submit one
\code{\link[=route53resolver_disassociate_resolver_endpoint_ip_address]{disassociate_resolver_endpoint_ip_address}}
request for each IP address.

To add an IP address to an endpoint, see
\code{\link[=route53resolver_associate_resolver_endpoint_ip_address]{associate_resolver_endpoint_ip_address}}.
}
\section{Request syntax}{
\preformatted{svc$disassociate_resolver_endpoint_ip_address(
  ResolverEndpointId = "string",
  IpAddress = list(
    IpId = "string",
    SubnetId = "string",
    Ip = "string"
  )
)
}
}

\keyword{internal}
