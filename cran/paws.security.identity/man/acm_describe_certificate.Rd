% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/acm_operations.R
\name{acm_describe_certificate}
\alias{acm_describe_certificate}
\title{Returns detailed metadata about the specified ACM certificate}
\usage{
acm_describe_certificate(CertificateArn)
}
\arguments{
\item{CertificateArn}{[required] The Amazon Resource Name (ARN) of the ACM certificate. The ARN must have
the following form:

\code{arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012}

For more information about ARNs, see \href{https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html}{Amazon Resource Names (ARNs) and AWS Service Namespaces}.}
}
\value{
A list with the following syntax:\preformatted{list(
  Certificate = list(
    CertificateArn = "string",
    DomainName = "string",
    SubjectAlternativeNames = list(
      "string"
    ),
    DomainValidationOptions = list(
      list(
        DomainName = "string",
        ValidationEmails = list(
          "string"
        ),
        ValidationDomain = "string",
        ValidationStatus = "PENDING_VALIDATION"|"SUCCESS"|"FAILED",
        ResourceRecord = list(
          Name = "string",
          Type = "CNAME",
          Value = "string"
        ),
        ValidationMethod = "EMAIL"|"DNS"
      )
    ),
    Serial = "string",
    Subject = "string",
    Issuer = "string",
    CreatedAt = as.POSIXct(
      "2015-01-01"
    ),
    IssuedAt = as.POSIXct(
      "2015-01-01"
    ),
    ImportedAt = as.POSIXct(
      "2015-01-01"
    ),
    Status = "PENDING_VALIDATION"|"ISSUED"|"INACTIVE"|"EXPIRED"|"VALIDATION_TIMED_OUT"|"REVOKED"|"FAILED",
    RevokedAt = as.POSIXct(
      "2015-01-01"
    ),
    RevocationReason = "UNSPECIFIED"|"KEY_COMPROMISE"|"CA_COMPROMISE"|"AFFILIATION_CHANGED"|"SUPERCEDED"|"CESSATION_OF_OPERATION"|"CERTIFICATE_HOLD"|"REMOVE_FROM_CRL"|"PRIVILEGE_WITHDRAWN"|"A_A_COMPROMISE",
    NotBefore = as.POSIXct(
      "2015-01-01"
    ),
    NotAfter = as.POSIXct(
      "2015-01-01"
    ),
    KeyAlgorithm = "RSA_2048"|"RSA_1024"|"RSA_4096"|"EC_prime256v1"|"EC_secp384r1"|"EC_secp521r1",
    SignatureAlgorithm = "string",
    InUseBy = list(
      "string"
    ),
    FailureReason = "NO_AVAILABLE_CONTACTS"|"ADDITIONAL_VERIFICATION_REQUIRED"|"DOMAIN_NOT_ALLOWED"|"INVALID_PUBLIC_DOMAIN"|"DOMAIN_VALIDATION_DENIED"|"CAA_ERROR"|"PCA_LIMIT_EXCEEDED"|"PCA_INVALID_ARN"|"PCA_INVALID_STATE"|"PCA_REQUEST_FAILED"|"PCA_NAME_CONSTRAINTS_VALIDATION"|"PCA_RESOURCE_NOT_FOUND"|"PCA_INVALID_ARGS"|"PCA_INVALID_DURATION"|"PCA_ACCESS_DENIED"|"SLR_NOT_FOUND"|"OTHER",
    Type = "IMPORTED"|"AMAZON_ISSUED"|"PRIVATE",
    RenewalSummary = list(
      RenewalStatus = "PENDING_AUTO_RENEWAL"|"PENDING_VALIDATION"|"SUCCESS"|"FAILED",
      DomainValidationOptions = list(
        list(
          DomainName = "string",
          ValidationEmails = list(
            "string"
          ),
          ValidationDomain = "string",
          ValidationStatus = "PENDING_VALIDATION"|"SUCCESS"|"FAILED",
          ResourceRecord = list(
            Name = "string",
            Type = "CNAME",
            Value = "string"
          ),
          ValidationMethod = "EMAIL"|"DNS"
        )
      ),
      RenewalStatusReason = "NO_AVAILABLE_CONTACTS"|"ADDITIONAL_VERIFICATION_REQUIRED"|"DOMAIN_NOT_ALLOWED"|"INVALID_PUBLIC_DOMAIN"|"DOMAIN_VALIDATION_DENIED"|"CAA_ERROR"|"PCA_LIMIT_EXCEEDED"|"PCA_INVALID_ARN"|"PCA_INVALID_STATE"|"PCA_REQUEST_FAILED"|"PCA_NAME_CONSTRAINTS_VALIDATION"|"PCA_RESOURCE_NOT_FOUND"|"PCA_INVALID_ARGS"|"PCA_INVALID_DURATION"|"PCA_ACCESS_DENIED"|"SLR_NOT_FOUND"|"OTHER",
      UpdatedAt = as.POSIXct(
        "2015-01-01"
      )
    ),
    KeyUsages = list(
      list(
        Name = "DIGITAL_SIGNATURE"|"NON_REPUDIATION"|"KEY_ENCIPHERMENT"|"DATA_ENCIPHERMENT"|"KEY_AGREEMENT"|"CERTIFICATE_SIGNING"|"CRL_SIGNING"|"ENCIPHER_ONLY"|"DECIPHER_ONLY"|"ANY"|"CUSTOM"
      )
    ),
    ExtendedKeyUsages = list(
      list(
        Name = "TLS_WEB_SERVER_AUTHENTICATION"|"TLS_WEB_CLIENT_AUTHENTICATION"|"CODE_SIGNING"|"EMAIL_PROTECTION"|"TIME_STAMPING"|"OCSP_SIGNING"|"IPSEC_END_SYSTEM"|"IPSEC_TUNNEL"|"IPSEC_USER"|"ANY"|"NONE"|"CUSTOM",
        OID = "string"
      )
    ),
    CertificateAuthorityArn = "string",
    RenewalEligibility = "ELIGIBLE"|"INELIGIBLE",
    Options = list(
      CertificateTransparencyLoggingPreference = "ENABLED"|"DISABLED"
    )
  )
)
}
}
\description{
Returns detailed metadata about the specified ACM certificate.
}
\section{Request syntax}{
\preformatted{svc$describe_certificate(
  CertificateArn = "string"
)
}
}

\keyword{internal}
