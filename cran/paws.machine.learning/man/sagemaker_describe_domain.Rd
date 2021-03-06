% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagemaker_operations.R
\name{sagemaker_describe_domain}
\alias{sagemaker_describe_domain}
\title{The description of the domain}
\usage{
sagemaker_describe_domain(DomainId)
}
\arguments{
\item{DomainId}{[required] The domain ID.}
}
\value{
A list with the following syntax:\preformatted{list(
  DomainArn = "string",
  DomainId = "string",
  DomainName = "string",
  HomeEfsFileSystemId = "string",
  SingleSignOnManagedApplicationInstanceId = "string",
  Status = "Deleting"|"Failed"|"InService"|"Pending"|"Updating"|"Update_Failed"|"Delete_Failed",
  CreationTime = as.POSIXct(
    "2015-01-01"
  ),
  LastModifiedTime = as.POSIXct(
    "2015-01-01"
  ),
  FailureReason = "string",
  AuthMode = "SSO"|"IAM",
  DefaultUserSettings = list(
    ExecutionRole = "string",
    SecurityGroups = list(
      "string"
    ),
    SharingSettings = list(
      NotebookOutputOption = "Allowed"|"Disabled",
      S3OutputPath = "string",
      S3KmsKeyId = "string"
    ),
    JupyterServerAppSettings = list(
      DefaultResourceSpec = list(
        SageMakerImageArn = "string",
        SageMakerImageVersionArn = "string",
        InstanceType = "system"|"ml.t3.micro"|"ml.t3.small"|"ml.t3.medium"|"ml.t3.large"|"ml.t3.xlarge"|"ml.t3.2xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.8xlarge"|"ml.m5.12xlarge"|"ml.m5.16xlarge"|"ml.m5.24xlarge"|"ml.c5.large"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.12xlarge"|"ml.c5.18xlarge"|"ml.c5.24xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"
      )
    ),
    KernelGatewayAppSettings = list(
      DefaultResourceSpec = list(
        SageMakerImageArn = "string",
        SageMakerImageVersionArn = "string",
        InstanceType = "system"|"ml.t3.micro"|"ml.t3.small"|"ml.t3.medium"|"ml.t3.large"|"ml.t3.xlarge"|"ml.t3.2xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.8xlarge"|"ml.m5.12xlarge"|"ml.m5.16xlarge"|"ml.m5.24xlarge"|"ml.c5.large"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.12xlarge"|"ml.c5.18xlarge"|"ml.c5.24xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"
      ),
      CustomImages = list(
        list(
          ImageName = "string",
          ImageVersionNumber = 123,
          AppImageConfigName = "string"
        )
      )
    ),
    TensorBoardAppSettings = list(
      DefaultResourceSpec = list(
        SageMakerImageArn = "string",
        SageMakerImageVersionArn = "string",
        InstanceType = "system"|"ml.t3.micro"|"ml.t3.small"|"ml.t3.medium"|"ml.t3.large"|"ml.t3.xlarge"|"ml.t3.2xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.8xlarge"|"ml.m5.12xlarge"|"ml.m5.16xlarge"|"ml.m5.24xlarge"|"ml.c5.large"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.12xlarge"|"ml.c5.18xlarge"|"ml.c5.24xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"
      )
    )
  ),
  AppNetworkAccessType = "PublicInternetOnly"|"VpcOnly",
  HomeEfsFileSystemKmsKeyId = "string",
  SubnetIds = list(
    "string"
  ),
  Url = "string",
  VpcId = "string",
  KmsKeyId = "string"
)
}
}
\description{
The description of the domain.
}
\section{Request syntax}{
\preformatted{svc$describe_domain(
  DomainId = "string"
)
}
}

\keyword{internal}
