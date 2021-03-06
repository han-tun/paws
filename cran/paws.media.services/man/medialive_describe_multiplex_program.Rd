% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/medialive_operations.R
\name{medialive_describe_multiplex_program}
\alias{medialive_describe_multiplex_program}
\title{Get the details for a program in a multiplex}
\usage{
medialive_describe_multiplex_program(MultiplexId, ProgramName)
}
\arguments{
\item{MultiplexId}{[required] The ID of the multiplex that the program belongs to.}

\item{ProgramName}{[required] The name of the program.}
}
\value{
A list with the following syntax:\preformatted{list(
  ChannelId = "string",
  MultiplexProgramSettings = list(
    PreferredChannelPipeline = "CURRENTLY_ACTIVE"|"PIPELINE_0"|"PIPELINE_1",
    ProgramNumber = 123,
    ServiceDescriptor = list(
      ProviderName = "string",
      ServiceName = "string"
    ),
    VideoSettings = list(
      ConstantBitrate = 123,
      StatmuxSettings = list(
        MaximumBitrate = 123,
        MinimumBitrate = 123,
        Priority = 123
      )
    )
  ),
  PacketIdentifiersMap = list(
    AudioPids = list(
      123
    ),
    DvbSubPids = list(
      123
    ),
    DvbTeletextPid = 123,
    EtvPlatformPid = 123,
    EtvSignalPid = 123,
    KlvDataPids = list(
      123
    ),
    PcrPid = 123,
    PmtPid = 123,
    PrivateMetadataPid = 123,
    Scte27Pids = list(
      123
    ),
    Scte35Pid = 123,
    TimedMetadataPid = 123,
    VideoPid = 123
  ),
  PipelineDetails = list(
    list(
      ActiveChannelPipeline = "string",
      PipelineId = "string"
    )
  ),
  ProgramName = "string"
)
}
}
\description{
Get the details for a program in a multiplex.
}
\section{Request syntax}{
\preformatted{svc$describe_multiplex_program(
  MultiplexId = "string",
  ProgramName = "string"
)
}
}

\keyword{internal}
