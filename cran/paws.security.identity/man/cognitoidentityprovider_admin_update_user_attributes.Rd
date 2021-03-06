% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cognitoidentityprovider_operations.R
\name{cognitoidentityprovider_admin_update_user_attributes}
\alias{cognitoidentityprovider_admin_update_user_attributes}
\title{Updates the specified user's attributes, including developer attributes,
as an administrator}
\usage{
cognitoidentityprovider_admin_update_user_attributes(UserPoolId,
  Username, UserAttributes, ClientMetadata)
}
\arguments{
\item{UserPoolId}{[required] The user pool ID for the user pool where you want to update user
attributes.}

\item{Username}{[required] The user name of the user for whom you want to update user attributes.}

\item{UserAttributes}{[required] An array of name-value pairs representing user attributes.

For custom attributes, you must prepend the \verb{custom:} prefix to the
attribute name.}

\item{ClientMetadata}{A map of custom key-value pairs that you can provide as input for any
custom workflows that this action triggers.

You create custom workflows by assigning AWS Lambda functions to user
pool triggers. When you use the AdminUpdateUserAttributes API action,
Amazon Cognito invokes the function that is assigned to the \emph{custom
message} trigger. When Amazon Cognito invokes this function, it passes a
JSON payload, which the function receives as input. This payload
contains a \code{clientMetadata} attribute, which provides the data that you
assigned to the ClientMetadata parameter in your
AdminUpdateUserAttributes request. In your function code in AWS Lambda,
you can process the \code{clientMetadata} value to enhance your workflow for
your specific needs.

For more information, see \href{https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html}{Customizing User Pool Workflows with Lambda Triggers}
in the \emph{Amazon Cognito Developer Guide}.

Take the following limitations into consideration when you use the
ClientMetadata parameter:
\itemize{
\item Amazon Cognito does not store the ClientMetadata value. This data is
available only to AWS Lambda triggers that are assigned to a user
pool to support custom workflows. If your user pool configuration
does not include triggers, the ClientMetadata parameter serves no
purpose.
\item Amazon Cognito does not validate the ClientMetadata value.
\item Amazon Cognito does not encrypt the the ClientMetadata value, so
don't use it to provide sensitive information.
}}
}
\value{
An empty list.
}
\description{
Updates the specified user's attributes, including developer attributes,
as an administrator. Works on any user.

For custom attributes, you must prepend the \verb{custom:} prefix to the
attribute name.

In addition to updating user attributes, this API can also be used to
mark phone and email as verified.

Calling this action requires developer credentials.
}
\section{Request syntax}{
\preformatted{svc$admin_update_user_attributes(
  UserPoolId = "string",
  Username = "string",
  UserAttributes = list(
    list(
      Name = "string",
      Value = "string"
    )
  ),
  ClientMetadata = list(
    "string"
  )
)
}
}

\keyword{internal}
