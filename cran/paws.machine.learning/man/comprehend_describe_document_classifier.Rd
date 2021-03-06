% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/comprehend_operations.R
\name{comprehend_describe_document_classifier}
\alias{comprehend_describe_document_classifier}
\title{Gets the properties associated with a document classifier}
\usage{
comprehend_describe_document_classifier(DocumentClassifierArn)
}
\arguments{
\item{DocumentClassifierArn}{[required] The Amazon Resource Name (ARN) that identifies the document classifier.
The operation returns this identifier in its response.}
}
\value{
A list with the following syntax:\preformatted{list(
  DocumentClassifierProperties = list(
    DocumentClassifierArn = "string",
    LanguageCode = "en"|"es"|"fr"|"de"|"it"|"pt"|"ar"|"hi"|"ja"|"ko"|"zh"|"zh-TW",
    Status = "SUBMITTED"|"TRAINING"|"DELETING"|"STOP_REQUESTED"|"STOPPED"|"IN_ERROR"|"TRAINED",
    Message = "string",
    SubmitTime = as.POSIXct(
      "2015-01-01"
    ),
    EndTime = as.POSIXct(
      "2015-01-01"
    ),
    TrainingStartTime = as.POSIXct(
      "2015-01-01"
    ),
    TrainingEndTime = as.POSIXct(
      "2015-01-01"
    ),
    InputDataConfig = list(
      DataFormat = "COMPREHEND_CSV"|"AUGMENTED_MANIFEST",
      S3Uri = "string",
      LabelDelimiter = "string",
      AugmentedManifests = list(
        list(
          S3Uri = "string",
          AttributeNames = list(
            "string"
          )
        )
      )
    ),
    OutputDataConfig = list(
      S3Uri = "string",
      KmsKeyId = "string"
    ),
    ClassifierMetadata = list(
      NumberOfLabels = 123,
      NumberOfTrainedDocuments = 123,
      NumberOfTestDocuments = 123,
      EvaluationMetrics = list(
        Accuracy = 123.0,
        Precision = 123.0,
        Recall = 123.0,
        F1Score = 123.0,
        MicroPrecision = 123.0,
        MicroRecall = 123.0,
        MicroF1Score = 123.0,
        HammingLoss = 123.0
      )
    ),
    DataAccessRoleArn = "string",
    VolumeKmsKeyId = "string",
    VpcConfig = list(
      SecurityGroupIds = list(
        "string"
      ),
      Subnets = list(
        "string"
      )
    ),
    Mode = "MULTI_CLASS"|"MULTI_LABEL"
  )
)
}
}
\description{
Gets the properties associated with a document classifier.
}
\section{Request syntax}{
\preformatted{svc$describe_document_classifier(
  DocumentClassifierArn = "string"
)
}
}

\keyword{internal}
