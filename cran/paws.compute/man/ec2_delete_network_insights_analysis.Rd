% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_delete_network_insights_analysis}
\alias{ec2_delete_network_insights_analysis}
\title{Deletes the specified network insights analysis}
\usage{
ec2_delete_network_insights_analysis(DryRun, NetworkInsightsAnalysisId)
}
\arguments{
\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}

\item{NetworkInsightsAnalysisId}{[required] The ID of the network insights analysis.}
}
\value{
A list with the following syntax:\preformatted{list(
  NetworkInsightsAnalysisId = "string"
)
}
}
\description{
Deletes the specified network insights analysis.
}
\section{Request syntax}{
\preformatted{svc$delete_network_insights_analysis(
  DryRun = TRUE|FALSE,
  NetworkInsightsAnalysisId = "string"
)
}
}

\keyword{internal}
