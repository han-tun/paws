% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/connect_operations.R
\name{connect_get_metric_data}
\alias{connect_get_metric_data}
\title{Gets historical metric data from the specified Amazon Connect instance}
\usage{
connect_get_metric_data(InstanceId, StartTime, EndTime, Filters,
  Groupings, HistoricalMetrics, NextToken, MaxResults)
}
\arguments{
\item{InstanceId}{[required] The identifier of the Amazon Connect instance.}

\item{StartTime}{[required] The timestamp, in UNIX Epoch time format, at which to start the
reporting interval for the retrieval of historical metrics data. The
time must be specified using a multiple of 5 minutes, such as 10:05,
10:10, 10:15.

The start time cannot be earlier than 24 hours before the time of the
request. Historical metrics are available only for 24 hours.}

\item{EndTime}{[required] The timestamp, in UNIX Epoch time format, at which to end the reporting
interval for the retrieval of historical metrics data. The time must be
specified using an interval of 5 minutes, such as 11:00, 11:05, 11:10,
and must be later than the start time timestamp.

The time range between the start and end time must be less than 24
hours.}

\item{Filters}{[required] The queues, up to 100, or channels, to use to filter the metrics
returned. Metric data is retrieved only for the resources associated
with the queues or channels included in the filter. You can include both
queue IDs and queue ARNs in the same request. VOICE, CHAT, and TASK
channels are supported.}

\item{Groupings}{The grouping applied to the metrics returned. For example, when results
are grouped by queue, the metrics returned are grouped by queue. The
values returned apply to the metrics for each queue rather than
aggregated for all queues.

The only supported grouping is \code{QUEUE}.

If no grouping is specified, a summary of metrics for all queues is
returned.}

\item{HistoricalMetrics}{[required] The metrics to retrieve. Specify the name, unit, and statistic for each
metric. The following historical metrics are available. For a
description of each metric, see \href{https://docs.aws.amazon.com/connect/latest/adminguide/historical-metrics-definitions.html}{Historical Metrics Definitions}
in the \emph{Amazon Connect Administrator Guide}.
\subsection{ABANDON_TIME}{

Unit: SECONDS

Statistic: AVG
}

\subsection{AFTER_CONTACT_WORK_TIME}{

Unit: SECONDS

Statistic: AVG
}

\subsection{API_CONTACTS_HANDLED}{

Unit: COUNT

Statistic: SUM
}

\subsection{CALLBACK_CONTACTS_HANDLED}{

Unit: COUNT

Statistic: SUM
}

\subsection{CONTACTS_ABANDONED}{

Unit: COUNT

Statistic: SUM
}

\subsection{CONTACTS_AGENT_HUNG_UP_FIRST}{

Unit: COUNT

Statistic: SUM
}

\subsection{CONTACTS_CONSULTED}{

Unit: COUNT

Statistic: SUM
}

\subsection{CONTACTS_HANDLED}{

Unit: COUNT

Statistic: SUM
}

\subsection{CONTACTS_HANDLED_INCOMING}{

Unit: COUNT

Statistic: SUM
}

\subsection{CONTACTS_HANDLED_OUTBOUND}{

Unit: COUNT

Statistic: SUM
}

\subsection{CONTACTS_HOLD_ABANDONS}{

Unit: COUNT

Statistic: SUM
}

\subsection{CONTACTS_MISSED}{

Unit: COUNT

Statistic: SUM
}

\subsection{CONTACTS_QUEUED}{

Unit: COUNT

Statistic: SUM
}

\subsection{CONTACTS_TRANSFERRED_IN}{

Unit: COUNT

Statistic: SUM
}

\subsection{CONTACTS_TRANSFERRED_IN_FROM_QUEUE}{

Unit: COUNT

Statistic: SUM
}

\subsection{CONTACTS_TRANSFERRED_OUT}{

Unit: COUNT

Statistic: SUM
}

\subsection{CONTACTS_TRANSFERRED_OUT_FROM_QUEUE}{

Unit: COUNT

Statistic: SUM
}

\subsection{HANDLE_TIME}{

Unit: SECONDS

Statistic: AVG
}

\subsection{HOLD_TIME}{

Unit: SECONDS

Statistic: AVG
}

\subsection{INTERACTION_AND_HOLD_TIME}{

Unit: SECONDS

Statistic: AVG
}

\subsection{INTERACTION_TIME}{

Unit: SECONDS

Statistic: AVG
}

\subsection{OCCUPANCY}{

Unit: PERCENT

Statistic: AVG
}

\subsection{QUEUE_ANSWER_TIME}{

Unit: SECONDS

Statistic: AVG
}

\subsection{QUEUED_TIME}{

Unit: SECONDS

Statistic: MAX
}

\subsection{SERVICE_LEVEL}{

Unit: PERCENT

Statistic: AVG

Threshold: Only "Less than" comparisons are supported, with the
following service level thresholds: 15, 20, 25, 30, 45, 60, 90, 120,
180, 240, 300, 600
}}

\item{NextToken}{The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.}

\item{MaxResults}{The maximimum number of results to return per page.}
}
\value{
A list with the following syntax:\preformatted{list(
  NextToken = "string",
  MetricResults = list(
    list(
      Dimensions = list(
        Queue = list(
          Id = "string",
          Arn = "string"
        ),
        Channel = "VOICE"|"CHAT"|"TASK"
      ),
      Collections = list(
        list(
          Metric = list(
            Name = "CONTACTS_QUEUED"|"CONTACTS_HANDLED"|"CONTACTS_ABANDONED"|"CONTACTS_CONSULTED"|"CONTACTS_AGENT_HUNG_UP_FIRST"|"CONTACTS_HANDLED_INCOMING"|"CONTACTS_HANDLED_OUTBOUND"|"CONTACTS_HOLD_ABANDONS"|"CONTACTS_TRANSFERRED_IN"|"CONTACTS_TRANSFERRED_OUT"|"CONTACTS_TRANSFERRED_IN_FROM_QUEUE"|"CONTACTS_TRANSFERRED_OUT_FROM_QUEUE"|"CONTACTS_MISSED"|"CALLBACK_CONTACTS_HANDLED"|"API_CONTACTS_HANDLED"|"OCCUPANCY"|"HANDLE_TIME"|"AFTER_CONTACT_WORK_TIME"|"QUEUED_TIME"|"ABANDON_TIME"|"QUEUE_ANSWER_TIME"|"HOLD_TIME"|"INTERACTION_TIME"|"INTERACTION_AND_HOLD_TIME"|"SERVICE_LEVEL",
            Threshold = list(
              Comparison = "LT",
              ThresholdValue = 123.0
            ),
            Statistic = "SUM"|"MAX"|"AVG",
            Unit = "SECONDS"|"COUNT"|"PERCENT"
          ),
          Value = 123.0
        )
      )
    )
  )
)
}
}
\description{
Gets historical metric data from the specified Amazon Connect instance.

For a description of each historical metric, see \href{https://docs.aws.amazon.com/connect/latest/adminguide/historical-metrics-definitions.html}{Historical Metrics Definitions}
in the \emph{Amazon Connect Administrator Guide}.
}
\section{Request syntax}{
\preformatted{svc$get_metric_data(
  InstanceId = "string",
  StartTime = as.POSIXct(
    "2015-01-01"
  ),
  EndTime = as.POSIXct(
    "2015-01-01"
  ),
  Filters = list(
    Queues = list(
      "string"
    ),
    Channels = list(
      "VOICE"|"CHAT"|"TASK"
    )
  ),
  Groupings = list(
    "QUEUE"|"CHANNEL"
  ),
  HistoricalMetrics = list(
    list(
      Name = "CONTACTS_QUEUED"|"CONTACTS_HANDLED"|"CONTACTS_ABANDONED"|"CONTACTS_CONSULTED"|"CONTACTS_AGENT_HUNG_UP_FIRST"|"CONTACTS_HANDLED_INCOMING"|"CONTACTS_HANDLED_OUTBOUND"|"CONTACTS_HOLD_ABANDONS"|"CONTACTS_TRANSFERRED_IN"|"CONTACTS_TRANSFERRED_OUT"|"CONTACTS_TRANSFERRED_IN_FROM_QUEUE"|"CONTACTS_TRANSFERRED_OUT_FROM_QUEUE"|"CONTACTS_MISSED"|"CALLBACK_CONTACTS_HANDLED"|"API_CONTACTS_HANDLED"|"OCCUPANCY"|"HANDLE_TIME"|"AFTER_CONTACT_WORK_TIME"|"QUEUED_TIME"|"ABANDON_TIME"|"QUEUE_ANSWER_TIME"|"HOLD_TIME"|"INTERACTION_TIME"|"INTERACTION_AND_HOLD_TIME"|"SERVICE_LEVEL",
      Threshold = list(
        Comparison = "LT",
        ThresholdValue = 123.0
      ),
      Statistic = "SUM"|"MAX"|"AVG",
      Unit = "SECONDS"|"COUNT"|"PERCENT"
    )
  ),
  NextToken = "string",
  MaxResults = 123
)
}
}

\keyword{internal}
