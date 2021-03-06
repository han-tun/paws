% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3_operations.R
\name{s3_get_bucket_intelligent_tiering_configuration}
\alias{s3_get_bucket_intelligent_tiering_configuration}
\title{Gets the S3 Intelligent-Tiering configuration from the specified bucket}
\usage{
s3_get_bucket_intelligent_tiering_configuration(Bucket, Id)
}
\arguments{
\item{Bucket}{[required] The name of the Amazon S3 bucket whose configuration you want to modify
or retrieve.}

\item{Id}{[required] The ID used to identify the S3 Intelligent-Tiering configuration.}
}
\value{
A list with the following syntax:\preformatted{list(
  IntelligentTieringConfiguration = list(
    Id = "string",
    Filter = list(
      Prefix = "string",
      Tag = list(
        Key = "string",
        Value = "string"
      ),
      And = list(
        Prefix = "string",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    ),
    Status = "Enabled"|"Disabled",
    Tierings = list(
      list(
        Days = 123,
        AccessTier = "ARCHIVE_ACCESS"|"DEEP_ARCHIVE_ACCESS"
      )
    )
  )
)
}
}
\description{
Gets the S3 Intelligent-Tiering configuration from the specified bucket.

The S3 Intelligent-Tiering storage class is designed to optimize storage
costs by automatically moving data to the most cost-effective storage
access tier, without additional operational overhead. S3
Intelligent-Tiering delivers automatic cost savings by moving data
between access tiers, when access patterns change.

The S3 Intelligent-Tiering storage class is suitable for objects larger
than 128 KB that you plan to store for at least 30 days. If the size of
an object is less than 128 KB, it is not eligible for auto-tiering.
Smaller objects can be stored, but they are always charged at the
frequent access tier rates in the S3 Intelligent-Tiering storage class.

If you delete an object before the end of the 30-day minimum storage
duration period, you are charged for 30 days. For more information, see
\href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-class-intro.html#sc-dynamic-data-access}{Storage class for automatically optimizing frequently and infrequently accessed objects}.

Operations related to
\code{\link[=s3_get_bucket_intelligent_tiering_configuration]{get_bucket_intelligent_tiering_configuration}}
include:
\itemize{
\item \code{\link[=s3_delete_bucket_intelligent_tiering_configuration]{delete_bucket_intelligent_tiering_configuration}}
\item \code{\link[=s3_put_bucket_intelligent_tiering_configuration]{put_bucket_intelligent_tiering_configuration}}
\item \code{\link[=s3_list_bucket_intelligent_tiering_configurations]{list_bucket_intelligent_tiering_configurations}}
}
}
\section{Request syntax}{
\preformatted{svc$get_bucket_intelligent_tiering_configuration(
  Bucket = "string",
  Id = "string"
)
}
}

\keyword{internal}
