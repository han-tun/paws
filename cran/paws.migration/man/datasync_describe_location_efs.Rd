% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/datasync_operations.R
\name{datasync_describe_location_efs}
\alias{datasync_describe_location_efs}
\title{Returns metadata, such as the path information about an Amazon EFS
location}
\usage{
datasync_describe_location_efs(LocationArn)
}
\arguments{
\item{LocationArn}{[required] The Amazon Resource Name (ARN) of the EFS location to describe.}
}
\value{
A list with the following syntax:\preformatted{list(
  LocationArn = "string",
  LocationUri = "string",
  Ec2Config = list(
    SubnetArn = "string",
    SecurityGroupArns = list(
      "string"
    )
  ),
  CreationTime = as.POSIXct(
    "2015-01-01"
  )
)
}
}
\description{
Returns metadata, such as the path information about an Amazon EFS
location.
}
\section{Request syntax}{
\preformatted{svc$describe_location_efs(
  LocationArn = "string"
)
}
}

\keyword{internal}
