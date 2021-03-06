% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/guardduty_operations.R
\name{guardduty_update_filter}
\alias{guardduty_update_filter}
\title{Updates the filter specified by the filter name}
\usage{
guardduty_update_filter(DetectorId, FilterName, Description, Action,
  Rank, FindingCriteria)
}
\arguments{
\item{DetectorId}{[required] The unique ID of the detector that specifies the GuardDuty service where
you want to update a filter.}

\item{FilterName}{[required] The name of the filter.}

\item{Description}{The description of the filter.}

\item{Action}{Specifies the action that is to be applied to the findings that match
the filter.}

\item{Rank}{Specifies the position of the filter in the list of current filters.
Also specifies the order in which this filter is applied to the
findings.}

\item{FindingCriteria}{Represents the criteria to be used in the filter for querying findings.}
}
\value{
A list with the following syntax:\preformatted{list(
  Name = "string"
)
}
}
\description{
Updates the filter specified by the filter name.
}
\section{Request syntax}{
\preformatted{svc$update_filter(
  DetectorId = "string",
  FilterName = "string",
  Description = "string",
  Action = "NOOP"|"ARCHIVE",
  Rank = 123,
  FindingCriteria = list(
    Criterion = list(
      list(
        Eq = list(
          "string"
        ),
        Neq = list(
          "string"
        ),
        Gt = 123,
        Gte = 123,
        Lt = 123,
        Lte = 123,
        Equals = list(
          "string"
        ),
        NotEquals = list(
          "string"
        ),
        GreaterThan = 123,
        GreaterThanOrEqual = 123,
        LessThan = 123,
        LessThanOrEqual = 123
      )
    )
  )
)
}
}

\keyword{internal}
