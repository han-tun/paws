% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/personalize_operations.R
\name{personalize_create_solution_version}
\alias{personalize_create_solution_version}
\title{Trains or retrains an active solution}
\usage{
personalize_create_solution_version(solutionArn, trainingMode)
}
\arguments{
\item{solutionArn}{[required] The Amazon Resource Name (ARN) of the solution containing the training
configuration information.}

\item{trainingMode}{The scope of training to be performed when creating the solution
version. The \code{FULL} option trains the solution version based on the
entirety of the input solution's training data, while the \code{UPDATE}
option processes only the data that has changed in comparison to the
input solution. Choose \code{UPDATE} when you want to incrementally update
your solution version instead of creating an entirely new one.

The \code{UPDATE} option can only be used when you already have an active
solution version created from the input solution using the \code{FULL} option
and the input solution was trained with the native-recipe-hrnn-coldstart
recipe.}
}
\value{
A list with the following syntax:\preformatted{list(
  solutionVersionArn = "string"
)
}
}
\description{
Trains or retrains an active solution. A solution is created using the
\code{\link[=personalize_create_solution]{create_solution}} operation and must be
in the ACTIVE state before calling
\code{\link[=personalize_create_solution_version]{create_solution_version}}. A new
version of the solution is created every time you call this operation.

\strong{Status}

A solution version can be in one of the following states:
\itemize{
\item CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE
FAILED
}

To get the status of the version, call
\code{\link[=personalize_describe_solution_version]{describe_solution_version}}.
Wait until the status shows as ACTIVE before calling
\code{\link[=personalize_create_campaign]{create_campaign}}.

If the status shows as CREATE FAILED, the response includes a
\code{failureReason} key, which describes why the job failed.

\strong{Related APIs}
\itemize{
\item \code{\link[=personalize_list_solution_versions]{list_solution_versions}}
\item \code{\link[=personalize_describe_solution_version]{describe_solution_version}}
\item \code{\link[=personalize_list_solutions]{list_solutions}}
\item \code{\link[=personalize_create_solution]{create_solution}}
\item \code{\link[=personalize_describe_solution]{describe_solution}}
\item \code{\link[=personalize_delete_solution]{delete_solution}}
}
}
\section{Request syntax}{
\preformatted{svc$create_solution_version(
  solutionArn = "string",
  trainingMode = "FULL"|"UPDATE"
)
}
}

\keyword{internal}
