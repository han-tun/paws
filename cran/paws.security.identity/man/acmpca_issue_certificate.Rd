% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/acmpca_operations.R
\name{acmpca_issue_certificate}
\alias{acmpca_issue_certificate}
\title{Uses your private certificate authority (CA), or one that has been
shared with you, to issue a client certificate}
\usage{
acmpca_issue_certificate(CertificateAuthorityArn, Csr, SigningAlgorithm,
  TemplateArn, Validity, IdempotencyToken)
}
\arguments{
\item{CertificateAuthorityArn}{[required] The Amazon Resource Name (ARN) that was returned when you called
\code{\link[=acmpca_create_certificate_authority]{create_certificate_authority}}.
This must be of the form:

\code{arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012 }}

\item{Csr}{[required] The certificate signing request (CSR) for the certificate you want to
issue. You can use the following OpenSSL command to create the CSR and a
2048 bit RSA private key.

\verb{openssl req -new -newkey rsa:2048 -days 365 -keyout private/test_cert_priv_key.pem -out csr/test_cert_.csr}

If you have a configuration file, you can use the following OpenSSL
command. The \code{usr_cert} block in the configuration file contains your
X509 version 3 extensions.

\verb{openssl req -new -config openssl_rsa.cnf -extensions usr_cert -newkey rsa:2048 -days -365 -keyout private/test_cert_priv_key.pem -out csr/test_cert_.csr}

Note: A CSR must provide either a \emph{subject name} or a \emph{subject
alternative name} or the request will be rejected.}

\item{SigningAlgorithm}{[required] The name of the algorithm that will be used to sign the certificate to
be issued.

This parameter should not be confused with the \code{SigningAlgorithm}
parameter used to sign a CSR.}

\item{TemplateArn}{Specifies a custom configuration template to use when issuing a
certificate. If this parameter is not provided, ACM Private CA defaults
to the \code{EndEntityCertificate/V1} template. For CA certificates, you
should choose the shortest path length that meets your needs. The path
length is indicated by the PathLen\emph{N} portion of the ARN, where \emph{N} is
the \href{https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaTerms.html#terms-cadepth}{CA depth}.

Note: The CA depth configured on a subordinate CA certificate must not
exceed the limit set by its parents in the CA hierarchy.

The following service-owned \code{TemplateArn} values are supported by ACM
Private CA:
\itemize{
\item arn:aws:acm-pca:::template/CodeSigningCertificate/V1
\item arn:aws:acm-pca:::template/CodeSigningCertificate_CSRPassthrough/V1
\item arn:aws:acm-pca:::template/EndEntityCertificate/V1
\item arn:aws:acm-pca:::template/EndEntityCertificate_CSRPassthrough/V1
\item arn:aws:acm-pca:::template/EndEntityClientAuthCertificate/V1
\item arn:aws:acm-pca:::template/EndEntityClientAuthCertificate_CSRPassthrough/V1
\item arn:aws:acm-pca:::template/EndEntityServerAuthCertificate/V1
\item arn:aws:acm-pca:::template/EndEntityServerAuthCertificate_CSRPassthrough/V1
\item arn:aws:acm-pca:::template/OCSPSigningCertificate/V1
\item arn:aws:acm-pca:::template/OCSPSigningCertificate_CSRPassthrough/V1
\item arn:aws:acm-pca:::template/RootCACertificate/V1
\item arn:aws:acm-pca:::template/SubordinateCACertificate_PathLen0/V1
\item arn:aws:acm-pca:::template/SubordinateCACertificate_PathLen1/V1
\item arn:aws:acm-pca:::template/SubordinateCACertificate_PathLen2/V1
\item arn:aws:acm-pca:::template/SubordinateCACertificate_PathLen3/V1
}

For more information, see \href{https://docs.aws.amazon.com/acm-pca/latest/userguide/UsingTemplates.html}{Using Templates}.}

\item{Validity}{[required] Information describing the validity period of the certificate.

When issuing a certificate, ACM Private CA sets the "Not Before" date in
the validity field to date and time minus 60 minutes. This is intended
to compensate for time inconsistencies across systems of 60 minutes or
less.

The validity period configured on a certificate must not exceed the
limit set by its parents in the CA hierarchy.}

\item{IdempotencyToken}{Custom string that can be used to distinguish between calls to the
\strong{IssueCertificate} action. Idempotency tokens time out after one hour.
Therefore, if you call \strong{IssueCertificate} multiple times with the same
idempotency token within 5 minutes, ACM Private CA recognizes that you
are requesting only one certificate and will issue only one. If you
change the idempotency token for each call, PCA recognizes that you are
requesting multiple certificates.}
}
\value{
A list with the following syntax:\preformatted{list(
  CertificateArn = "string"
)
}
}
\description{
Uses your private certificate authority (CA), or one that has been
shared with you, to issue a client certificate. This action returns the
Amazon Resource Name (ARN) of the certificate. You can retrieve the
certificate by calling the \code{\link[=acmpca_get_certificate]{get_certificate}}
action and specifying the ARN.

You cannot use the ACM \strong{ListCertificateAuthorities} action to retrieve
the ARNs of the certificates that you issue by using ACM Private CA.
}
\section{Request syntax}{
\preformatted{svc$issue_certificate(
  CertificateAuthorityArn = "string",
  Csr = raw,
  SigningAlgorithm = "SHA256WITHECDSA"|"SHA384WITHECDSA"|"SHA512WITHECDSA"|"SHA256WITHRSA"|"SHA384WITHRSA"|"SHA512WITHRSA",
  TemplateArn = "string",
  Validity = list(
    Value = 123,
    Type = "END_DATE"|"ABSOLUTE"|"DAYS"|"MONTHS"|"YEARS"
  ),
  IdempotencyToken = "string"
)
}
}

\keyword{internal}
