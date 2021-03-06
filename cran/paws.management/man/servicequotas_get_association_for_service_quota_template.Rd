% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/servicequotas_operations.R
\name{servicequotas_get_association_for_service_quota_template}
\alias{servicequotas_get_association_for_service_quota_template}
\title{Retrieves the status of the association for the quota request template}
\usage{
servicequotas_get_association_for_service_quota_template()
}
\value{
A list with the following syntax:\preformatted{list(
  ServiceQuotaTemplateAssociationStatus = "ASSOCIATED"|"DISASSOCIATED"
)
}
}
\description{
Retrieves the status of the association for the quota request template.
}
\section{Request syntax}{
\preformatted{svc$get_association_for_service_quota_template()
}
}

\keyword{internal}
