% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3control_operations.R
\name{s3control_get_storage_lens_configuration_tagging}
\alias{s3control_get_storage_lens_configuration_tagging}
\title{Gets the tags of Amazon S3 Storage Lens configuration}
\usage{
s3control_get_storage_lens_configuration_tagging(ConfigId, AccountId)
}
\arguments{
\item{ConfigId}{[required] The ID of the Amazon S3 Storage Lens configuration.}

\item{AccountId}{[required] The account ID of the requester.}
}
\value{
A list with the following syntax:\preformatted{list(
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
Gets the tags of Amazon S3 Storage Lens configuration. For more
information about S3 Storage Lens, see Working with Amazon S3 Storage
Lens in the \emph{Amazon Simple Storage Service Developer Guide}.

To use this action, you must have permission to perform the
\code{s3:GetStorageLensConfigurationTagging} action. For more information,
see \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens.html#storage_lens_IAM}{Setting permissions to use Amazon S3 Storage Lens}
in the \emph{Amazon Simple Storage Service Developer Guide}.
}
\section{Request syntax}{
\preformatted{svc$get_storage_lens_configuration_tagging(
  ConfigId = "string",
  AccountId = "string"
)
}
}

\keyword{internal}
