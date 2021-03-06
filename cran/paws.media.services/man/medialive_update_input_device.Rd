% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/medialive_operations.R
\name{medialive_update_input_device}
\alias{medialive_update_input_device}
\title{Updates the parameters for the input device}
\usage{
medialive_update_input_device(HdDeviceSettings, InputDeviceId, Name,
  UhdDeviceSettings)
}
\arguments{
\item{HdDeviceSettings}{The settings that you want to apply to the HD input device.}

\item{InputDeviceId}{[required] The unique ID of the input device. For example, hd-123456789abcdef.}

\item{Name}{The name that you assigned to this input device (not the unique ID).}

\item{UhdDeviceSettings}{The settings that you want to apply to the UHD input device.}
}
\value{
A list with the following syntax:\preformatted{list(
  Arn = "string",
  ConnectionState = "DISCONNECTED"|"CONNECTED",
  DeviceSettingsSyncState = "SYNCED"|"SYNCING",
  DeviceUpdateStatus = "UP_TO_DATE"|"NOT_UP_TO_DATE",
  HdDeviceSettings = list(
    ActiveInput = "HDMI"|"SDI",
    ConfiguredInput = "AUTO"|"HDMI"|"SDI",
    DeviceState = "IDLE"|"STREAMING",
    Framerate = 123.0,
    Height = 123,
    MaxBitrate = 123,
    ScanType = "INTERLACED"|"PROGRESSIVE",
    Width = 123
  ),
  Id = "string",
  MacAddress = "string",
  Name = "string",
  NetworkSettings = list(
    DnsAddresses = list(
      "string"
    ),
    Gateway = "string",
    IpAddress = "string",
    IpScheme = "STATIC"|"DHCP",
    SubnetMask = "string"
  ),
  SerialNumber = "string",
  Type = "HD",
  UhdDeviceSettings = list(
    ActiveInput = "HDMI"|"SDI",
    ConfiguredInput = "AUTO"|"HDMI"|"SDI",
    DeviceState = "IDLE"|"STREAMING",
    Framerate = 123.0,
    Height = 123,
    MaxBitrate = 123,
    ScanType = "INTERLACED"|"PROGRESSIVE",
    Width = 123
  )
)
}
}
\description{
Updates the parameters for the input device.
}
\section{Request syntax}{
\preformatted{svc$update_input_device(
  HdDeviceSettings = list(
    ConfiguredInput = "AUTO"|"HDMI"|"SDI",
    MaxBitrate = 123
  ),
  InputDeviceId = "string",
  Name = "string",
  UhdDeviceSettings = list(
    ConfiguredInput = "AUTO"|"HDMI"|"SDI",
    MaxBitrate = 123
  )
)
}
}

\keyword{internal}
