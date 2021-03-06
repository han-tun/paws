% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mediaconnect_operations.R
\name{mediaconnect_add_flow_sources}
\alias{mediaconnect_add_flow_sources}
\title{Adds Sources to flow}
\usage{
mediaconnect_add_flow_sources(FlowArn, Sources)
}
\arguments{
\item{FlowArn}{[required] The flow that you want to mutate.}

\item{Sources}{[required] A list of sources that you want to add.}
}
\value{
A list with the following syntax:\preformatted{list(
  FlowArn = "string",
  Sources = list(
    list(
      DataTransferSubscriberFeePercent = 123,
      Decryption = list(
        Algorithm = "aes128"|"aes192"|"aes256",
        ConstantInitializationVector = "string",
        DeviceId = "string",
        KeyType = "speke"|"static-key",
        Region = "string",
        ResourceId = "string",
        RoleArn = "string",
        SecretArn = "string",
        Url = "string"
      ),
      Description = "string",
      EntitlementArn = "string",
      IngestIp = "string",
      IngestPort = 123,
      Name = "string",
      SourceArn = "string",
      Transport = list(
        CidrAllowList = list(
          "string"
        ),
        MaxBitrate = 123,
        MaxLatency = 123,
        Protocol = "zixi-push"|"rtp-fec"|"rtp"|"zixi-pull"|"rist",
        RemoteId = "string",
        SmoothingLatency = 123,
        StreamId = "string"
      ),
      VpcInterfaceName = "string",
      WhitelistCidr = "string"
    )
  )
)
}
}
\description{
Adds Sources to flow
}
\section{Request syntax}{
\preformatted{svc$add_flow_sources(
  FlowArn = "string",
  Sources = list(
    list(
      Decryption = list(
        Algorithm = "aes128"|"aes192"|"aes256",
        ConstantInitializationVector = "string",
        DeviceId = "string",
        KeyType = "speke"|"static-key",
        Region = "string",
        ResourceId = "string",
        RoleArn = "string",
        SecretArn = "string",
        Url = "string"
      ),
      Description = "string",
      EntitlementArn = "string",
      IngestPort = 123,
      MaxBitrate = 123,
      MaxLatency = 123,
      Name = "string",
      Protocol = "zixi-push"|"rtp-fec"|"rtp"|"zixi-pull"|"rist",
      StreamId = "string",
      VpcInterfaceName = "string",
      WhitelistCidr = "string"
    )
  )
)
}
}

\keyword{internal}
