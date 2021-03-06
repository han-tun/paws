% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/route53_operations.R
\name{route53_delete_hosted_zone}
\alias{route53_delete_hosted_zone}
\title{Deletes a hosted zone}
\usage{
route53_delete_hosted_zone(Id)
}
\arguments{
\item{Id}{[required] The ID of the hosted zone you want to delete.}
}
\value{
A list with the following syntax:\preformatted{list(
  ChangeInfo = list(
    Id = "string",
    Status = "PENDING"|"INSYNC",
    SubmittedAt = as.POSIXct(
      "2015-01-01"
    ),
    Comment = "string"
  )
)
}
}
\description{
Deletes a hosted zone.

If the hosted zone was created by another service, such as AWS Cloud
Map, see \href{https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DeleteHostedZone.html#delete-public-hosted-zone-created-by-another-service}{Deleting Public Hosted Zones That Were Created by Another Service}
in the \emph{Amazon Route 53 Developer Guide} for information about how to
delete it. (The process is the same for public and private hosted zones
that were created by another service.)

If you want to keep your domain registration but you want to stop
routing internet traffic to your website or web application, we
recommend that you delete resource record sets in the hosted zone
instead of deleting the hosted zone.

If you delete a hosted zone, you can't undelete it. You must create a
new hosted zone and update the name servers for your domain
registration, which can require up to 48 hours to take effect. (If you
delegated responsibility for a subdomain to a hosted zone and you delete
the child hosted zone, you must update the name servers in the parent
hosted zone.) In addition, if you delete a hosted zone, someone could
hijack the domain and route traffic to their own resources using your
domain name.

If you want to avoid the monthly charge for the hosted zone, you can
transfer DNS service for the domain to a free DNS service. When you
transfer DNS service, you have to update the name servers for the domain
registration. If the domain is registered with Route 53, see
\href{https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_UpdateDomainNameservers.html}{UpdateDomainNameservers}
for information about how to replace Route 53 name servers with name
servers for the new DNS service. If the domain is registered with
another registrar, use the method provided by the registrar to update
name servers for the domain registration. For more information, perform
an internet search on "free DNS service."

You can delete a hosted zone only if it contains only the default SOA
record and NS resource record sets. If the hosted zone contains other
resource record sets, you must delete them before you can delete the
hosted zone. If you try to delete a hosted zone that contains other
resource record sets, the request fails, and Route 53 returns a
\code{HostedZoneNotEmpty} error. For information about deleting records from
your hosted zone, see
\code{\link[=route53_change_resource_record_sets]{change_resource_record_sets}}.

To verify that the hosted zone has been deleted, do one of the
following:
\itemize{
\item Use the \code{\link[=route53_get_hosted_zone]{get_hosted_zone}} action to
request information about the hosted zone.
\item Use the \code{\link[=route53_list_hosted_zones]{list_hosted_zones}} action to
get a list of the hosted zones associated with the current AWS
account.
}
}
\section{Request syntax}{
\preformatted{svc$delete_hosted_zone(
  Id = "string"
)
}
}

\keyword{internal}
