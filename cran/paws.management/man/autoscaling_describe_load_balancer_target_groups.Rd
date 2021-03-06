% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/autoscaling_operations.R
\name{autoscaling_describe_load_balancer_target_groups}
\alias{autoscaling_describe_load_balancer_target_groups}
\title{Describes the target groups for the specified Auto Scaling group}
\usage{
autoscaling_describe_load_balancer_target_groups(AutoScalingGroupName,
  NextToken, MaxRecords)
}
\arguments{
\item{AutoScalingGroupName}{[required] The name of the Auto Scaling group.}

\item{NextToken}{The token for the next set of items to return. (You received this token
from a previous call.)}

\item{MaxRecords}{The maximum number of items to return with this call. The default value
is \code{100} and the maximum value is \code{100}.}
}
\value{
A list with the following syntax:\preformatted{list(
  LoadBalancerTargetGroups = list(
    list(
      LoadBalancerTargetGroupARN = "string",
      State = "string"
    )
  ),
  NextToken = "string"
)
}
}
\description{
Describes the target groups for the specified Auto Scaling group.
}
\section{Request syntax}{
\preformatted{svc$describe_load_balancer_target_groups(
  AutoScalingGroupName = "string",
  NextToken = "string",
  MaxRecords = 123
)
}
}

\examples{
\dontrun{
# This example describes the target groups attached to the specified Auto
# Scaling group.
svc$describe_load_balancer_target_groups(
  AutoScalingGroupName = "my-auto-scaling-group"
)
}

}
\keyword{internal}
