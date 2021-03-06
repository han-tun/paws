% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/robomaker_operations.R
\name{robomaker_create_simulation_application_version}
\alias{robomaker_create_simulation_application_version}
\title{Creates a simulation application with a specific revision id}
\usage{
robomaker_create_simulation_application_version(application,
  currentRevisionId)
}
\arguments{
\item{application}{[required] The application information for the simulation application.}

\item{currentRevisionId}{The current revision id for the simulation application. If you provide a
value and it matches the latest revision ID, a new version will be
created.}
}
\value{
A list with the following syntax:\preformatted{list(
  arn = "string",
  name = "string",
  version = "string",
  sources = list(
    list(
      s3Bucket = "string",
      s3Key = "string",
      etag = "string",
      architecture = "X86_64"|"ARM64"|"ARMHF"
    )
  ),
  simulationSoftwareSuite = list(
    name = "Gazebo"|"RosbagPlay",
    version = "string"
  ),
  robotSoftwareSuite = list(
    name = "ROS"|"ROS2",
    version = "Kinetic"|"Melodic"|"Dashing"
  ),
  renderingEngine = list(
    name = "OGRE",
    version = "string"
  ),
  lastUpdatedAt = as.POSIXct(
    "2015-01-01"
  ),
  revisionId = "string"
)
}
}
\description{
Creates a simulation application with a specific revision id.
}
\section{Request syntax}{
\preformatted{svc$create_simulation_application_version(
  application = "string",
  currentRevisionId = "string"
)
}
}

\keyword{internal}
