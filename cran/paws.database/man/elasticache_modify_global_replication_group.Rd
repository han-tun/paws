% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/elasticache_operations.R
\name{elasticache_modify_global_replication_group}
\alias{elasticache_modify_global_replication_group}
\title{Modifies the settings for a Global Datastore}
\usage{
elasticache_modify_global_replication_group(GlobalReplicationGroupId,
  ApplyImmediately, CacheNodeType, EngineVersion,
  GlobalReplicationGroupDescription, AutomaticFailoverEnabled)
}
\arguments{
\item{GlobalReplicationGroupId}{[required] The name of the Global Datastore}

\item{ApplyImmediately}{[required] This parameter causes the modifications in this request and any pending
modifications to be applied, asynchronously and as soon as possible.
Modifications to Global Replication Groups cannot be requested to be
applied in PreferredMaintenceWindow.}

\item{CacheNodeType}{A valid cache node type that you want to scale this Global Datastore to.}

\item{EngineVersion}{The upgraded version of the cache engine to be run on the clusters in
the Global Datastore.}

\item{GlobalReplicationGroupDescription}{A description of the Global Datastore}

\item{AutomaticFailoverEnabled}{Determines whether a read replica is automatically promoted to
read/write primary if the existing primary encounters a failure.}
}
\value{
A list with the following syntax:\preformatted{list(
  GlobalReplicationGroup = list(
    GlobalReplicationGroupId = "string",
    GlobalReplicationGroupDescription = "string",
    Status = "string",
    CacheNodeType = "string",
    Engine = "string",
    EngineVersion = "string",
    Members = list(
      list(
        ReplicationGroupId = "string",
        ReplicationGroupRegion = "string",
        Role = "string",
        AutomaticFailover = "enabled"|"disabled"|"enabling"|"disabling",
        Status = "string"
      )
    ),
    ClusterEnabled = TRUE|FALSE,
    GlobalNodeGroups = list(
      list(
        GlobalNodeGroupId = "string",
        Slots = "string"
      )
    ),
    AuthTokenEnabled = TRUE|FALSE,
    TransitEncryptionEnabled = TRUE|FALSE,
    AtRestEncryptionEnabled = TRUE|FALSE,
    ARN = "string"
  )
)
}
}
\description{
Modifies the settings for a Global Datastore.
}
\section{Request syntax}{
\preformatted{svc$modify_global_replication_group(
  GlobalReplicationGroupId = "string",
  ApplyImmediately = TRUE|FALSE,
  CacheNodeType = "string",
  EngineVersion = "string",
  GlobalReplicationGroupDescription = "string",
  AutomaticFailoverEnabled = TRUE|FALSE
)
}
}

\keyword{internal}
