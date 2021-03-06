% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/directconnect_operations.R
\name{directconnect_update_virtual_interface_attributes}
\alias{directconnect_update_virtual_interface_attributes}
\title{Updates the specified attributes of the specified virtual private
interface}
\usage{
directconnect_update_virtual_interface_attributes(virtualInterfaceId,
  mtu)
}
\arguments{
\item{virtualInterfaceId}{[required] The ID of the virtual private interface.}

\item{mtu}{The maximum transmission unit (MTU), in bytes. The supported values are
1500 and 9001. The default value is 1500.}
}
\value{
A list with the following syntax:\preformatted{list(
  ownerAccount = "string",
  virtualInterfaceId = "string",
  location = "string",
  connectionId = "string",
  virtualInterfaceType = "string",
  virtualInterfaceName = "string",
  vlan = 123,
  asn = 123,
  amazonSideAsn = 123,
  authKey = "string",
  amazonAddress = "string",
  customerAddress = "string",
  addressFamily = "ipv4"|"ipv6",
  virtualInterfaceState = "confirming"|"verifying"|"pending"|"available"|"down"|"deleting"|"deleted"|"rejected"|"unknown",
  customerRouterConfig = "string",
  mtu = 123,
  jumboFrameCapable = TRUE|FALSE,
  virtualGatewayId = "string",
  directConnectGatewayId = "string",
  routeFilterPrefixes = list(
    list(
      cidr = "string"
    )
  ),
  bgpPeers = list(
    list(
      bgpPeerId = "string",
      asn = 123,
      authKey = "string",
      addressFamily = "ipv4"|"ipv6",
      amazonAddress = "string",
      customerAddress = "string",
      bgpPeerState = "verifying"|"pending"|"available"|"deleting"|"deleted",
      bgpStatus = "up"|"down"|"unknown",
      awsDeviceV2 = "string"
    )
  ),
  region = "string",
  awsDeviceV2 = "string",
  tags = list(
    list(
      key = "string",
      value = "string"
    )
  )
)
}
}
\description{
Updates the specified attributes of the specified virtual private
interface.

Setting the MTU of a virtual interface to 9001 (jumbo frames) can cause
an update to the underlying physical connection if it wasn't updated to
support jumbo frames. Updating the connection disrupts network
connectivity for all virtual interfaces associated with the connection
for up to 30 seconds. To check whether your connection supports jumbo
frames, call
\code{\link[=directconnect_describe_connections]{describe_connections}}. To check
whether your virtual q interface supports jumbo frames, call
\code{\link[=directconnect_describe_virtual_interfaces]{describe_virtual_interfaces}}.
}
\section{Request syntax}{
\preformatted{svc$update_virtual_interface_attributes(
  virtualInterfaceId = "string",
  mtu = 123
)
}
}

\keyword{internal}
