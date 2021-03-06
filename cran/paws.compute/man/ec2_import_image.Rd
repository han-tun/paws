% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_import_image}
\alias{ec2_import_image}
\title{Import single or multi-volume disk images or EBS snapshots into an
Amazon Machine Image (AMI)}
\usage{
ec2_import_image(Architecture, ClientData, ClientToken, Description,
  DiskContainers, DryRun, Encrypted, Hypervisor, KmsKeyId, LicenseType,
  Platform, RoleName, LicenseSpecifications, TagSpecifications)
}
\arguments{
\item{Architecture}{The architecture of the virtual machine.

Valid values: \code{i386} | \code{x86_64} | \code{arm64}}

\item{ClientData}{The client-specific data.}

\item{ClientToken}{The token to enable idempotency for VM import requests.}

\item{Description}{A description string for the import image task.}

\item{DiskContainers}{Information about the disk containers.}

\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}

\item{Encrypted}{Specifies whether the destination AMI of the imported image should be
encrypted. The default CMK for EBS is used unless you specify a
non-default AWS Key Management Service (AWS KMS) CMK using \code{KmsKeyId}.
For more information, see \href{https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html}{Amazon EBS Encryption}
in the \emph{Amazon Elastic Compute Cloud User Guide}.}

\item{Hypervisor}{The target hypervisor platform.

Valid values: \code{xen}}

\item{KmsKeyId}{An identifier for the symmetric AWS Key Management Service (AWS KMS)
customer master key (CMK) to use when creating the encrypted AMI. This
parameter is only required if you want to use a non-default CMK; if this
parameter is not specified, the default CMK for EBS is used. If a
\code{KmsKeyId} is specified, the \code{Encrypted} flag must also be set.

The CMK identifier may be provided in any of the following formats:
\itemize{
\item Key ID
\item Key alias. The alias ARN contains the \code{arn:aws:kms} namespace,
followed by the Region of the CMK, the AWS account ID of the CMK
owner, the \code{alias} namespace, and then the CMK alias. For example,
arn:aws:kms:\emph{us-east-1}:\emph{012345678910}:alias/\emph{ExampleAlias}.
\item ARN using key ID. The ID ARN contains the \code{arn:aws:kms} namespace,
followed by the Region of the CMK, the AWS account ID of the CMK
owner, the \code{key} namespace, and then the CMK ID. For example,
arn:aws:kms:\emph{us-east-1}:\emph{012345678910}:key/\emph{abcd1234-a123-456a-a12b-a123b4cd56ef}.
\item ARN using key alias. The alias ARN contains the \code{arn:aws:kms}
namespace, followed by the Region of the CMK, the AWS account ID of
the CMK owner, the \code{alias} namespace, and then the CMK alias. For
example,
arn:aws:kms:\emph{us-east-1}:\emph{012345678910}:alias/\emph{ExampleAlias}.
}

AWS parses \code{KmsKeyId} asynchronously, meaning that the action you call
may appear to complete even though you provided an invalid identifier.
This action will eventually report failure.

The specified CMK must exist in the Region that the AMI is being copied
to.

Amazon EBS does not support asymmetric CMKs.}

\item{LicenseType}{The license type to be used for the Amazon Machine Image (AMI) after
importing.

By default, we detect the source-system operating system (OS) and apply
the appropriate license. Specify \code{AWS} to replace the source-system
license with an AWS license, if appropriate. Specify \code{BYOL} to retain
the source-system license, if appropriate.

To use \code{BYOL}, you must have existing licenses with rights to use these
licenses in a third party cloud, such as AWS. For more information, see
\href{https://docs.aws.amazon.com/vm-import/latest/userguide/vmimport-image-import.html#prerequisites-image}{Prerequisites}
in the VM Import/Export User Guide.}

\item{Platform}{The operating system of the virtual machine.

Valid values: \code{Windows} | \code{Linux}}

\item{RoleName}{The name of the role to use when not using the default role, 'vmimport'.}

\item{LicenseSpecifications}{The ARNs of the license configurations.}

\item{TagSpecifications}{The tags to apply to the image being imported.}
}
\value{
A list with the following syntax:\preformatted{list(
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
  LicenseSpecifications = list(
    list(
      LicenseConfigurationArn = "string"
    )
  ),
  Tags = list(
    list(
      Key = "string",
      Value = "string"
    )
  )
)
}
}
\description{
Import single or multi-volume disk images or EBS snapshots into an
Amazon Machine Image (AMI). For more information, see \href{https://docs.aws.amazon.com/vm-import/latest/userguide/vmimport-image-import.html}{Importing a VM as an Image Using VM Import/Export}
in the \emph{VM Import/Export User Guide}.
}
\section{Request syntax}{
\preformatted{svc$import_image(
  Architecture = "string",
  ClientData = list(
    Comment = "string",
    UploadEnd = as.POSIXct(
      "2015-01-01"
    ),
    UploadSize = 123.0,
    UploadStart = as.POSIXct(
      "2015-01-01"
    )
  ),
  ClientToken = "string",
  Description = "string",
  DiskContainers = list(
    list(
      Description = "string",
      DeviceName = "string",
      Format = "string",
      SnapshotId = "string",
      Url = "string",
      UserBucket = list(
        S3Bucket = "string",
        S3Key = "string"
      )
    )
  ),
  DryRun = TRUE|FALSE,
  Encrypted = TRUE|FALSE,
  Hypervisor = "string",
  KmsKeyId = "string",
  LicenseType = "string",
  Platform = "string",
  RoleName = "string",
  LicenseSpecifications = list(
    list(
      LicenseConfigurationArn = "string"
    )
  ),
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
  )
)
}
}

\keyword{internal}
