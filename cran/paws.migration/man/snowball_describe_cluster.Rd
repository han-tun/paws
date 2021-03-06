% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/snowball_operations.R
\name{snowball_describe_cluster}
\alias{snowball_describe_cluster}
\title{Returns information about a specific cluster including shipping
information, cluster status, and other important metadata}
\usage{
snowball_describe_cluster(ClusterId)
}
\arguments{
\item{ClusterId}{[required] The automatically generated ID for a cluster.}
}
\value{
A list with the following syntax:\preformatted{list(
  ClusterMetadata = list(
    ClusterId = "string",
    Description = "string",
    KmsKeyARN = "string",
    RoleARN = "string",
    ClusterState = "AwaitingQuorum"|"Pending"|"InUse"|"Complete"|"Cancelled",
    JobType = "IMPORT"|"EXPORT"|"LOCAL_USE",
    SnowballType = "STANDARD"|"EDGE"|"EDGE_C"|"EDGE_CG"|"EDGE_S"|"SNC1_HDD",
    CreationDate = as.POSIXct(
      "2015-01-01"
    ),
    Resources = list(
      S3Resources = list(
        list(
          BucketArn = "string",
          KeyRange = list(
            BeginMarker = "string",
            EndMarker = "string"
          )
        )
      ),
      LambdaResources = list(
        list(
          LambdaArn = "string",
          EventTriggers = list(
            list(
              EventResourceARN = "string"
            )
          )
        )
      ),
      Ec2AmiResources = list(
        list(
          AmiId = "string",
          SnowballAmiId = "string"
        )
      )
    ),
    AddressId = "string",
    ShippingOption = "SECOND_DAY"|"NEXT_DAY"|"EXPRESS"|"STANDARD",
    Notification = list(
      SnsTopicARN = "string",
      JobStatesToNotify = list(
        "New"|"PreparingAppliance"|"PreparingShipment"|"InTransitToCustomer"|"WithCustomer"|"InTransitToAWS"|"WithAWSSortingFacility"|"WithAWS"|"InProgress"|"Complete"|"Cancelled"|"Listing"|"Pending"
      ),
      NotifyAll = TRUE|FALSE
    ),
    ForwardingAddressId = "string",
    TaxDocuments = list(
      IND = list(
        GSTIN = "string"
      )
    )
  )
)
}
}
\description{
Returns information about a specific cluster including shipping
information, cluster status, and other important metadata.
}
\section{Request syntax}{
\preformatted{svc$describe_cluster(
  ClusterId = "string"
)
}
}

\examples{
\dontrun{
# Returns information about a specific cluster including shipping
# information, cluster status, and other important metadata.
svc$describe_cluster(
  ClusterId = "CID123e4567-e89b-12d3-a456-426655440000"
)
}

}
\keyword{internal}
