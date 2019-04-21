% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/autoscaling_operations.R
\name{autoscaling_attach_load_balancer_target_groups}
\alias{autoscaling_attach_load_balancer_target_groups}
\title{Attaches one or more target groups to the specified Auto Scaling group}
\usage{
autoscaling_attach_load_balancer_target_groups(AutoScalingGroupName,
  TargetGroupARNs)
}
\arguments{
\item{AutoScalingGroupName}{[required] The name of the Auto Scaling group.}

\item{TargetGroupARNs}{[required] The Amazon Resource Names (ARN) of the target groups. You can specify up
to 10 target groups.}
}
\description{
Attaches one or more target groups to the specified Auto Scaling group.
}
\details{
To describe the target groups for an Auto Scaling group, use
DescribeLoadBalancerTargetGroups. To detach the target group from the
Auto Scaling group, use DetachLoadBalancerTargetGroups.

With Application Load Balancers and Network Load Balancers, instances
are registered as targets with a target group. With Classic Load
Balancers, instances are registered with the load balancer. For more
information, see \href{https://docs.aws.amazon.com/autoscaling/ec2/userguide/attach-load-balancer-asg.html}{Attaching a Load Balancer to Your Auto Scaling Group}
in the \emph{Amazon EC2 Auto Scaling User Guide}.
}
\section{Request syntax}{
\preformatted{svc$attach_load_balancer_target_groups(
  AutoScalingGroupName = "string",
  TargetGroupARNs = list(
    "string"
  )
)
}
}

\examples{
# This example attaches the specified target group to the specified Auto
# Scaling group.
\donttest{svc$attach_load_balancer_target_groups(
  AutoScalingGroupName = "my-auto-scaling-group",
  TargetGroupARNs = list(
    "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8..."
  )
)}

}
\keyword{internal}