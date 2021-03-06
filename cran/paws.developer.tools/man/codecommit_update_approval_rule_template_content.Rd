% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/codecommit_operations.R
\name{codecommit_update_approval_rule_template_content}
\alias{codecommit_update_approval_rule_template_content}
\title{Updates the content of an approval rule template}
\usage{
codecommit_update_approval_rule_template_content(
  approvalRuleTemplateName, newRuleContent, existingRuleContentSha256)
}
\arguments{
\item{approvalRuleTemplateName}{[required] The name of the approval rule template where you want to update the
content of the rule.}

\item{newRuleContent}{[required] The content that replaces the existing content of the rule. Content
statements must be complete. You cannot provide only the changes.}

\item{existingRuleContentSha256}{The SHA-256 hash signature for the content of the approval rule. You can
retrieve this information by using
\code{\link[=codecommit_get_pull_request]{get_pull_request}}.}
}
\value{
A list with the following syntax:\preformatted{list(
  approvalRuleTemplate = list(
    approvalRuleTemplateId = "string",
    approvalRuleTemplateName = "string",
    approvalRuleTemplateDescription = "string",
    approvalRuleTemplateContent = "string",
    ruleContentSha256 = "string",
    lastModifiedDate = as.POSIXct(
      "2015-01-01"
    ),
    creationDate = as.POSIXct(
      "2015-01-01"
    ),
    lastModifiedUser = "string"
  )
)
}
}
\description{
Updates the content of an approval rule template. You can change the
number of required approvals, the membership of the approval rule, and
whether an approval pool is defined.
}
\section{Request syntax}{
\preformatted{svc$update_approval_rule_template_content(
  approvalRuleTemplateName = "string",
  newRuleContent = "string",
  existingRuleContentSha256 = "string"
)
}
}

\keyword{internal}
