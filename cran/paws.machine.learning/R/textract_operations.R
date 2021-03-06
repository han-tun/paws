# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common get_config new_operation new_request send_request
#' @include textract_service.R
NULL

#' Analyzes an input document for relationships between detected items
#'
#' @description
#' Analyzes an input document for relationships between detected items.
#' 
#' The types of information returned are as follows:
#' 
#' -   Form data (key-value pairs). The related information is returned in
#'     two Block objects, each of type `KEY_VALUE_SET`: a KEY `Block`
#'     object and a VALUE `Block` object. For example, *Name: Ana Silva
#'     Carolina* contains a key and value. *Name:* is the key. *Ana Silva
#'     Carolina* is the value.
#' 
#' -   Table and table cell data. A TABLE `Block` object contains
#'     information about a detected table. A CELL `Block` object is
#'     returned for each cell in a table.
#' 
#' -   Lines and words of text. A LINE `Block` object contains one or more
#'     WORD `Block` objects. All lines and words that are detected in the
#'     document are returned (including text that doesn't have a
#'     relationship with the value of `FeatureTypes`).
#' 
#' Selection elements such as check boxes and option buttons (radio
#' buttons) can be detected in form data and in tables. A
#' SELECTION_ELEMENT `Block` object contains information about a selection
#' element, including the selection status.
#' 
#' You can choose which type of analysis to perform by specifying the
#' `FeatureTypes` list.
#' 
#' The output is returned in a list of `Block` objects.
#' 
#' [`analyze_document`][textract_analyze_document] is a synchronous
#' operation. To analyze documents asynchronously, use
#' [`start_document_analysis`][textract_start_document_analysis].
#' 
#' For more information, see [Document Text
#' Analysis](https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html).
#'
#' @usage
#' textract_analyze_document(Document, FeatureTypes, HumanLoopConfig)
#'
#' @param Document &#91;required&#93; The input document as base64-encoded bytes or an Amazon S3 object. If
#' you use the AWS CLI to call Amazon Textract operations, you can't pass
#' image bytes. The document must be an image in JPEG or PNG format.
#' 
#' If you're using an AWS SDK to call Amazon Textract, you might not need
#' to base64-encode image bytes that are passed using the `Bytes` field.
#' @param FeatureTypes &#91;required&#93; A list of the types of analysis to perform. Add TABLES to the list to
#' return information about the tables that are detected in the input
#' document. Add FORMS to return detected form data. To perform both types
#' of analysis, add TABLES and FORMS to `FeatureTypes`. All lines and words
#' detected in the document are included in the response (including text
#' that isn't related to the value of `FeatureTypes`).
#' @param HumanLoopConfig Sets the configuration for the human in the loop workflow for analyzing
#' documents.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   DocumentMetadata = list(
#'     Pages = 123
#'   ),
#'   Blocks = list(
#'     list(
#'       BlockType = "KEY_VALUE_SET"|"PAGE"|"LINE"|"WORD"|"TABLE"|"CELL"|"SELECTION_ELEMENT",
#'       Confidence = 123.0,
#'       Text = "string",
#'       TextType = "HANDWRITING"|"PRINTED",
#'       RowIndex = 123,
#'       ColumnIndex = 123,
#'       RowSpan = 123,
#'       ColumnSpan = 123,
#'       Geometry = list(
#'         BoundingBox = list(
#'           Width = 123.0,
#'           Height = 123.0,
#'           Left = 123.0,
#'           Top = 123.0
#'         ),
#'         Polygon = list(
#'           list(
#'             X = 123.0,
#'             Y = 123.0
#'           )
#'         )
#'       ),
#'       Id = "string",
#'       Relationships = list(
#'         list(
#'           Type = "VALUE"|"CHILD"|"COMPLEX_FEATURES",
#'           Ids = list(
#'             "string"
#'           )
#'         )
#'       ),
#'       EntityTypes = list(
#'         "KEY"|"VALUE"
#'       ),
#'       SelectionStatus = "SELECTED"|"NOT_SELECTED",
#'       Page = 123
#'     )
#'   ),
#'   HumanLoopActivationOutput = list(
#'     HumanLoopArn = "string",
#'     HumanLoopActivationReasons = list(
#'       "string"
#'     ),
#'     HumanLoopActivationConditionsEvaluationResults = "string"
#'   ),
#'   AnalyzeDocumentModelVersion = "string"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$analyze_document(
#'   Document = list(
#'     Bytes = raw,
#'     S3Object = list(
#'       Bucket = "string",
#'       Name = "string",
#'       Version = "string"
#'     )
#'   ),
#'   FeatureTypes = list(
#'     "TABLES"|"FORMS"
#'   ),
#'   HumanLoopConfig = list(
#'     HumanLoopName = "string",
#'     FlowDefinitionArn = "string",
#'     DataAttributes = list(
#'       ContentClassifiers = list(
#'         "FreeOfPersonallyIdentifiableInformation"|"FreeOfAdultContent"
#'       )
#'     )
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname textract_analyze_document
textract_analyze_document <- function(Document, FeatureTypes, HumanLoopConfig = NULL) {
  op <- new_operation(
    name = "AnalyzeDocument",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .textract$analyze_document_input(Document = Document, FeatureTypes = FeatureTypes, HumanLoopConfig = HumanLoopConfig)
  output <- .textract$analyze_document_output()
  config <- get_config()
  svc <- .textract$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.textract$operations$analyze_document <- textract_analyze_document

#' Detects text in the input document
#'
#' @description
#' Detects text in the input document. Amazon Textract can detect lines of
#' text and the words that make up a line of text. The input document must
#' be an image in JPEG or PNG format.
#' [`detect_document_text`][textract_detect_document_text] returns the
#' detected text in an array of Block objects.
#' 
#' Each document page has as an associated `Block` of type PAGE. Each PAGE
#' `Block` object is the parent of LINE `Block` objects that represent the
#' lines of detected text on a page. A LINE `Block` object is a parent for
#' each word that makes up the line. Words are represented by `Block`
#' objects of type WORD.
#' 
#' [`detect_document_text`][textract_detect_document_text] is a synchronous
#' operation. To analyze documents asynchronously, use
#' [`start_document_text_detection`][textract_start_document_text_detection].
#' 
#' For more information, see [Document Text
#' Detection](https://docs.aws.amazon.com/textract/latest/dg/how-it-works-detecting.html).
#'
#' @usage
#' textract_detect_document_text(Document)
#'
#' @param Document &#91;required&#93; The input document as base64-encoded bytes or an Amazon S3 object. If
#' you use the AWS CLI to call Amazon Textract operations, you can't pass
#' image bytes. The document must be an image in JPEG or PNG format.
#' 
#' If you're using an AWS SDK to call Amazon Textract, you might not need
#' to base64-encode image bytes that are passed using the `Bytes` field.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   DocumentMetadata = list(
#'     Pages = 123
#'   ),
#'   Blocks = list(
#'     list(
#'       BlockType = "KEY_VALUE_SET"|"PAGE"|"LINE"|"WORD"|"TABLE"|"CELL"|"SELECTION_ELEMENT",
#'       Confidence = 123.0,
#'       Text = "string",
#'       TextType = "HANDWRITING"|"PRINTED",
#'       RowIndex = 123,
#'       ColumnIndex = 123,
#'       RowSpan = 123,
#'       ColumnSpan = 123,
#'       Geometry = list(
#'         BoundingBox = list(
#'           Width = 123.0,
#'           Height = 123.0,
#'           Left = 123.0,
#'           Top = 123.0
#'         ),
#'         Polygon = list(
#'           list(
#'             X = 123.0,
#'             Y = 123.0
#'           )
#'         )
#'       ),
#'       Id = "string",
#'       Relationships = list(
#'         list(
#'           Type = "VALUE"|"CHILD"|"COMPLEX_FEATURES",
#'           Ids = list(
#'             "string"
#'           )
#'         )
#'       ),
#'       EntityTypes = list(
#'         "KEY"|"VALUE"
#'       ),
#'       SelectionStatus = "SELECTED"|"NOT_SELECTED",
#'       Page = 123
#'     )
#'   ),
#'   DetectDocumentTextModelVersion = "string"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$detect_document_text(
#'   Document = list(
#'     Bytes = raw,
#'     S3Object = list(
#'       Bucket = "string",
#'       Name = "string",
#'       Version = "string"
#'     )
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname textract_detect_document_text
textract_detect_document_text <- function(Document) {
  op <- new_operation(
    name = "DetectDocumentText",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .textract$detect_document_text_input(Document = Document)
  output <- .textract$detect_document_text_output()
  config <- get_config()
  svc <- .textract$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.textract$operations$detect_document_text <- textract_detect_document_text

#' Gets the results for an Amazon Textract asynchronous operation that
#' analyzes text in a document
#'
#' @description
#' Gets the results for an Amazon Textract asynchronous operation that
#' analyzes text in a document.
#' 
#' You start asynchronous text analysis by calling
#' [`start_document_analysis`][textract_start_document_analysis], which
#' returns a job identifier (`JobId`). When the text analysis operation
#' finishes, Amazon Textract publishes a completion status to the Amazon
#' Simple Notification Service (Amazon SNS) topic that's registered in the
#' initial call to
#' [`start_document_analysis`][textract_start_document_analysis]. To get
#' the results of the text-detection operation, first check that the status
#' value published to the Amazon SNS topic is `SUCCEEDED`. If so, call
#' [`get_document_analysis`][textract_get_document_analysis], and pass the
#' job identifier (`JobId`) from the initial call to
#' [`start_document_analysis`][textract_start_document_analysis].
#' 
#' [`get_document_analysis`][textract_get_document_analysis] returns an
#' array of Block objects. The following types of information are returned:
#' 
#' -   Form data (key-value pairs). The related information is returned in
#'     two Block objects, each of type `KEY_VALUE_SET`: a KEY `Block`
#'     object and a VALUE `Block` object. For example, *Name: Ana Silva
#'     Carolina* contains a key and value. *Name:* is the key. *Ana Silva
#'     Carolina* is the value.
#' 
#' -   Table and table cell data. A TABLE `Block` object contains
#'     information about a detected table. A CELL `Block` object is
#'     returned for each cell in a table.
#' 
#' -   Lines and words of text. A LINE `Block` object contains one or more
#'     WORD `Block` objects. All lines and words that are detected in the
#'     document are returned (including text that doesn't have a
#'     relationship with the value of the
#'     [`start_document_analysis`][textract_start_document_analysis]
#'     `FeatureTypes` input parameter).
#' 
#' Selection elements such as check boxes and option buttons (radio
#' buttons) can be detected in form data and in tables. A
#' SELECTION_ELEMENT `Block` object contains information about a selection
#' element, including the selection status.
#' 
#' Use the `MaxResults` parameter to limit the number of blocks that are
#' returned. If there are more results than specified in `MaxResults`, the
#' value of `NextToken` in the operation response contains a pagination
#' token for getting the next set of results. To get the next page of
#' results, call [`get_document_analysis`][textract_get_document_analysis],
#' and populate the `NextToken` request parameter with the token value
#' that's returned from the previous call to
#' [`get_document_analysis`][textract_get_document_analysis].
#' 
#' For more information, see [Document Text
#' Analysis](https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html).
#'
#' @usage
#' textract_get_document_analysis(JobId, MaxResults, NextToken)
#'
#' @param JobId &#91;required&#93; A unique identifier for the text-detection job. The `JobId` is returned
#' from [`start_document_analysis`][textract_start_document_analysis]. A
#' `JobId` value is only valid for 7 days.
#' @param MaxResults The maximum number of results to return per paginated call. The largest
#' value that you can specify is 1,000. If you specify a value greater than
#' 1,000, a maximum of 1,000 results is returned. The default value is
#' 1,000.
#' @param NextToken If the previous response was incomplete (because there are more blocks
#' to retrieve), Amazon Textract returns a pagination token in the
#' response. You can use this pagination token to retrieve the next set of
#' blocks.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   DocumentMetadata = list(
#'     Pages = 123
#'   ),
#'   JobStatus = "IN_PROGRESS"|"SUCCEEDED"|"FAILED"|"PARTIAL_SUCCESS",
#'   NextToken = "string",
#'   Blocks = list(
#'     list(
#'       BlockType = "KEY_VALUE_SET"|"PAGE"|"LINE"|"WORD"|"TABLE"|"CELL"|"SELECTION_ELEMENT",
#'       Confidence = 123.0,
#'       Text = "string",
#'       TextType = "HANDWRITING"|"PRINTED",
#'       RowIndex = 123,
#'       ColumnIndex = 123,
#'       RowSpan = 123,
#'       ColumnSpan = 123,
#'       Geometry = list(
#'         BoundingBox = list(
#'           Width = 123.0,
#'           Height = 123.0,
#'           Left = 123.0,
#'           Top = 123.0
#'         ),
#'         Polygon = list(
#'           list(
#'             X = 123.0,
#'             Y = 123.0
#'           )
#'         )
#'       ),
#'       Id = "string",
#'       Relationships = list(
#'         list(
#'           Type = "VALUE"|"CHILD"|"COMPLEX_FEATURES",
#'           Ids = list(
#'             "string"
#'           )
#'         )
#'       ),
#'       EntityTypes = list(
#'         "KEY"|"VALUE"
#'       ),
#'       SelectionStatus = "SELECTED"|"NOT_SELECTED",
#'       Page = 123
#'     )
#'   ),
#'   Warnings = list(
#'     list(
#'       ErrorCode = "string",
#'       Pages = list(
#'         123
#'       )
#'     )
#'   ),
#'   StatusMessage = "string",
#'   AnalyzeDocumentModelVersion = "string"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$get_document_analysis(
#'   JobId = "string",
#'   MaxResults = 123,
#'   NextToken = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname textract_get_document_analysis
textract_get_document_analysis <- function(JobId, MaxResults = NULL, NextToken = NULL) {
  op <- new_operation(
    name = "GetDocumentAnalysis",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .textract$get_document_analysis_input(JobId = JobId, MaxResults = MaxResults, NextToken = NextToken)
  output <- .textract$get_document_analysis_output()
  config <- get_config()
  svc <- .textract$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.textract$operations$get_document_analysis <- textract_get_document_analysis

#' Gets the results for an Amazon Textract asynchronous operation that
#' detects text in a document
#'
#' @description
#' Gets the results for an Amazon Textract asynchronous operation that
#' detects text in a document. Amazon Textract can detect lines of text and
#' the words that make up a line of text.
#' 
#' You start asynchronous text detection by calling
#' [`start_document_text_detection`][textract_start_document_text_detection],
#' which returns a job identifier (`JobId`). When the text detection
#' operation finishes, Amazon Textract publishes a completion status to the
#' Amazon Simple Notification Service (Amazon SNS) topic that's registered
#' in the initial call to
#' [`start_document_text_detection`][textract_start_document_text_detection].
#' To get the results of the text-detection operation, first check that the
#' status value published to the Amazon SNS topic is `SUCCEEDED`. If so,
#' call
#' [`get_document_text_detection`][textract_get_document_text_detection],
#' and pass the job identifier (`JobId`) from the initial call to
#' [`start_document_text_detection`][textract_start_document_text_detection].
#' 
#' [`get_document_text_detection`][textract_get_document_text_detection]
#' returns an array of Block objects.
#' 
#' Each document page has as an associated `Block` of type PAGE. Each PAGE
#' `Block` object is the parent of LINE `Block` objects that represent the
#' lines of detected text on a page. A LINE `Block` object is a parent for
#' each word that makes up the line. Words are represented by `Block`
#' objects of type WORD.
#' 
#' Use the MaxResults parameter to limit the number of blocks that are
#' returned. If there are more results than specified in `MaxResults`, the
#' value of `NextToken` in the operation response contains a pagination
#' token for getting the next set of results. To get the next page of
#' results, call
#' [`get_document_text_detection`][textract_get_document_text_detection],
#' and populate the `NextToken` request parameter with the token value
#' that's returned from the previous call to
#' [`get_document_text_detection`][textract_get_document_text_detection].
#' 
#' For more information, see [Document Text
#' Detection](https://docs.aws.amazon.com/textract/latest/dg/how-it-works-detecting.html).
#'
#' @usage
#' textract_get_document_text_detection(JobId, MaxResults, NextToken)
#'
#' @param JobId &#91;required&#93; A unique identifier for the text detection job. The `JobId` is returned
#' from
#' [`start_document_text_detection`][textract_start_document_text_detection].
#' A `JobId` value is only valid for 7 days.
#' @param MaxResults The maximum number of results to return per paginated call. The largest
#' value you can specify is 1,000. If you specify a value greater than
#' 1,000, a maximum of 1,000 results is returned. The default value is
#' 1,000.
#' @param NextToken If the previous response was incomplete (because there are more blocks
#' to retrieve), Amazon Textract returns a pagination token in the
#' response. You can use this pagination token to retrieve the next set of
#' blocks.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   DocumentMetadata = list(
#'     Pages = 123
#'   ),
#'   JobStatus = "IN_PROGRESS"|"SUCCEEDED"|"FAILED"|"PARTIAL_SUCCESS",
#'   NextToken = "string",
#'   Blocks = list(
#'     list(
#'       BlockType = "KEY_VALUE_SET"|"PAGE"|"LINE"|"WORD"|"TABLE"|"CELL"|"SELECTION_ELEMENT",
#'       Confidence = 123.0,
#'       Text = "string",
#'       TextType = "HANDWRITING"|"PRINTED",
#'       RowIndex = 123,
#'       ColumnIndex = 123,
#'       RowSpan = 123,
#'       ColumnSpan = 123,
#'       Geometry = list(
#'         BoundingBox = list(
#'           Width = 123.0,
#'           Height = 123.0,
#'           Left = 123.0,
#'           Top = 123.0
#'         ),
#'         Polygon = list(
#'           list(
#'             X = 123.0,
#'             Y = 123.0
#'           )
#'         )
#'       ),
#'       Id = "string",
#'       Relationships = list(
#'         list(
#'           Type = "VALUE"|"CHILD"|"COMPLEX_FEATURES",
#'           Ids = list(
#'             "string"
#'           )
#'         )
#'       ),
#'       EntityTypes = list(
#'         "KEY"|"VALUE"
#'       ),
#'       SelectionStatus = "SELECTED"|"NOT_SELECTED",
#'       Page = 123
#'     )
#'   ),
#'   Warnings = list(
#'     list(
#'       ErrorCode = "string",
#'       Pages = list(
#'         123
#'       )
#'     )
#'   ),
#'   StatusMessage = "string",
#'   DetectDocumentTextModelVersion = "string"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$get_document_text_detection(
#'   JobId = "string",
#'   MaxResults = 123,
#'   NextToken = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname textract_get_document_text_detection
textract_get_document_text_detection <- function(JobId, MaxResults = NULL, NextToken = NULL) {
  op <- new_operation(
    name = "GetDocumentTextDetection",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .textract$get_document_text_detection_input(JobId = JobId, MaxResults = MaxResults, NextToken = NextToken)
  output <- .textract$get_document_text_detection_output()
  config <- get_config()
  svc <- .textract$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.textract$operations$get_document_text_detection <- textract_get_document_text_detection

#' Starts the asynchronous analysis of an input document for relationships
#' between detected items such as key-value pairs, tables, and selection
#' elements
#'
#' @description
#' Starts the asynchronous analysis of an input document for relationships
#' between detected items such as key-value pairs, tables, and selection
#' elements.
#' 
#' [`start_document_analysis`][textract_start_document_analysis] can
#' analyze text in documents that are in JPEG, PNG, and PDF format. The
#' documents are stored in an Amazon S3 bucket. Use DocumentLocation to
#' specify the bucket name and file name of the document.
#' 
#' [`start_document_analysis`][textract_start_document_analysis] returns a
#' job identifier (`JobId`) that you use to get the results of the
#' operation. When text analysis is finished, Amazon Textract publishes a
#' completion status to the Amazon Simple Notification Service (Amazon SNS)
#' topic that you specify in `NotificationChannel`. To get the results of
#' the text analysis operation, first check that the status value published
#' to the Amazon SNS topic is `SUCCEEDED`. If so, call
#' [`get_document_analysis`][textract_get_document_analysis], and pass the
#' job identifier (`JobId`) from the initial call to
#' [`start_document_analysis`][textract_start_document_analysis].
#' 
#' For more information, see [Document Text
#' Analysis](https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html).
#'
#' @usage
#' textract_start_document_analysis(DocumentLocation, FeatureTypes,
#'   ClientRequestToken, JobTag, NotificationChannel, OutputConfig, KMSKeyId)
#'
#' @param DocumentLocation &#91;required&#93; The location of the document to be processed.
#' @param FeatureTypes &#91;required&#93; A list of the types of analysis to perform. Add TABLES to the list to
#' return information about the tables that are detected in the input
#' document. Add FORMS to return detected form data. To perform both types
#' of analysis, add TABLES and FORMS to `FeatureTypes`. All lines and words
#' detected in the document are included in the response (including text
#' that isn't related to the value of `FeatureTypes`).
#' @param ClientRequestToken The idempotent token that you use to identify the start request. If you
#' use the same token with multiple
#' [`start_document_analysis`][textract_start_document_analysis] requests,
#' the same `JobId` is returned. Use `ClientRequestToken` to prevent the
#' same job from being accidentally started more than once. For more
#' information, see [Calling Amazon Textract Asynchronous
#' Operations](https://docs.aws.amazon.com/textract/latest/dg/api-async.html).
#' @param JobTag An identifier that you specify that's included in the completion
#' notification published to the Amazon SNS topic. For example, you can use
#' `JobTag` to identify the type of document that the completion
#' notification corresponds to (such as a tax form or a receipt).
#' @param NotificationChannel The Amazon SNS topic ARN that you want Amazon Textract to publish the
#' completion status of the operation to.
#' @param OutputConfig Sets if the output will go to a customer defined bucket. By default,
#' Amazon Textract will save the results internally to be accessed by the
#' GetDocumentAnalysis operation.
#' @param KMSKeyId The KMS key used to encrypt the inference results. This can be in either
#' Key ID or Key Alias format. When a KMS key is provided, the KMS key will
#' be used for server-side encryption of the objects in the customer
#' bucket. When this parameter is not enabled, the result will be encrypted
#' server side,using SSE-S3.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   JobId = "string"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$start_document_analysis(
#'   DocumentLocation = list(
#'     S3Object = list(
#'       Bucket = "string",
#'       Name = "string",
#'       Version = "string"
#'     )
#'   ),
#'   FeatureTypes = list(
#'     "TABLES"|"FORMS"
#'   ),
#'   ClientRequestToken = "string",
#'   JobTag = "string",
#'   NotificationChannel = list(
#'     SNSTopicArn = "string",
#'     RoleArn = "string"
#'   ),
#'   OutputConfig = list(
#'     S3Bucket = "string",
#'     S3Prefix = "string"
#'   ),
#'   KMSKeyId = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname textract_start_document_analysis
textract_start_document_analysis <- function(DocumentLocation, FeatureTypes, ClientRequestToken = NULL, JobTag = NULL, NotificationChannel = NULL, OutputConfig = NULL, KMSKeyId = NULL) {
  op <- new_operation(
    name = "StartDocumentAnalysis",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .textract$start_document_analysis_input(DocumentLocation = DocumentLocation, FeatureTypes = FeatureTypes, ClientRequestToken = ClientRequestToken, JobTag = JobTag, NotificationChannel = NotificationChannel, OutputConfig = OutputConfig, KMSKeyId = KMSKeyId)
  output <- .textract$start_document_analysis_output()
  config <- get_config()
  svc <- .textract$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.textract$operations$start_document_analysis <- textract_start_document_analysis

#' Starts the asynchronous detection of text in a document
#'
#' @description
#' Starts the asynchronous detection of text in a document. Amazon Textract
#' can detect lines of text and the words that make up a line of text.
#' 
#' [`start_document_text_detection`][textract_start_document_text_detection]
#' can analyze text in documents that are in JPEG, PNG, and PDF format. The
#' documents are stored in an Amazon S3 bucket. Use DocumentLocation to
#' specify the bucket name and file name of the document.
#' 
#' `StartTextDetection` returns a job identifier (`JobId`) that you use to
#' get the results of the operation. When text detection is finished,
#' Amazon Textract publishes a completion status to the Amazon Simple
#' Notification Service (Amazon SNS) topic that you specify in
#' `NotificationChannel`. To get the results of the text detection
#' operation, first check that the status value published to the Amazon SNS
#' topic is `SUCCEEDED`. If so, call
#' [`get_document_text_detection`][textract_get_document_text_detection],
#' and pass the job identifier (`JobId`) from the initial call to
#' [`start_document_text_detection`][textract_start_document_text_detection].
#' 
#' For more information, see [Document Text
#' Detection](https://docs.aws.amazon.com/textract/latest/dg/how-it-works-detecting.html).
#'
#' @usage
#' textract_start_document_text_detection(DocumentLocation,
#'   ClientRequestToken, JobTag, NotificationChannel, OutputConfig, KMSKeyId)
#'
#' @param DocumentLocation &#91;required&#93; The location of the document to be processed.
#' @param ClientRequestToken The idempotent token that's used to identify the start request. If you
#' use the same token with multiple
#' [`start_document_text_detection`][textract_start_document_text_detection]
#' requests, the same `JobId` is returned. Use `ClientRequestToken` to
#' prevent the same job from being accidentally started more than once. For
#' more information, see [Calling Amazon Textract Asynchronous
#' Operations](https://docs.aws.amazon.com/textract/latest/dg/api-async.html).
#' @param JobTag An identifier that you specify that's included in the completion
#' notification published to the Amazon SNS topic. For example, you can use
#' `JobTag` to identify the type of document that the completion
#' notification corresponds to (such as a tax form or a receipt).
#' @param NotificationChannel The Amazon SNS topic ARN that you want Amazon Textract to publish the
#' completion status of the operation to.
#' @param OutputConfig Sets if the output will go to a customer defined bucket. By default
#' Amazon Textract will save the results internally to be accessed with the
#' GetDocumentTextDetection operation.
#' @param KMSKeyId The KMS key used to encrypt the inference results. This can be in either
#' Key ID or Key Alias format. When a KMS key is provided, the KMS key will
#' be used for server-side encryption of the objects in the customer
#' bucket. When this parameter is not enabled, the result will be encrypted
#' server side,using SSE-S3.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   JobId = "string"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$start_document_text_detection(
#'   DocumentLocation = list(
#'     S3Object = list(
#'       Bucket = "string",
#'       Name = "string",
#'       Version = "string"
#'     )
#'   ),
#'   ClientRequestToken = "string",
#'   JobTag = "string",
#'   NotificationChannel = list(
#'     SNSTopicArn = "string",
#'     RoleArn = "string"
#'   ),
#'   OutputConfig = list(
#'     S3Bucket = "string",
#'     S3Prefix = "string"
#'   ),
#'   KMSKeyId = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname textract_start_document_text_detection
textract_start_document_text_detection <- function(DocumentLocation, ClientRequestToken = NULL, JobTag = NULL, NotificationChannel = NULL, OutputConfig = NULL, KMSKeyId = NULL) {
  op <- new_operation(
    name = "StartDocumentTextDetection",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .textract$start_document_text_detection_input(DocumentLocation = DocumentLocation, ClientRequestToken = ClientRequestToken, JobTag = JobTag, NotificationChannel = NotificationChannel, OutputConfig = OutputConfig, KMSKeyId = KMSKeyId)
  output <- .textract$start_document_text_detection_output()
  config <- get_config()
  svc <- .textract$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.textract$operations$start_document_text_detection <- textract_start_document_text_detection
