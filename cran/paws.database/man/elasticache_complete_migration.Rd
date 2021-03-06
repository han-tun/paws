% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/elasticache_operations.R
\name{elasticache_complete_migration}
\alias{elasticache_complete_migration}
\title{Complete the migration of data}
\usage{
elasticache_complete_migration(ReplicationGroupId, Force)
}
\arguments{
\item{ReplicationGroupId}{[required] The ID of the replication group to which data is being migrated.}

\item{Force}{Forces the migration to stop without ensuring that data is in sync. It
is recommended to use this option only to abort the migration and not
recommended when application wants to continue migration to ElastiCache.}
}
\value{
A list with the following syntax:\preformatted{list(
  ReplicationGroup = list(
    ReplicationGroupId = "string",
    Description = "string",
    GlobalReplicationGroupInfo = list(
      GlobalReplicationGroupId = "string",
      GlobalReplicationGroupMemberRole = "string"
    ),
    Status = "string",
    PendingModifiedValues = list(
      PrimaryClusterId = "string",
      AutomaticFailoverStatus = "enabled"|"disabled",
      Resharding = list(
        SlotMigration = list(
          ProgressPercentage = 123.0
        )
      ),
      AuthTokenStatus = "SETTING"|"ROTATING",
      UserGroups = list(
        UserGroupIdsToAdd = list(
          "string"
        ),
        UserGroupIdsToRemove = list(
          "string"
        )
      )
    ),
    MemberClusters = list(
      "string"
    ),
    NodeGroups = list(
      list(
        NodeGroupId = "string",
        Status = "string",
        PrimaryEndpoint = list(
          Address = "string",
          Port = 123
        ),
        ReaderEndpoint = list(
          Address = "string",
          Port = 123
        ),
        Slots = "string",
        NodeGroupMembers = list(
          list(
            CacheClusterId = "string",
            CacheNodeId = "string",
            ReadEndpoint = list(
              Address = "string",
              Port = 123
            ),
            PreferredAvailabilityZone = "string",
            PreferredOutpostArn = "string",
            CurrentRole = "string"
          )
        )
      )
    ),
    SnapshottingClusterId = "string",
    AutomaticFailover = "enabled"|"disabled"|"enabling"|"disabling",
    MultiAZ = "enabled"|"disabled",
    ConfigurationEndpoint = list(
      Address = "string",
      Port = 123
    ),
    SnapshotRetentionLimit = 123,
    SnapshotWindow = "string",
    ClusterEnabled = TRUE|FALSE,
    CacheNodeType = "string",
    AuthTokenEnabled = TRUE|FALSE,
    AuthTokenLastModifiedDate = as.POSIXct(
      "2015-01-01"
    ),
    TransitEncryptionEnabled = TRUE|FALSE,
    AtRestEncryptionEnabled = TRUE|FALSE,
    MemberClustersOutpostArns = list(
      "string"
    ),
    KmsKeyId = "string",
    ARN = "string",
    UserGroupIds = list(
      "string"
    )
  )
)
}
}
\description{
Complete the migration of data.
}
\section{Request syntax}{
\preformatted{svc$complete_migration(
  ReplicationGroupId = "string",
  Force = TRUE|FALSE
)
}
}

\keyword{internal}
