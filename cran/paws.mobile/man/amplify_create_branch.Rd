% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/amplify_operations.R
\name{amplify_create_branch}
\alias{amplify_create_branch}
\title{Creates a new branch for an Amplify app}
\usage{
amplify_create_branch(appId, branchName, description, stage, framework,
  enableNotification, enableAutoBuild, environmentVariables,
  basicAuthCredentials, enableBasicAuth, enablePerformanceMode, tags,
  buildSpec, ttl, displayName, enablePullRequestPreview,
  pullRequestEnvironmentName, backendEnvironmentArn)
}
\arguments{
\item{appId}{[required] The unique ID for an Amplify app.}

\item{branchName}{[required] The name for the branch.}

\item{description}{The description for the branch.}

\item{stage}{Describes the current stage for the branch.}

\item{framework}{The framework for the branch.}

\item{enableNotification}{Enables notifications for the branch.}

\item{enableAutoBuild}{Enables auto building for the branch.}

\item{environmentVariables}{The environment variables for the branch.}

\item{basicAuthCredentials}{The basic authorization credentials for the branch.}

\item{enableBasicAuth}{Enables basic authorization for the branch.}

\item{enablePerformanceMode}{Enables performance mode for the branch.

Performance mode optimizes for faster hosting performance by keeping
content cached at the edge for a longer interval. When performance mode
is enabled, hosting configuration or code changes can take up to 10
minutes to roll out.}

\item{tags}{The tag for the branch.}

\item{buildSpec}{The build specification (build spec) for the branch.}

\item{ttl}{The content Time To Live (TTL) for the website in seconds.}

\item{displayName}{The display name for a branch. This is used as the default domain
prefix.}

\item{enablePullRequestPreview}{Enables pull request previews for this branch.}

\item{pullRequestEnvironmentName}{The Amplify environment name for the pull request.}

\item{backendEnvironmentArn}{The Amazon Resource Name (ARN) for a backend environment that is part of
an Amplify app.}
}
\value{
A list with the following syntax:\preformatted{list(
  branch = list(
    branchArn = "string",
    branchName = "string",
    description = "string",
    tags = list(
      "string"
    ),
    stage = "PRODUCTION"|"BETA"|"DEVELOPMENT"|"EXPERIMENTAL"|"PULL_REQUEST",
    displayName = "string",
    enableNotification = TRUE|FALSE,
    createTime = as.POSIXct(
      "2015-01-01"
    ),
    updateTime = as.POSIXct(
      "2015-01-01"
    ),
    environmentVariables = list(
      "string"
    ),
    enableAutoBuild = TRUE|FALSE,
    customDomains = list(
      "string"
    ),
    framework = "string",
    activeJobId = "string",
    totalNumberOfJobs = "string",
    enableBasicAuth = TRUE|FALSE,
    enablePerformanceMode = TRUE|FALSE,
    thumbnailUrl = "string",
    basicAuthCredentials = "string",
    buildSpec = "string",
    ttl = "string",
    associatedResources = list(
      "string"
    ),
    enablePullRequestPreview = TRUE|FALSE,
    pullRequestEnvironmentName = "string",
    destinationBranch = "string",
    sourceBranch = "string",
    backendEnvironmentArn = "string"
  )
)
}
}
\description{
Creates a new branch for an Amplify app.
}
\section{Request syntax}{
\preformatted{svc$create_branch(
  appId = "string",
  branchName = "string",
  description = "string",
  stage = "PRODUCTION"|"BETA"|"DEVELOPMENT"|"EXPERIMENTAL"|"PULL_REQUEST",
  framework = "string",
  enableNotification = TRUE|FALSE,
  enableAutoBuild = TRUE|FALSE,
  environmentVariables = list(
    "string"
  ),
  basicAuthCredentials = "string",
  enableBasicAuth = TRUE|FALSE,
  enablePerformanceMode = TRUE|FALSE,
  tags = list(
    "string"
  ),
  buildSpec = "string",
  ttl = "string",
  displayName = "string",
  enablePullRequestPreview = TRUE|FALSE,
  pullRequestEnvironmentName = "string",
  backendEnvironmentArn = "string"
)
}
}

\keyword{internal}
