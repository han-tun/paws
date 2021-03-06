% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ssm_operations.R
\name{ssm_describe_document}
\alias{ssm_describe_document}
\title{Describes the specified Systems Manager document}
\usage{
ssm_describe_document(Name, DocumentVersion, VersionName)
}
\arguments{
\item{Name}{[required] The name of the Systems Manager document.}

\item{DocumentVersion}{The document version for which you want information. Can be a specific
version or the default version.}

\item{VersionName}{An optional field specifying the version of the artifact associated with
the document. For example, "Release 12, Update 6". This value is unique
across all versions of a document, and cannot be changed.}
}
\value{
A list with the following syntax:\preformatted{list(
  Document = list(
    Sha1 = "string",
    Hash = "string",
    HashType = "Sha256"|"Sha1",
    Name = "string",
    VersionName = "string",
    Owner = "string",
    CreatedDate = as.POSIXct(
      "2015-01-01"
    ),
    Status = "Creating"|"Active"|"Updating"|"Deleting"|"Failed",
    StatusInformation = "string",
    DocumentVersion = "string",
    Description = "string",
    Parameters = list(
      list(
        Name = "string",
        Type = "String"|"StringList",
        Description = "string",
        DefaultValue = "string"
      )
    ),
    PlatformTypes = list(
      "Windows"|"Linux"
    ),
    DocumentType = "Command"|"Policy"|"Automation"|"Session"|"Package"|"ApplicationConfiguration"|"ApplicationConfigurationSchema"|"DeploymentStrategy"|"ChangeCalendar"|"Automation.ChangeTemplate",
    SchemaVersion = "string",
    LatestVersion = "string",
    DefaultVersion = "string",
    DocumentFormat = "YAML"|"JSON"|"TEXT",
    TargetType = "string",
    Tags = list(
      list(
        Key = "string",
        Value = "string"
      )
    ),
    AttachmentsInformation = list(
      list(
        Name = "string"
      )
    ),
    Requires = list(
      list(
        Name = "string",
        Version = "string"
      )
    ),
    Author = "string",
    ReviewInformation = list(
      list(
        ReviewedTime = as.POSIXct(
          "2015-01-01"
        ),
        Status = "APPROVED"|"NOT_REVIEWED"|"PENDING"|"REJECTED",
        Reviewer = "string"
      )
    ),
    ApprovedVersion = "string",
    PendingReviewVersion = "string",
    ReviewStatus = "APPROVED"|"NOT_REVIEWED"|"PENDING"|"REJECTED"
  )
)
}
}
\description{
Describes the specified Systems Manager document.
}
\section{Request syntax}{
\preformatted{svc$describe_document(
  Name = "string",
  DocumentVersion = "string",
  VersionName = "string"
)
}
}

\keyword{internal}
