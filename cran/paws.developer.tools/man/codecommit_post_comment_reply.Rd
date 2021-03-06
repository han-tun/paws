% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/codecommit_operations.R
\name{codecommit_post_comment_reply}
\alias{codecommit_post_comment_reply}
\title{Posts a comment in reply to an existing comment on a comparison between
commits or a pull request}
\usage{
codecommit_post_comment_reply(inReplyTo, clientRequestToken, content)
}
\arguments{
\item{inReplyTo}{[required] The system-generated ID of the comment to which you want to reply. To
get this ID, use
\code{\link[=codecommit_get_comments_for_compared_commit]{get_comments_for_compared_commit}}
or
\code{\link[=codecommit_get_comments_for_pull_request]{get_comments_for_pull_request}}.}

\item{clientRequestToken}{A unique, client-generated idempotency token that, when provided in a
request, ensures the request cannot be repeated with a changed
parameter. If a request is received with the same parameters and a token
is included, the request returns information about the initial request
that used that token.}

\item{content}{[required] The contents of your reply to a comment.}
}
\value{
A list with the following syntax:\preformatted{list(
  comment = list(
    commentId = "string",
    content = "string",
    inReplyTo = "string",
    creationDate = as.POSIXct(
      "2015-01-01"
    ),
    lastModifiedDate = as.POSIXct(
      "2015-01-01"
    ),
    authorArn = "string",
    deleted = TRUE|FALSE,
    clientRequestToken = "string",
    callerReactions = list(
      "string"
    ),
    reactionCounts = list(
      123
    )
  )
)
}
}
\description{
Posts a comment in reply to an existing comment on a comparison between
commits or a pull request.
}
\section{Request syntax}{
\preformatted{svc$post_comment_reply(
  inReplyTo = "string",
  clientRequestToken = "string",
  content = "string"
)
}
}

\keyword{internal}
