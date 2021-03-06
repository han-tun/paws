% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_describe_import_image_tasks}
\alias{ec2_describe_import_image_tasks}
\title{Displays details about an import virtual machine or import snapshot
tasks that are already created}
\usage{
ec2_describe_import_image_tasks(DryRun, Filters, ImportTaskIds,
  MaxResults, NextToken)
}
\arguments{
\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}

\item{Filters}{Filter tasks using the \code{task-state} filter and one of the following
values: \code{active}, \code{completed}, \code{deleting}, or \code{deleted}.}

\item{ImportTaskIds}{The IDs of the import image tasks.}

\item{MaxResults}{The maximum number of results to return in a single call.}

\item{NextToken}{A token that indicates the next page of results.}
}
\value{
A list with the following syntax:\preformatted{list(
  ImportImageTasks = list(
    list(
      Architecture = "string",
      Description = "string",
      Encrypted = TRUE|FALSE,
      Hypervisor = "string",
      ImageId = "string",
      ImportTaskId = "string",
      KmsKeyId = "string",
      LicenseType = "string",
      Platform = "string",
      Progress = "string",
      SnapshotDetails = list(
        list(
          Description = "string",
          DeviceName = "string",
          DiskImageSize = 123.0,
          Format = "string",
          Progress = "string",
          SnapshotId = "string",
          Status = "string",
          StatusMessage = "string",
          Url = "string",
          UserBucket = list(
            S3Bucket = "string",
            S3Key = "string"
          )
        )
      ),
      Status = "string",
      StatusMessage = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      LicenseSpecifications = list(
        list(
          LicenseConfigurationArn = "string"
        )
      )
    )
  ),
  NextToken = "string"
)
}
}
\description{
Displays details about an import virtual machine or import snapshot
tasks that are already created.
}
\section{Request syntax}{
\preformatted{svc$describe_import_image_tasks(
  DryRun = TRUE|FALSE,
  Filters = list(
    list(
      Name = "string",
      Values = list(
        "string"
      )
    )
  ),
  ImportTaskIds = list(
    "string"
  ),
  MaxResults = 123,
  NextToken = "string"
)
}
}

\keyword{internal}
