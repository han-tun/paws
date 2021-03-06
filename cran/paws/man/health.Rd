% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.R
\name{health}
\alias{health}
\title{AWS Health APIs and Notifications}
\usage{
health(config = list())
}
\arguments{
\item{config}{Optional configuration of credentials, endpoint, and/or region.}
}
\description{
AWS Health

The AWS Health API provides programmatic access to the AWS Health
information that appears in the \href{https://phd.aws.amazon.com/phd/home#/}{AWS Personal Health Dashboard}. You can use the API
operations to get information about AWS Health events that affect your
AWS services and resources.

You must have a Business or Enterprise support plan from \href{https://aws.amazon.com/premiumsupport/}{AWS Support} to use the AWS Health
API. If you call the AWS Health API from an AWS account that doesn't
have a Business or Enterprise support plan, you receive a
\code{SubscriptionRequiredException} error.

AWS Health has a single endpoint: health.us-east-1.amazonaws.com
(HTTPS). Use this endpoint to call the AWS Health API operations.

For authentication of requests, AWS Health uses the \href{https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html}{Signature Version 4 Signing Process}.

If your AWS account is part of AWS Organizations, you can use the AWS
Health organizational view feature. This feature provides a centralized
view of AWS Health events across all accounts in your organization. You
can aggregate AWS Health events in real time to identify accounts in
your organization that are affected by an operational event or get
notified of security vulnerabilities. Use the organizational view API
operations to enable this feature and return event information. For more
information, see \href{https://docs.aws.amazon.com/health/latest/ug/aggregate-events.html}{Aggregating AWS Health events}
in the \emph{AWS Health User Guide}.

When you use the AWS Health API operations to return AWS Health events,
see the following recommendations:
\itemize{
\item Use the
\href{https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html#AWSHealth-Type-Event-eventScopeCode}{eventScopeCode}
parameter to specify whether to return AWS Health events that are
public or account-specific.
\item Use pagination to view all events from the response. For example, if
you call the
\code{\link[=health_describe_events_for_organization]{describe_events_for_organization}}
operation to get all events in your organization, you might receive
several page results. Specify the \code{nextToken} in the next request to
return more results.
}
}
\section{Service syntax}{
\preformatted{svc <- health(
  config = list(
    credentials = list(
      creds = list(
        access_key_id = "string",
        secret_access_key = "string",
        session_token = "string"
      ),
      profile = "string"
    ),
    endpoint = "string",
    region = "string"
  )
)
}
}

\section{Operations}{

\tabular{ll}{
\link[=health_describe_affected_accounts_for_organization]{describe_affected_accounts_for_organization} \tab Returns a list of accounts in the organization from AWS Organizations that are affected by the provided event\cr
\link[=health_describe_affected_entities]{describe_affected_entities} \tab Returns a list of entities that have been affected by the specified events, based on the specified filter criteria\cr
\link[=health_describe_affected_entities_for_organization]{describe_affected_entities_for_organization} \tab Returns a list of entities that have been affected by one or more events for one or more accounts in your organization in AWS Organizations, based on the filter criteria\cr
\link[=health_describe_entity_aggregates]{describe_entity_aggregates} \tab Returns the number of entities that are affected by each of the specified events\cr
\link[=health_describe_event_aggregates]{describe_event_aggregates} \tab Returns the number of events of each event type (issue, scheduled change, and account notification)\cr
\link[=health_describe_event_details]{describe_event_details} \tab Returns detailed information about one or more specified events\cr
\link[=health_describe_event_details_for_organization]{describe_event_details_for_organization} \tab Returns detailed information about one or more specified events for one or more accounts in your organization\cr
\link[=health_describe_events]{describe_events} \tab Returns information about events that meet the specified filter criteria\cr
\link[=health_describe_events_for_organization]{describe_events_for_organization} \tab Returns information about events across your organization in AWS Organizations\cr
\link[=health_describe_event_types]{describe_event_types} \tab Returns the event types that meet the specified filter criteria\cr
\link[=health_describe_health_service_status_for_organization]{describe_health_service_status_for_organization} \tab This operation provides status information on enabling or disabling AWS Health to work with your organization\cr
\link[=health_disable_health_service_access_for_organization]{disable_health_service_access_for_organization} \tab Disables AWS Health from working with AWS Organizations\cr
\link[=health_enable_health_service_access_for_organization]{enable_health_service_access_for_organization} \tab Calling this operation enables AWS Health to work with AWS Organizations
}
}

\examples{
\dontrun{
svc <- health()
svc$describe_affected_accounts_for_organization(
  Foo = 123
)
}

}
