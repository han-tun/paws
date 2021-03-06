% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_create_network_insights_path}
\alias{ec2_create_network_insights_path}
\title{Creates a path to analyze for reachability}
\usage{
ec2_create_network_insights_path(SourceIp, DestinationIp, Source,
  Destination, Protocol, DestinationPort, TagSpecifications, DryRun,
  ClientToken)
}
\arguments{
\item{SourceIp}{The IP address of the AWS resource that is the source of the path.}

\item{DestinationIp}{The IP address of the AWS resource that is the destination of the path.}

\item{Source}{[required] The AWS resource that is the source of the path.}

\item{Destination}{[required] The AWS resource that is the destination of the path.}

\item{Protocol}{[required] The protocol.}

\item{DestinationPort}{The destination port.}

\item{TagSpecifications}{The tags to add to the path.}

\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}

\item{ClientToken}{[required] Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see \href{https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html}{How to Ensure Idempotency}.}
}
\value{
A list with the following syntax:\preformatted{list(
  NetworkInsightsPath = list(
    NetworkInsightsPathId = "string",
    NetworkInsightsPathArn = "string",
    CreatedDate = as.POSIXct(
      "2015-01-01"
    ),
    Source = "string",
    Destination = "string",
    SourceIp = "string",
    DestinationIp = "string",
    Protocol = "tcp"|"udp",
    DestinationPort = 123,
    Tags = list(
      list(
        Key = "string",
        Value = "string"
      )
    )
  )
)
}
}
\description{
Creates a path to analyze for reachability.

Reachability Analyzer enables you to analyze and debug network
reachability between two resources in your virtual private cloud (VPC).
For more information, see \href{https://docs.aws.amazon.com/vpc/latest/reachability/}{What is Reachability Analyzer}.
}
\section{Request syntax}{
\preformatted{svc$create_network_insights_path(
  SourceIp = "string",
  DestinationIp = "string",
  Source = "string",
  Destination = "string",
  Protocol = "tcp"|"udp",
  DestinationPort = 123,
  TagSpecifications = list(
    list(
      ResourceType = "client-vpn-endpoint"|"customer-gateway"|"dedicated-host"|"dhcp-options"|"egress-only-internet-gateway"|"elastic-ip"|"elastic-gpu"|"export-image-task"|"export-instance-task"|"fleet"|"fpga-image"|"host-reservation"|"image"|"import-image-task"|"import-snapshot-task"|"instance"|"internet-gateway"|"key-pair"|"launch-template"|"local-gateway-route-table-vpc-association"|"natgateway"|"network-acl"|"network-interface"|"network-insights-analysis"|"network-insights-path"|"placement-group"|"reserved-instances"|"route-table"|"security-group"|"snapshot"|"spot-fleet-request"|"spot-instances-request"|"subnet"|"traffic-mirror-filter"|"traffic-mirror-session"|"traffic-mirror-target"|"transit-gateway"|"transit-gateway-attachment"|"transit-gateway-connect-peer"|"transit-gateway-multicast-domain"|"transit-gateway-route-table"|"volume"|"vpc"|"vpc-peering-connection"|"vpn-connection"|"vpn-gateway"|"vpc-flow-log",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
  ),
  DryRun = TRUE|FALSE,
  ClientToken = "string"
)
}
}

\keyword{internal}
