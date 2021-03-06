% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/medialive_operations.R
\name{medialive_update_reservation}
\alias{medialive_update_reservation}
\title{Update reservation}
\usage{
medialive_update_reservation(Name, ReservationId)
}
\arguments{
\item{Name}{Name of the reservation}

\item{ReservationId}{[required] Unique reservation ID, e.g. '1234567'}
}
\value{
A list with the following syntax:\preformatted{list(
  Reservation = list(
    Arn = "string",
    Count = 123,
    CurrencyCode = "string",
    Duration = 123,
    DurationUnits = "MONTHS",
    End = "string",
    FixedPrice = 123.0,
    Name = "string",
    OfferingDescription = "string",
    OfferingId = "string",
    OfferingType = "NO_UPFRONT",
    Region = "string",
    ReservationId = "string",
    ResourceSpecification = list(
      ChannelClass = "STANDARD"|"SINGLE_PIPELINE",
      Codec = "MPEG2"|"AVC"|"HEVC"|"AUDIO"|"LINK",
      MaximumBitrate = "MAX_10_MBPS"|"MAX_20_MBPS"|"MAX_50_MBPS",
      MaximumFramerate = "MAX_30_FPS"|"MAX_60_FPS",
      Resolution = "SD"|"HD"|"FHD"|"UHD",
      ResourceType = "INPUT"|"OUTPUT"|"MULTIPLEX"|"CHANNEL",
      SpecialFeature = "ADVANCED_AUDIO"|"AUDIO_NORMALIZATION",
      VideoQuality = "STANDARD"|"ENHANCED"|"PREMIUM"
    ),
    Start = "string",
    State = "ACTIVE"|"EXPIRED"|"CANCELED"|"DELETED",
    Tags = list(
      "string"
    ),
    UsagePrice = 123.0
  )
)
}
}
\description{
Update reservation.
}
\section{Request syntax}{
\preformatted{svc$update_reservation(
  Name = "string",
  ReservationId = "string"
)
}
}

\keyword{internal}
