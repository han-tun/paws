% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/greengrass_operations.R
\name{greengrass_get_connector_definition_version}
\alias{greengrass_get_connector_definition_version}
\title{Retrieves information about a connector definition version, including
the connectors that the version contains}
\usage{
greengrass_get_connector_definition_version(ConnectorDefinitionId,
  ConnectorDefinitionVersionId, NextToken)
}
\arguments{
\item{ConnectorDefinitionId}{[required] The ID of the connector definition.}

\item{ConnectorDefinitionVersionId}{[required] The ID of the connector definition version. This value maps to the
''Version'' property of the corresponding ''VersionInformation'' object,
which is returned by ''ListConnectorDefinitionVersions'' requests. If
the version is the last one that was associated with a connector
definition, the value also maps to the ''LatestVersion'' property of the
corresponding ''DefinitionInformation'' object.}

\item{NextToken}{The token for the next set of results, or ''null'' if there are no
additional results.}
}
\value{
A list with the following syntax:\preformatted{list(
  Arn = "string",
  CreationTimestamp = "string",
  Definition = list(
    Connectors = list(
      list(
        ConnectorArn = "string",
        Id = "string",
        Parameters = list(
          "string"
        )
      )
    )
  ),
  Id = "string",
  NextToken = "string",
  Version = "string"
)
}
}
\description{
Retrieves information about a connector definition version, including
the connectors that the version contains. Connectors are prebuilt
modules that interact with local infrastructure, device protocols, AWS,
and other cloud services.
}
\section{Request syntax}{
\preformatted{svc$get_connector_definition_version(
  ConnectorDefinitionId = "string",
  ConnectorDefinitionVersionId = "string",
  NextToken = "string"
)
}
}

\keyword{internal}
