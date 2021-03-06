% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/medialive_operations.R
\name{medialive_update_input}
\alias{medialive_update_input}
\title{Updates an input}
\usage{
medialive_update_input(Destinations, InputDevices, InputId,
  InputSecurityGroups, MediaConnectFlows, Name, RoleArn, Sources)
}
\arguments{
\item{Destinations}{Destination settings for PUSH type inputs.}

\item{InputDevices}{Settings for the devices.}

\item{InputId}{[required] Unique ID of the input.}

\item{InputSecurityGroups}{A list of security groups referenced by IDs to attach to the input.}

\item{MediaConnectFlows}{A list of the MediaConnect Flow ARNs that you want to use as the source
of the input. You can specify as few as one Flow and presently, as many
as two. The only requirement is when you have more than one is that each
Flow is in a separate Availability Zone as this ensures your EML input
is redundant to AZ issues.}

\item{Name}{Name of the input.}

\item{RoleArn}{The Amazon Resource Name (ARN) of the role this input assumes during and
after creation.}

\item{Sources}{The source URLs for a PULL-type input. Every PULL type input needs
exactly two source URLs for redundancy. Only specify sources for PULL
type Inputs. Leave Destinations empty.}
}
\value{
A list with the following syntax:\preformatted{list(
  Input = list(
    Arn = "string",
    AttachedChannels = list(
      "string"
    ),
    Destinations = list(
      list(
        Ip = "string",
        Port = "string",
        Url = "string",
        Vpc = list(
          AvailabilityZone = "string",
          NetworkInterfaceId = "string"
        )
      )
    ),
    Id = "string",
    InputClass = "STANDARD"|"SINGLE_PIPELINE",
    InputDevices = list(
      list(
        Id = "string"
      )
    ),
    InputSourceType = "STATIC"|"DYNAMIC",
    MediaConnectFlows = list(
      list(
        FlowArn = "string"
      )
    ),
    Name = "string",
    RoleArn = "string",
    SecurityGroups = list(
      "string"
    ),
    Sources = list(
      list(
        PasswordParam = "string",
        Url = "string",
        Username = "string"
      )
    ),
    State = "CREATING"|"DETACHED"|"ATTACHED"|"DELETING"|"DELETED",
    Tags = list(
      "string"
    ),
    Type = "UDP_PUSH"|"RTP_PUSH"|"RTMP_PUSH"|"RTMP_PULL"|"URL_PULL"|"MP4_FILE"|"MEDIACONNECT"|"INPUT_DEVICE"|"AWS_CDI"
  )
)
}
}
\description{
Updates an input.
}
\section{Request syntax}{
\preformatted{svc$update_input(
  Destinations = list(
    list(
      StreamName = "string"
    )
  ),
  InputDevices = list(
    list(
      Id = "string"
    )
  ),
  InputId = "string",
  InputSecurityGroups = list(
    "string"
  ),
  MediaConnectFlows = list(
    list(
      FlowArn = "string"
    )
  ),
  Name = "string",
  RoleArn = "string",
  Sources = list(
    list(
      PasswordParam = "string",
      Url = "string",
      Username = "string"
    )
  )
)
}
}

\keyword{internal}
