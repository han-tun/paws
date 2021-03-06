# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common new_handlers new_service set_config
NULL

#' Amazon Augmented AI Runtime
#'
#' @description
#' Amazon Augmented AI is in preview release and is subject to change. We
#' do not recommend using this product in production environments.
#' 
#' Amazon Augmented AI (Amazon A2I) adds the benefit of human judgment to
#' any machine learning application. When an AI application can't evaluate
#' data with a high degree of confidence, human reviewers can take over.
#' This human review is called a human review workflow. To create and start
#' a human review workflow, you need three resources: a *worker task
#' template*, a *flow definition*, and a *human loop*.
#' 
#' For information about these resources and prerequisites for using Amazon
#' A2I, see [Get Started with Amazon Augmented
#' AI](https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-getting-started.html)
#' in the Amazon SageMaker Developer Guide.
#' 
#' This API reference includes information about API actions and data types
#' that you can use to interact with Amazon A2I programmatically. Use this
#' guide to:
#' 
#' -   Start a human loop with the
#'     [`start_human_loop`][augmentedairuntime_start_human_loop] operation
#'     when using Amazon A2I with a *custom task type*. To learn more about
#'     the difference between custom and built-in task types, see [Use Task
#'     Types](https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-task-types-general.html)
#'     . To learn how to start a human loop using this API, see [Create and
#'     Start a Human Loop for a Custom Task
#'     Type](https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-start-human-loop.html#a2i-instructions-starthumanloop)
#'     in the Amazon SageMaker Developer Guide.
#' 
#' -   Manage your human loops. You can list all human loops that you have
#'     created, describe individual human loops, and stop and delete human
#'     loops. To learn more, see [Monitor and Manage Your Human
#'     Loop](https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-monitor-humanloop-results.html)
#'     in the Amazon SageMaker Developer Guide.
#' 
#' Amazon A2I integrates APIs from various AWS services to create and start
#' human review workflows for those services. To learn how Amazon A2I uses
#' these APIs, see [Use APIs in Amazon
#' A2I](https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-api-references.html)
#' in the Amazon SageMaker Developer Guide.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#'
#' @section Service syntax:
#' ```
#' svc <- augmentedairuntime(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string"
#'     ),
#'     endpoint = "string",
#'     region = "string"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- augmentedairuntime()
#' svc$delete_human_loop(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=augmentedairuntime_delete_human_loop]{delete_human_loop} \tab Deletes the specified human loop for a flow definition\cr
#'  \link[=augmentedairuntime_describe_human_loop]{describe_human_loop} \tab Returns information about the specified human loop\cr
#'  \link[=augmentedairuntime_list_human_loops]{list_human_loops} \tab Returns information about human loops, given the specified parameters\cr
#'  \link[=augmentedairuntime_start_human_loop]{start_human_loop} \tab Starts a human loop, provided that at least one activation condition is met\cr
#'  \link[=augmentedairuntime_stop_human_loop]{stop_human_loop} \tab Stops the specified human loop
#' }
#'
#' @rdname augmentedairuntime
#' @export
augmentedairuntime <- function(config = list()) {
  svc <- .augmentedairuntime$operations
  svc <- set_config(svc, config)
  return(svc)
}

# Private API objects: metadata, handlers, interfaces, etc.
.augmentedairuntime <- list()

.augmentedairuntime$operations <- list()

.augmentedairuntime$metadata <- list(
  service_name = "augmentedairuntime",
  endpoints = list("*" = list(endpoint = "a2i-runtime.sagemaker.{region}.amazonaws.com", global = FALSE), "cn-*" = list(endpoint = "a2i-runtime.sagemaker.{region}.amazonaws.com.cn", global = FALSE), "us-iso-*" = list(endpoint = "a2i-runtime.sagemaker.{region}.c2s.ic.gov", global = FALSE), "us-isob-*" = list(endpoint = "a2i-runtime.sagemaker.{region}.sc2s.sgov.gov", global = FALSE)),
  service_id = "SageMaker A2I Runtime",
  api_version = "2019-11-07",
  signing_name = "sagemaker",
  json_version = "1.1",
  target_prefix = ""
)

.augmentedairuntime$service <- function(config = list()) {
  handlers <- new_handlers("restjson", "v4")
  new_service(.augmentedairuntime$metadata, handlers, config)
}
