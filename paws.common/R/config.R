#' Get the service configuration from the service object.
#'
#' Look up the service configuration from the service object, e.g. when
#' calling `svc$operation()`, `get_config()` will look up `svc`, then get
#' any configuration stored in it, as if the operation function were
#' a method and the service object were a class instance.
#'
#' `get_config` must be called directly by the operation function and
#' assigned immediately, not provided as an argument to another function.
#'
#' We look up the service object then fetch its data so we can both support
#' documentation tooltips in RStudio and also have class-object-like
#' behavior. Alternatives that do not support documentation tooltips in
#' RStudio include reference classes (RC), R6 classes, and any modification of
#' the functions at run-time, e.g. inserting the configuration into the
#' function definition for each operation in a particular service object.
#'
#' @export
get_config <- function() {
  calling_env <- parent.frame(2)
  call <- sys.call(-1)[[1]]
  if (is.name(call)) {
    return(Config())
  }
  object <- eval(call[[2]], envir = calling_env)
  config <- object$.internal$config
  if (is.null(config)) return(Config())
  return(config)
}

#' Add configuration settings to a service object.
#'
#' `set_config` adds a given set of configuration settings in `cfgs` to a
#' service object, i.e. the service object for S3. Configuration settings can
#' include credentials, region, endpoint, etc. These configuration settings
#' will be used whenever an operation is called from that service object.
#'
#' `set_config` explicitly makes the `credentials` property mutable, such that
#' when the SDK retrieves credentials later on, it will save them in the
#' service object. This means that credentials don't need to be fetched on each
#' operation, only if and when the saved credentials expire.
#'
#' @param svc A service object containing service operations.
#' @param cfgs A list of optional configuration settings.
#'
#' @details
#' The optional configuration settings can include the following:
#' ```
#' list(
#'   credentials = list(
#'     creds = list(
#'       access_key_id = "string",
#'       secret_access_key = "string",
#'       session_token = "string"
#'     ),
#'     profile = "string"
#'   ),
#'   endpoint = "string",
#'   region = "string"
#' )
#' ```
#'
#' @examples
#' # Create a config object with custom credentials and endpoint.
#' config <- set_config(
#'   svc = list(),
#'   cfgs = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "abc",
#'         secret_access_key = "123"
#'       )
#'     ),
#'     endpoint = "https://foo.com"
#'   )
#' )
#'
#' @export
set_config <- function(svc, cfgs = list()) {
  shape <- tag_annotate(Config())
  config <- populate(cfgs, shape)
  config$credentials <- as.environment(config$credentials)
  svc$.internal <- list(config = config)
  return(svc)
}

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------

# Get the path to the .aws folder.
get_aws_path <- function() {
  if (.Platform$OS.type == "unix") {
    home <- "~"
  } else {
    home <- Sys.getenv("USERPROFILE")
  }
  path <- path.expand(file.path(home, ".aws"))
  return(path)
}

get_config_file_path <- function() {
  path <- get_env("AWS_CONFIG_FILE")
  if (path != "" && file.exists(path)) return(path)

  path <- file.path(get_aws_path(), "config")
  if (file.exists(path)) return(path)

  return(NULL)
}

get_credentials_file_path <- function() {
  path <- get_env("AWS_SHARED_CREDENTIALS_FILE")
  if (path != "" && file.exists(path)) return(path)

  path <- file.path(get_aws_path(), "credentials")
  if (file.exists(path)) return(path)

  return(NULL)
}

get_env <- function(variable) {
  value <- Sys.getenv(variable)
  if (value != "") return(value)

  value <- get_os_env(variable)
  if (value != "") return(value)

  return("")
}

# Get the value of an OS environment variable.
# NOTE: Does not work on Windows.
get_os_env <- function(var) {

  if (.Platform$OS.type == "unix") {
    value <- system(sprintf("echo $%s", var), intern = T)
  } else {
    value <- "" # Not implemented on Windows.
  }

  return(value)
}

# Get the AWS profile to use. If none, return "default".
get_profile_name <- function(profile = "") {

  if (!is.null(profile) && profile != "") return(profile)

  profile <- get_env("AWS_PROFILE")

  if (profile == "") profile <- "default"

  return(profile)
}

# Gets the instance metadata by making an http request.
get_instance_metadata <- function(query_path = "") {

  # Do not get metadata when the disabled setting is on.
  if (trimws(tolower(get_env("AWS_EC2_METADATA_DISABLED"))) %in% c("true", "1")) {
    return(NULL)
  }

  metadata_url <- file.path("http://169.254.169.254/latest/meta-data",
                           query_path)
  metadata_request <-
    new_http_request("GET", metadata_url, timeout = 1)

  metadata_response <- tryCatch({
    issue(metadata_request)
  }, error = function (e){
    NULL
  })

  if (is.null(metadata_response) || metadata_response$status_code != 200) {
    return(NULL)
  }

  return(metadata_response)
}

# Get region from the config file.
# For profiles other than default, the profile name is prefaced by "profile".
# See https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-profiles.html
check_config_file_region <- function(profile = "") {

  config_path <- get_config_file_path()
  if (is.null(config_path)) return(NULL)

  profile <- get_profile_name(profile)
  if (profile != "default") profile <- paste("profile", profile)

  config_values <- ini::read.ini(config_path)

  if (is.null(config_values[[profile]])) return(NULL)

  region <- config_values[[profile]]$region

  return(region)
}

# Get the AWS region.
get_region <- function(profile = "") {

  region <- get_env("AWS_REGION")
  if (region != "") return(region)

  region <- check_config_file_region(profile)

  if (is.null(region)) stop("No region provided")

  return(region)
}
