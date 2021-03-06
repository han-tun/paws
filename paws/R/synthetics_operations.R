# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common get_config new_operation new_request send_request
#' @include synthetics_service.R
NULL

#' Creates a canary
#'
#' @description
#' Creates a canary. Canaries are scripts that monitor your endpoints and
#' APIs from the outside-in. Canaries help you check the availability and
#' latency of your web services and troubleshoot anomalies by investigating
#' load time data, screenshots of the UI, logs, and metrics. You can set up
#' a canary to run continuously or just once.
#' 
#' Do not use [`create_canary`][synthetics_create_canary] to modify an
#' existing canary. Use [`update_canary`][synthetics_update_canary]
#' instead.
#' 
#' To create canaries, you must have the `CloudWatchSyntheticsFullAccess`
#' policy. If you are creating a new IAM role for the canary, you also need
#' the the `iam:CreateRole`, `iam:CreatePolicy` and `iam:AttachRolePolicy`
#' permissions. For more information, see [Necessary Roles and
#' Permissions](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Roles.html).
#' 
#' Do not include secrets or proprietary information in your canary names.
#' The canary name makes up part of the Amazon Resource Name (ARN) for the
#' canary, and the ARN is included in outbound calls over the internet. For
#' more information, see [Security Considerations for Synthetics
#' Canaries](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/servicelens_canaries_security.html).
#'
#' @usage
#' synthetics_create_canary(Name, Code, ArtifactS3Location,
#'   ExecutionRoleArn, Schedule, RunConfig, SuccessRetentionPeriodInDays,
#'   FailureRetentionPeriodInDays, RuntimeVersion, VpcConfig, Tags)
#'
#' @param Name &#91;required&#93; The name for this canary. Be sure to give it a descriptive name that
#' distinguishes it from other canaries in your account.
#' 
#' Do not include secrets or proprietary information in your canary names.
#' The canary name makes up part of the canary ARN, and the ARN is included
#' in outbound calls over the internet. For more information, see [Security
#' Considerations for Synthetics
#' Canaries](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/servicelens_canaries_security.html).
#' @param Code &#91;required&#93; A structure that includes the entry point from which the canary should
#' start running your script. If the script is stored in an S3 bucket, the
#' bucket name, key, and version are also included.
#' @param ArtifactS3Location &#91;required&#93; The location in Amazon S3 where Synthetics stores artifacts from the
#' test runs of this canary. Artifacts include the log file, screenshots,
#' and HAR files.
#' @param ExecutionRoleArn &#91;required&#93; The ARN of the IAM role to be used to run the canary. This role must
#' already exist, and must include `lambda.amazonaws.com` as a principal in
#' the trust policy. The role must also have the following permissions:
#' 
#' -   `s3:PutObject`
#' 
#' -   `s3:GetBucketLocation`
#' 
#' -   `s3:ListAllMyBuckets`
#' 
#' -   `cloudwatch:PutMetricData`
#' 
#' -   `logs:CreateLogGroup`
#' 
#' -   `logs:CreateLogStream`
#' 
#' -   `logs:PutLogEvents`
#' @param Schedule &#91;required&#93; A structure that contains information about how often the canary is to
#' run and when these test runs are to stop.
#' @param RunConfig A structure that contains the configuration for individual canary runs,
#' such as timeout value.
#' @param SuccessRetentionPeriodInDays The number of days to retain data about successful runs of this canary.
#' If you omit this field, the default of 31 days is used. The valid range
#' is 1 to 455 days.
#' @param FailureRetentionPeriodInDays The number of days to retain data about failed runs of this canary. If
#' you omit this field, the default of 31 days is used. The valid range is
#' 1 to 455 days.
#' @param RuntimeVersion &#91;required&#93; Specifies the runtime version to use for the canary. For a list of valid
#' runtime versions and more information about runtime versions, see
#' [Canary Runtime
#' Versions](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html).
#' @param VpcConfig If this canary is to test an endpoint in a VPC, this structure contains
#' information about the subnet and security groups of the VPC endpoint.
#' For more information, see [Running a Canary in a
#' VPC](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_VPC.html).
#' @param Tags A list of key-value pairs to associate with the canary. You can
#' associate as many as 50 tags with a canary.
#' 
#' Tags can help you organize and categorize your resources. You can also
#' use them to scope user permissions, by granting a user permission to
#' access or change only the resources that have certain tag values.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   Canary = list(
#'     Id = "string",
#'     Name = "string",
#'     Code = list(
#'       SourceLocationArn = "string",
#'       Handler = "string"
#'     ),
#'     ExecutionRoleArn = "string",
#'     Schedule = list(
#'       Expression = "string",
#'       DurationInSeconds = 123
#'     ),
#'     RunConfig = list(
#'       TimeoutInSeconds = 123,
#'       MemoryInMB = 123,
#'       ActiveTracing = TRUE|FALSE
#'     ),
#'     SuccessRetentionPeriodInDays = 123,
#'     FailureRetentionPeriodInDays = 123,
#'     Status = list(
#'       State = "CREATING"|"READY"|"STARTING"|"RUNNING"|"UPDATING"|"STOPPING"|"STOPPED"|"ERROR"|"DELETING",
#'       StateReason = "string",
#'       StateReasonCode = "INVALID_PERMISSIONS"
#'     ),
#'     Timeline = list(
#'       Created = as.POSIXct(
#'         "2015-01-01"
#'       ),
#'       LastModified = as.POSIXct(
#'         "2015-01-01"
#'       ),
#'       LastStarted = as.POSIXct(
#'         "2015-01-01"
#'       ),
#'       LastStopped = as.POSIXct(
#'         "2015-01-01"
#'       )
#'     ),
#'     ArtifactS3Location = "string",
#'     EngineArn = "string",
#'     RuntimeVersion = "string",
#'     VpcConfig = list(
#'       VpcId = "string",
#'       SubnetIds = list(
#'         "string"
#'       ),
#'       SecurityGroupIds = list(
#'         "string"
#'       )
#'     ),
#'     Tags = list(
#'       "string"
#'     )
#'   )
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$create_canary(
#'   Name = "string",
#'   Code = list(
#'     S3Bucket = "string",
#'     S3Key = "string",
#'     S3Version = "string",
#'     ZipFile = raw,
#'     Handler = "string"
#'   ),
#'   ArtifactS3Location = "string",
#'   ExecutionRoleArn = "string",
#'   Schedule = list(
#'     Expression = "string",
#'     DurationInSeconds = 123
#'   ),
#'   RunConfig = list(
#'     TimeoutInSeconds = 123,
#'     MemoryInMB = 123,
#'     ActiveTracing = TRUE|FALSE,
#'     EnvironmentVariables = list(
#'       "string"
#'     )
#'   ),
#'   SuccessRetentionPeriodInDays = 123,
#'   FailureRetentionPeriodInDays = 123,
#'   RuntimeVersion = "string",
#'   VpcConfig = list(
#'     SubnetIds = list(
#'       "string"
#'     ),
#'     SecurityGroupIds = list(
#'       "string"
#'     )
#'   ),
#'   Tags = list(
#'     "string"
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname synthetics_create_canary
synthetics_create_canary <- function(Name, Code, ArtifactS3Location, ExecutionRoleArn, Schedule, RunConfig = NULL, SuccessRetentionPeriodInDays = NULL, FailureRetentionPeriodInDays = NULL, RuntimeVersion, VpcConfig = NULL, Tags = NULL) {
  op <- new_operation(
    name = "CreateCanary",
    http_method = "POST",
    http_path = "/canary",
    paginator = list()
  )
  input <- .synthetics$create_canary_input(Name = Name, Code = Code, ArtifactS3Location = ArtifactS3Location, ExecutionRoleArn = ExecutionRoleArn, Schedule = Schedule, RunConfig = RunConfig, SuccessRetentionPeriodInDays = SuccessRetentionPeriodInDays, FailureRetentionPeriodInDays = FailureRetentionPeriodInDays, RuntimeVersion = RuntimeVersion, VpcConfig = VpcConfig, Tags = Tags)
  output <- .synthetics$create_canary_output()
  config <- get_config()
  svc <- .synthetics$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.synthetics$operations$create_canary <- synthetics_create_canary

#' Permanently deletes the specified canary
#'
#' @description
#' Permanently deletes the specified canary.
#' 
#' When you delete a canary, resources used and created by the canary are
#' not automatically deleted. After you delete a canary that you do not
#' intend to use again, you should also delete the following:
#' 
#' -   The Lambda functions and layers used by this canary. These have the
#'     prefix `cwsyn-MyCanaryName `.
#' 
#' -   The CloudWatch alarms created for this canary. These alarms have a
#'     name of `Synthetics-SharpDrop-Alarm-MyCanaryName `.
#' 
#' -   Amazon S3 objects and buckets, such as the canary's artifact
#'     location.
#' 
#' -   IAM roles created for the canary. If they were created in the
#'     console, these roles have the name
#'     ` role/service-role/CloudWatchSyntheticsRole-MyCanaryName `.
#' 
#' -   CloudWatch Logs log groups created for the canary. These logs groups
#'     have the name `/aws/lambda/cwsyn-MyCanaryName `.
#' 
#' Before you delete a canary, you might want to use
#' [`get_canary`][synthetics_get_canary] to display the information about
#' this canary. Make note of the information returned by this operation so
#' that you can delete these resources after you delete the canary.
#'
#' @usage
#' synthetics_delete_canary(Name)
#'
#' @param Name &#91;required&#93; The name of the canary that you want to delete. To find the names of
#' your canaries, use [`describe_canaries`][synthetics_describe_canaries].
#'
#' @return
#' An empty list.
#'
#' @section Request syntax:
#' ```
#' svc$delete_canary(
#'   Name = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname synthetics_delete_canary
synthetics_delete_canary <- function(Name) {
  op <- new_operation(
    name = "DeleteCanary",
    http_method = "DELETE",
    http_path = "/canary/{name}",
    paginator = list()
  )
  input <- .synthetics$delete_canary_input(Name = Name)
  output <- .synthetics$delete_canary_output()
  config <- get_config()
  svc <- .synthetics$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.synthetics$operations$delete_canary <- synthetics_delete_canary

#' This operation returns a list of the canaries in your account, along
#' with full details about each canary
#'
#' @description
#' This operation returns a list of the canaries in your account, along
#' with full details about each canary.
#' 
#' This operation does not have resource-level authorization, so if a user
#' is able to use [`describe_canaries`][synthetics_describe_canaries], the
#' user can see all of the canaries in the account. A deny policy can only
#' be used to restrict access to all canaries. It cannot be used on
#' specific resources.
#'
#' @usage
#' synthetics_describe_canaries(NextToken, MaxResults)
#'
#' @param NextToken A token that indicates that there is more data available. You can use
#' this token in a subsequent operation to retrieve the next set of
#' results.
#' @param MaxResults Specify this parameter to limit how many canaries are returned each time
#' you use the [`describe_canaries`][synthetics_describe_canaries]
#' operation. If you omit this parameter, the default of 100 is used.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   Canaries = list(
#'     list(
#'       Id = "string",
#'       Name = "string",
#'       Code = list(
#'         SourceLocationArn = "string",
#'         Handler = "string"
#'       ),
#'       ExecutionRoleArn = "string",
#'       Schedule = list(
#'         Expression = "string",
#'         DurationInSeconds = 123
#'       ),
#'       RunConfig = list(
#'         TimeoutInSeconds = 123,
#'         MemoryInMB = 123,
#'         ActiveTracing = TRUE|FALSE
#'       ),
#'       SuccessRetentionPeriodInDays = 123,
#'       FailureRetentionPeriodInDays = 123,
#'       Status = list(
#'         State = "CREATING"|"READY"|"STARTING"|"RUNNING"|"UPDATING"|"STOPPING"|"STOPPED"|"ERROR"|"DELETING",
#'         StateReason = "string",
#'         StateReasonCode = "INVALID_PERMISSIONS"
#'       ),
#'       Timeline = list(
#'         Created = as.POSIXct(
#'           "2015-01-01"
#'         ),
#'         LastModified = as.POSIXct(
#'           "2015-01-01"
#'         ),
#'         LastStarted = as.POSIXct(
#'           "2015-01-01"
#'         ),
#'         LastStopped = as.POSIXct(
#'           "2015-01-01"
#'         )
#'       ),
#'       ArtifactS3Location = "string",
#'       EngineArn = "string",
#'       RuntimeVersion = "string",
#'       VpcConfig = list(
#'         VpcId = "string",
#'         SubnetIds = list(
#'           "string"
#'         ),
#'         SecurityGroupIds = list(
#'           "string"
#'         )
#'       ),
#'       Tags = list(
#'         "string"
#'       )
#'     )
#'   ),
#'   NextToken = "string"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$describe_canaries(
#'   NextToken = "string",
#'   MaxResults = 123
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname synthetics_describe_canaries
synthetics_describe_canaries <- function(NextToken = NULL, MaxResults = NULL) {
  op <- new_operation(
    name = "DescribeCanaries",
    http_method = "POST",
    http_path = "/canaries",
    paginator = list()
  )
  input <- .synthetics$describe_canaries_input(NextToken = NextToken, MaxResults = MaxResults)
  output <- .synthetics$describe_canaries_output()
  config <- get_config()
  svc <- .synthetics$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.synthetics$operations$describe_canaries <- synthetics_describe_canaries

#' Use this operation to see information from the most recent run of each
#' canary that you have created
#'
#' @description
#' Use this operation to see information from the most recent run of each
#' canary that you have created.
#'
#' @usage
#' synthetics_describe_canaries_last_run(NextToken, MaxResults)
#'
#' @param NextToken A token that indicates that there is more data available. You can use
#' this token in a subsequent
#' [`describe_canaries`][synthetics_describe_canaries] operation to
#' retrieve the next set of results.
#' @param MaxResults Specify this parameter to limit how many runs are returned each time you
#' use the `DescribeLastRun` operation. If you omit this parameter, the
#' default of 100 is used.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   CanariesLastRun = list(
#'     list(
#'       CanaryName = "string",
#'       LastRun = list(
#'         Id = "string",
#'         Name = "string",
#'         Status = list(
#'           State = "RUNNING"|"PASSED"|"FAILED",
#'           StateReason = "string",
#'           StateReasonCode = "CANARY_FAILURE"|"EXECUTION_FAILURE"
#'         ),
#'         Timeline = list(
#'           Started = as.POSIXct(
#'             "2015-01-01"
#'           ),
#'           Completed = as.POSIXct(
#'             "2015-01-01"
#'           )
#'         ),
#'         ArtifactS3Location = "string"
#'       )
#'     )
#'   ),
#'   NextToken = "string"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$describe_canaries_last_run(
#'   NextToken = "string",
#'   MaxResults = 123
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname synthetics_describe_canaries_last_run
synthetics_describe_canaries_last_run <- function(NextToken = NULL, MaxResults = NULL) {
  op <- new_operation(
    name = "DescribeCanariesLastRun",
    http_method = "POST",
    http_path = "/canaries/last-run",
    paginator = list()
  )
  input <- .synthetics$describe_canaries_last_run_input(NextToken = NextToken, MaxResults = MaxResults)
  output <- .synthetics$describe_canaries_last_run_output()
  config <- get_config()
  svc <- .synthetics$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.synthetics$operations$describe_canaries_last_run <- synthetics_describe_canaries_last_run

#' Returns a list of Synthetics canary runtime versions
#'
#' @description
#' Returns a list of Synthetics canary runtime versions. For more
#' information, see [Canary Runtime
#' Versions](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html).
#'
#' @usage
#' synthetics_describe_runtime_versions(NextToken, MaxResults)
#'
#' @param NextToken A token that indicates that there is more data available. You can use
#' this token in a subsequent
#' [`describe_runtime_versions`][synthetics_describe_runtime_versions]
#' operation to retrieve the next set of results.
#' @param MaxResults Specify this parameter to limit how many runs are returned each time you
#' use the
#' [`describe_runtime_versions`][synthetics_describe_runtime_versions]
#' operation. If you omit this parameter, the default of 100 is used.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   RuntimeVersions = list(
#'     list(
#'       VersionName = "string",
#'       Description = "string",
#'       ReleaseDate = as.POSIXct(
#'         "2015-01-01"
#'       ),
#'       DeprecationDate = as.POSIXct(
#'         "2015-01-01"
#'       )
#'     )
#'   ),
#'   NextToken = "string"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$describe_runtime_versions(
#'   NextToken = "string",
#'   MaxResults = 123
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname synthetics_describe_runtime_versions
synthetics_describe_runtime_versions <- function(NextToken = NULL, MaxResults = NULL) {
  op <- new_operation(
    name = "DescribeRuntimeVersions",
    http_method = "POST",
    http_path = "/runtime-versions",
    paginator = list()
  )
  input <- .synthetics$describe_runtime_versions_input(NextToken = NextToken, MaxResults = MaxResults)
  output <- .synthetics$describe_runtime_versions_output()
  config <- get_config()
  svc <- .synthetics$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.synthetics$operations$describe_runtime_versions <- synthetics_describe_runtime_versions

#' Retrieves complete information about one canary
#'
#' @description
#' Retrieves complete information about one canary. You must specify the
#' name of the canary that you want. To get a list of canaries and their
#' names, use [`describe_canaries`][synthetics_describe_canaries].
#'
#' @usage
#' synthetics_get_canary(Name)
#'
#' @param Name &#91;required&#93; The name of the canary that you want details for.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   Canary = list(
#'     Id = "string",
#'     Name = "string",
#'     Code = list(
#'       SourceLocationArn = "string",
#'       Handler = "string"
#'     ),
#'     ExecutionRoleArn = "string",
#'     Schedule = list(
#'       Expression = "string",
#'       DurationInSeconds = 123
#'     ),
#'     RunConfig = list(
#'       TimeoutInSeconds = 123,
#'       MemoryInMB = 123,
#'       ActiveTracing = TRUE|FALSE
#'     ),
#'     SuccessRetentionPeriodInDays = 123,
#'     FailureRetentionPeriodInDays = 123,
#'     Status = list(
#'       State = "CREATING"|"READY"|"STARTING"|"RUNNING"|"UPDATING"|"STOPPING"|"STOPPED"|"ERROR"|"DELETING",
#'       StateReason = "string",
#'       StateReasonCode = "INVALID_PERMISSIONS"
#'     ),
#'     Timeline = list(
#'       Created = as.POSIXct(
#'         "2015-01-01"
#'       ),
#'       LastModified = as.POSIXct(
#'         "2015-01-01"
#'       ),
#'       LastStarted = as.POSIXct(
#'         "2015-01-01"
#'       ),
#'       LastStopped = as.POSIXct(
#'         "2015-01-01"
#'       )
#'     ),
#'     ArtifactS3Location = "string",
#'     EngineArn = "string",
#'     RuntimeVersion = "string",
#'     VpcConfig = list(
#'       VpcId = "string",
#'       SubnetIds = list(
#'         "string"
#'       ),
#'       SecurityGroupIds = list(
#'         "string"
#'       )
#'     ),
#'     Tags = list(
#'       "string"
#'     )
#'   )
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$get_canary(
#'   Name = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname synthetics_get_canary
synthetics_get_canary <- function(Name) {
  op <- new_operation(
    name = "GetCanary",
    http_method = "GET",
    http_path = "/canary/{name}",
    paginator = list()
  )
  input <- .synthetics$get_canary_input(Name = Name)
  output <- .synthetics$get_canary_output()
  config <- get_config()
  svc <- .synthetics$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.synthetics$operations$get_canary <- synthetics_get_canary

#' Retrieves a list of runs for a specified canary
#'
#' @description
#' Retrieves a list of runs for a specified canary.
#'
#' @usage
#' synthetics_get_canary_runs(Name, NextToken, MaxResults)
#'
#' @param Name &#91;required&#93; The name of the canary that you want to see runs for.
#' @param NextToken A token that indicates that there is more data available. You can use
#' this token in a subsequent
#' [`get_canary_runs`][synthetics_get_canary_runs] operation to retrieve
#' the next set of results.
#' @param MaxResults Specify this parameter to limit how many runs are returned each time you
#' use the [`get_canary_runs`][synthetics_get_canary_runs] operation. If
#' you omit this parameter, the default of 100 is used.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   CanaryRuns = list(
#'     list(
#'       Id = "string",
#'       Name = "string",
#'       Status = list(
#'         State = "RUNNING"|"PASSED"|"FAILED",
#'         StateReason = "string",
#'         StateReasonCode = "CANARY_FAILURE"|"EXECUTION_FAILURE"
#'       ),
#'       Timeline = list(
#'         Started = as.POSIXct(
#'           "2015-01-01"
#'         ),
#'         Completed = as.POSIXct(
#'           "2015-01-01"
#'         )
#'       ),
#'       ArtifactS3Location = "string"
#'     )
#'   ),
#'   NextToken = "string"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$get_canary_runs(
#'   Name = "string",
#'   NextToken = "string",
#'   MaxResults = 123
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname synthetics_get_canary_runs
synthetics_get_canary_runs <- function(Name, NextToken = NULL, MaxResults = NULL) {
  op <- new_operation(
    name = "GetCanaryRuns",
    http_method = "POST",
    http_path = "/canary/{name}/runs",
    paginator = list()
  )
  input <- .synthetics$get_canary_runs_input(Name = Name, NextToken = NextToken, MaxResults = MaxResults)
  output <- .synthetics$get_canary_runs_output()
  config <- get_config()
  svc <- .synthetics$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.synthetics$operations$get_canary_runs <- synthetics_get_canary_runs

#' Displays the tags associated with a canary
#'
#' @description
#' Displays the tags associated with a canary.
#'
#' @usage
#' synthetics_list_tags_for_resource(ResourceArn)
#'
#' @param ResourceArn &#91;required&#93; The ARN of the canary that you want to view tags for.
#' 
#' The ARN format of a canary is
#' `arn:aws:synthetics:Region:account-id:canary:canary-name `.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   Tags = list(
#'     "string"
#'   )
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$list_tags_for_resource(
#'   ResourceArn = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname synthetics_list_tags_for_resource
synthetics_list_tags_for_resource <- function(ResourceArn) {
  op <- new_operation(
    name = "ListTagsForResource",
    http_method = "GET",
    http_path = "/tags/{resourceArn}",
    paginator = list()
  )
  input <- .synthetics$list_tags_for_resource_input(ResourceArn = ResourceArn)
  output <- .synthetics$list_tags_for_resource_output()
  config <- get_config()
  svc <- .synthetics$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.synthetics$operations$list_tags_for_resource <- synthetics_list_tags_for_resource

#' Use this operation to run a canary that has already been created
#'
#' @description
#' Use this operation to run a canary that has already been created. The
#' frequency of the canary runs is determined by the value of the canary's
#' `Schedule`. To see a canary's schedule, use
#' [`get_canary`][synthetics_get_canary].
#'
#' @usage
#' synthetics_start_canary(Name)
#'
#' @param Name &#91;required&#93; The name of the canary that you want to run. To find canary names, use
#' [`describe_canaries`][synthetics_describe_canaries].
#'
#' @return
#' An empty list.
#'
#' @section Request syntax:
#' ```
#' svc$start_canary(
#'   Name = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname synthetics_start_canary
synthetics_start_canary <- function(Name) {
  op <- new_operation(
    name = "StartCanary",
    http_method = "POST",
    http_path = "/canary/{name}/start",
    paginator = list()
  )
  input <- .synthetics$start_canary_input(Name = Name)
  output <- .synthetics$start_canary_output()
  config <- get_config()
  svc <- .synthetics$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.synthetics$operations$start_canary <- synthetics_start_canary

#' Stops the canary to prevent all future runs
#'
#' @description
#' Stops the canary to prevent all future runs. If the canary is currently
#' running, Synthetics stops waiting for the current run of the specified
#' canary to complete. The run that is in progress completes on its own,
#' publishes metrics, and uploads artifacts, but it is not recorded in
#' Synthetics as a completed run.
#' 
#' You can use [`start_canary`][synthetics_start_canary] to start it
#' running again with the canary’s current schedule at any point in the
#' future.
#'
#' @usage
#' synthetics_stop_canary(Name)
#'
#' @param Name &#91;required&#93; The name of the canary that you want to stop. To find the names of your
#' canaries, use [`describe_canaries`][synthetics_describe_canaries].
#'
#' @return
#' An empty list.
#'
#' @section Request syntax:
#' ```
#' svc$stop_canary(
#'   Name = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname synthetics_stop_canary
synthetics_stop_canary <- function(Name) {
  op <- new_operation(
    name = "StopCanary",
    http_method = "POST",
    http_path = "/canary/{name}/stop",
    paginator = list()
  )
  input <- .synthetics$stop_canary_input(Name = Name)
  output <- .synthetics$stop_canary_output()
  config <- get_config()
  svc <- .synthetics$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.synthetics$operations$stop_canary <- synthetics_stop_canary

#' Assigns one or more tags (key-value pairs) to the specified canary
#'
#' @description
#' Assigns one or more tags (key-value pairs) to the specified canary.
#' 
#' Tags can help you organize and categorize your resources. You can also
#' use them to scope user permissions, by granting a user permission to
#' access or change only resources with certain tag values.
#' 
#' Tags don't have any semantic meaning to AWS and are interpreted strictly
#' as strings of characters.
#' 
#' You can use the [`tag_resource`][synthetics_tag_resource] action with a
#' canary that already has tags. If you specify a new tag key for the
#' alarm, this tag is appended to the list of tags associated with the
#' alarm. If you specify a tag key that is already associated with the
#' alarm, the new tag value that you specify replaces the previous value
#' for that tag.
#' 
#' You can associate as many as 50 tags with a canary.
#'
#' @usage
#' synthetics_tag_resource(ResourceArn, Tags)
#'
#' @param ResourceArn &#91;required&#93; The ARN of the canary that you're adding tags to.
#' 
#' The ARN format of a canary is
#' `arn:aws:synthetics:Region:account-id:canary:canary-name `.
#' @param Tags &#91;required&#93; The list of key-value pairs to associate with the canary.
#'
#' @return
#' An empty list.
#'
#' @section Request syntax:
#' ```
#' svc$tag_resource(
#'   ResourceArn = "string",
#'   Tags = list(
#'     "string"
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname synthetics_tag_resource
synthetics_tag_resource <- function(ResourceArn, Tags) {
  op <- new_operation(
    name = "TagResource",
    http_method = "POST",
    http_path = "/tags/{resourceArn}",
    paginator = list()
  )
  input <- .synthetics$tag_resource_input(ResourceArn = ResourceArn, Tags = Tags)
  output <- .synthetics$tag_resource_output()
  config <- get_config()
  svc <- .synthetics$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.synthetics$operations$tag_resource <- synthetics_tag_resource

#' Removes one or more tags from the specified canary
#'
#' @description
#' Removes one or more tags from the specified canary.
#'
#' @usage
#' synthetics_untag_resource(ResourceArn, TagKeys)
#'
#' @param ResourceArn &#91;required&#93; The ARN of the canary that you're removing tags from.
#' 
#' The ARN format of a canary is
#' `arn:aws:synthetics:Region:account-id:canary:canary-name `.
#' @param TagKeys &#91;required&#93; The list of tag keys to remove from the resource.
#'
#' @return
#' An empty list.
#'
#' @section Request syntax:
#' ```
#' svc$untag_resource(
#'   ResourceArn = "string",
#'   TagKeys = list(
#'     "string"
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname synthetics_untag_resource
synthetics_untag_resource <- function(ResourceArn, TagKeys) {
  op <- new_operation(
    name = "UntagResource",
    http_method = "DELETE",
    http_path = "/tags/{resourceArn}",
    paginator = list()
  )
  input <- .synthetics$untag_resource_input(ResourceArn = ResourceArn, TagKeys = TagKeys)
  output <- .synthetics$untag_resource_output()
  config <- get_config()
  svc <- .synthetics$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.synthetics$operations$untag_resource <- synthetics_untag_resource

#' Use this operation to change the settings of a canary that has already
#' been created
#'
#' @description
#' Use this operation to change the settings of a canary that has already
#' been created.
#' 
#' You can't use this operation to update the tags of an existing canary.
#' To change the tags of an existing canary, use
#' [`tag_resource`][synthetics_tag_resource].
#'
#' @usage
#' synthetics_update_canary(Name, Code, ExecutionRoleArn, RuntimeVersion,
#'   Schedule, RunConfig, SuccessRetentionPeriodInDays,
#'   FailureRetentionPeriodInDays, VpcConfig)
#'
#' @param Name &#91;required&#93; The name of the canary that you want to update. To find the names of
#' your canaries, use [`describe_canaries`][synthetics_describe_canaries].
#' 
#' You cannot change the name of a canary that has already been created.
#' @param Code A structure that includes the entry point from which the canary should
#' start running your script. If the script is stored in an S3 bucket, the
#' bucket name, key, and version are also included.
#' @param ExecutionRoleArn The ARN of the IAM role to be used to run the canary. This role must
#' already exist, and must include `lambda.amazonaws.com` as a principal in
#' the trust policy. The role must also have the following permissions:
#' 
#' -   `s3:PutObject`
#' 
#' -   `s3:GetBucketLocation`
#' 
#' -   `s3:ListAllMyBuckets`
#' 
#' -   `cloudwatch:PutMetricData`
#' 
#' -   `logs:CreateLogGroup`
#' 
#' -   `logs:CreateLogStream`
#' 
#' -   `logs:CreateLogStream`
#' @param RuntimeVersion Specifies the runtime version to use for the canary. For a list of valid
#' runtime versions and for more information about runtime versions, see
#' [Canary Runtime
#' Versions](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html).
#' @param Schedule A structure that contains information about how often the canary is to
#' run, and when these runs are to stop.
#' @param RunConfig A structure that contains the timeout value that is used for each
#' individual run of the canary.
#' @param SuccessRetentionPeriodInDays The number of days to retain data about successful runs of this canary.
#' @param FailureRetentionPeriodInDays The number of days to retain data about failed runs of this canary.
#' @param VpcConfig If this canary is to test an endpoint in a VPC, this structure contains
#' information about the subnet and security groups of the VPC endpoint.
#' For more information, see [Running a Canary in a
#' VPC](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_VPC.html).
#'
#' @return
#' An empty list.
#'
#' @section Request syntax:
#' ```
#' svc$update_canary(
#'   Name = "string",
#'   Code = list(
#'     S3Bucket = "string",
#'     S3Key = "string",
#'     S3Version = "string",
#'     ZipFile = raw,
#'     Handler = "string"
#'   ),
#'   ExecutionRoleArn = "string",
#'   RuntimeVersion = "string",
#'   Schedule = list(
#'     Expression = "string",
#'     DurationInSeconds = 123
#'   ),
#'   RunConfig = list(
#'     TimeoutInSeconds = 123,
#'     MemoryInMB = 123,
#'     ActiveTracing = TRUE|FALSE,
#'     EnvironmentVariables = list(
#'       "string"
#'     )
#'   ),
#'   SuccessRetentionPeriodInDays = 123,
#'   FailureRetentionPeriodInDays = 123,
#'   VpcConfig = list(
#'     SubnetIds = list(
#'       "string"
#'     ),
#'     SecurityGroupIds = list(
#'       "string"
#'     )
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname synthetics_update_canary
synthetics_update_canary <- function(Name, Code = NULL, ExecutionRoleArn = NULL, RuntimeVersion = NULL, Schedule = NULL, RunConfig = NULL, SuccessRetentionPeriodInDays = NULL, FailureRetentionPeriodInDays = NULL, VpcConfig = NULL) {
  op <- new_operation(
    name = "UpdateCanary",
    http_method = "PATCH",
    http_path = "/canary/{name}",
    paginator = list()
  )
  input <- .synthetics$update_canary_input(Name = Name, Code = Code, ExecutionRoleArn = ExecutionRoleArn, RuntimeVersion = RuntimeVersion, Schedule = Schedule, RunConfig = RunConfig, SuccessRetentionPeriodInDays = SuccessRetentionPeriodInDays, FailureRetentionPeriodInDays = FailureRetentionPeriodInDays, VpcConfig = VpcConfig)
  output <- .synthetics$update_canary_output()
  config <- get_config()
  svc <- .synthetics$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.synthetics$operations$update_canary <- synthetics_update_canary
