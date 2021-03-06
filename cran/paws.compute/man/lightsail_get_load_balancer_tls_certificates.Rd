% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lightsail_operations.R
\name{lightsail_get_load_balancer_tls_certificates}
\alias{lightsail_get_load_balancer_tls_certificates}
\title{Returns information about the TLS certificates that are associated with
the specified Lightsail load balancer}
\usage{
lightsail_get_load_balancer_tls_certificates(loadBalancerName)
}
\arguments{
\item{loadBalancerName}{[required] The name of the load balancer you associated with your SSL/TLS
certificate.}
}
\value{
A list with the following syntax:\preformatted{list(
  tlsCertificates = list(
    list(
      name = "string",
      arn = "string",
      supportCode = "string",
      createdAt = as.POSIXct(
        "2015-01-01"
      ),
      location = list(
        availabilityZone = "string",
        regionName = "us-east-1"|"us-east-2"|"us-west-1"|"us-west-2"|"eu-west-1"|"eu-west-2"|"eu-west-3"|"eu-central-1"|"ca-central-1"|"ap-south-1"|"ap-southeast-1"|"ap-southeast-2"|"ap-northeast-1"|"ap-northeast-2"
      ),
      resourceType = "ContainerService"|"Instance"|"StaticIp"|"KeyPair"|"InstanceSnapshot"|"Domain"|"PeeredVpc"|"LoadBalancer"|"LoadBalancerTlsCertificate"|"Disk"|"DiskSnapshot"|"RelationalDatabase"|"RelationalDatabaseSnapshot"|"ExportSnapshotRecord"|"CloudFormationStackRecord"|"Alarm"|"ContactMethod"|"Distribution"|"Certificate",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      ),
      loadBalancerName = "string",
      isAttached = TRUE|FALSE,
      status = "PENDING_VALIDATION"|"ISSUED"|"INACTIVE"|"EXPIRED"|"VALIDATION_TIMED_OUT"|"REVOKED"|"FAILED"|"UNKNOWN",
      domainName = "string",
      domainValidationRecords = list(
        list(
          name = "string",
          type = "string",
          value = "string",
          validationStatus = "PENDING_VALIDATION"|"FAILED"|"SUCCESS",
          domainName = "string"
        )
      ),
      failureReason = "NO_AVAILABLE_CONTACTS"|"ADDITIONAL_VERIFICATION_REQUIRED"|"DOMAIN_NOT_ALLOWED"|"INVALID_PUBLIC_DOMAIN"|"OTHER",
      issuedAt = as.POSIXct(
        "2015-01-01"
      ),
      issuer = "string",
      keyAlgorithm = "string",
      notAfter = as.POSIXct(
        "2015-01-01"
      ),
      notBefore = as.POSIXct(
        "2015-01-01"
      ),
      renewalSummary = list(
        renewalStatus = "PENDING_AUTO_RENEWAL"|"PENDING_VALIDATION"|"SUCCESS"|"FAILED",
        domainValidationOptions = list(
          list(
            domainName = "string",
            validationStatus = "PENDING_VALIDATION"|"FAILED"|"SUCCESS"
          )
        )
      ),
      revocationReason = "UNSPECIFIED"|"KEY_COMPROMISE"|"CA_COMPROMISE"|"AFFILIATION_CHANGED"|"SUPERCEDED"|"CESSATION_OF_OPERATION"|"CERTIFICATE_HOLD"|"REMOVE_FROM_CRL"|"PRIVILEGE_WITHDRAWN"|"A_A_COMPROMISE",
      revokedAt = as.POSIXct(
        "2015-01-01"
      ),
      serial = "string",
      signatureAlgorithm = "string",
      subject = "string",
      subjectAlternativeNames = list(
        "string"
      )
    )
  )
)
}
}
\description{
Returns information about the TLS certificates that are associated with
the specified Lightsail load balancer.

TLS is just an updated, more secure version of Secure Socket Layer
(SSL).

You can have a maximum of 2 certificates associated with a Lightsail
load balancer. One is active and the other is inactive.
}
\section{Request syntax}{
\preformatted{svc$get_load_balancer_tls_certificates(
  loadBalancerName = "string"
)
}
}

\keyword{internal}
