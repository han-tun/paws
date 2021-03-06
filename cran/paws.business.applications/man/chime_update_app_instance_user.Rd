% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chime_operations.R
\name{chime_update_app_instance_user}
\alias{chime_update_app_instance_user}
\title{Updates the details for an AppInstanceUser}
\usage{
chime_update_app_instance_user(AppInstanceUserArn, Name, Metadata)
}
\arguments{
\item{AppInstanceUserArn}{[required] The ARN of the app instance user.}

\item{Name}{[required] The name of the app instance user.}

\item{Metadata}{The metadata of the app instance user.}
}
\value{
A list with the following syntax:\preformatted{list(
  AppInstanceUserArn = "string"
)
}
}
\description{
Updates the details for an \code{AppInstanceUser}. You can update names and
metadata.
}
\section{Request syntax}{
\preformatted{svc$update_app_instance_user(
  AppInstanceUserArn = "string",
  Name = "string",
  Metadata = "string"
)
}
}

\keyword{internal}
