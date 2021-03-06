% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_create_vpn_connection_route}
\alias{ec2_create_vpn_connection_route}
\title{Creates a static route associated with a VPN connection between an
existing virtual private gateway and a VPN customer gateway}
\usage{
ec2_create_vpn_connection_route(DestinationCidrBlock, VpnConnectionId)
}
\arguments{
\item{DestinationCidrBlock}{[required] The CIDR block associated with the local subnet of the customer network.}

\item{VpnConnectionId}{[required] The ID of the VPN connection.}
}
\value{
An empty list.
}
\description{
Creates a static route associated with a VPN connection between an
existing virtual private gateway and a VPN customer gateway. The static
route allows traffic to be routed from the virtual private gateway to
the VPN customer gateway.

For more information, see \href{https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html}{AWS Site-to-Site VPN} in the
\emph{AWS Site-to-Site VPN User Guide}.
}
\section{Request syntax}{
\preformatted{svc$create_vpn_connection_route(
  DestinationCidrBlock = "string",
  VpnConnectionId = "string"
)
}
}

\keyword{internal}
