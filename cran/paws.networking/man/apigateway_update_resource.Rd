% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/apigateway_operations.R
\name{apigateway_update_resource}
\alias{apigateway_update_resource}
\title{Changes information about a Resource resource}
\usage{
apigateway_update_resource(restApiId, resourceId, patchOperations)
}
\arguments{
\item{restApiId}{[required] [Required] The string identifier of the associated RestApi.}

\item{resourceId}{[required] [Required] The identifier of the Resource resource.}

\item{patchOperations}{A list of update operations to be applied to the specified resource and
in the order specified in this list.}
}
\value{
A list with the following syntax:\preformatted{list(
  id = "string",
  parentId = "string",
  pathPart = "string",
  path = "string",
  resourceMethods = list(
    list(
      httpMethod = "string",
      authorizationType = "string",
      authorizerId = "string",
      apiKeyRequired = TRUE|FALSE,
      requestValidatorId = "string",
      operationName = "string",
      requestParameters = list(
        TRUE|FALSE
      ),
      requestModels = list(
        "string"
      ),
      methodResponses = list(
        list(
          statusCode = "string",
          responseParameters = list(
            TRUE|FALSE
          ),
          responseModels = list(
            "string"
          )
        )
      ),
      methodIntegration = list(
        type = "HTTP"|"AWS"|"MOCK"|"HTTP_PROXY"|"AWS_PROXY",
        httpMethod = "string",
        uri = "string",
        connectionType = "INTERNET"|"VPC_LINK",
        connectionId = "string",
        credentials = "string",
        requestParameters = list(
          "string"
        ),
        requestTemplates = list(
          "string"
        ),
        passthroughBehavior = "string",
        contentHandling = "CONVERT_TO_BINARY"|"CONVERT_TO_TEXT",
        timeoutInMillis = 123,
        cacheNamespace = "string",
        cacheKeyParameters = list(
          "string"
        ),
        integrationResponses = list(
          list(
            statusCode = "string",
            selectionPattern = "string",
            responseParameters = list(
              "string"
            ),
            responseTemplates = list(
              "string"
            ),
            contentHandling = "CONVERT_TO_BINARY"|"CONVERT_TO_TEXT"
          )
        ),
        tlsConfig = list(
          insecureSkipVerification = TRUE|FALSE
        )
      ),
      authorizationScopes = list(
        "string"
      )
    )
  )
)
}
}
\description{
Changes information about a Resource resource.
}
\section{Request syntax}{
\preformatted{svc$update_resource(
  restApiId = "string",
  resourceId = "string",
  patchOperations = list(
    list(
      op = "add"|"remove"|"replace"|"move"|"copy"|"test",
      path = "string",
      value = "string",
      from = "string"
    )
  )
)
}
}

\keyword{internal}
