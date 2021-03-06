% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudsearch_operations.R
\name{cloudsearch_describe_domain_endpoint_options}
\alias{cloudsearch_describe_domain_endpoint_options}
\title{Returns the domain's endpoint options, specifically whether all requests
to the domain must arrive over HTTPS}
\usage{
cloudsearch_describe_domain_endpoint_options(DomainName, Deployed)
}
\arguments{
\item{DomainName}{[required] A string that represents the name of a domain.}

\item{Deployed}{Whether to retrieve the latest configuration (which might be in a
Processing state) or the current, active configuration. Defaults to
\code{false}.}
}
\value{
A list with the following syntax:\preformatted{list(
  DomainEndpointOptions = list(
    Options = list(
      EnforceHTTPS = TRUE|FALSE,
      TLSSecurityPolicy = "Policy-Min-TLS-1-0-2019-07"|"Policy-Min-TLS-1-2-2019-07"
    ),
    Status = list(
      CreationDate = as.POSIXct(
        "2015-01-01"
      ),
      UpdateDate = as.POSIXct(
        "2015-01-01"
      ),
      UpdateVersion = 123,
      State = "RequiresIndexDocuments"|"Processing"|"Active"|"FailedToValidate",
      PendingDeletion = TRUE|FALSE
    )
  )
)
}
}
\description{
Returns the domain's endpoint options, specifically whether all requests
to the domain must arrive over HTTPS. For more information, see
\href{https://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-domain-endpoint-options.html}{Configuring Domain Endpoint Options}
in the \emph{Amazon CloudSearch Developer Guide}.
}
\section{Request syntax}{
\preformatted{svc$describe_domain_endpoint_options(
  DomainName = "string",
  Deployed = TRUE|FALSE
)
}
}

\keyword{internal}
