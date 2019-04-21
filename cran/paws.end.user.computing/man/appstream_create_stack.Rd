% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/appstream_operations.R
\name{appstream_create_stack}
\alias{appstream_create_stack}
\title{Creates a stack to start streaming applications to users}
\usage{
appstream_create_stack(Name, Description, DisplayName,
  StorageConnectors, RedirectURL, FeedbackURL, UserSettings,
  ApplicationSettings, Tags)
}
\arguments{
\item{Name}{[required] The name of the stack.}

\item{Description}{The description to display.}

\item{DisplayName}{The stack name to display.}

\item{StorageConnectors}{The storage connectors to enable.}

\item{RedirectURL}{The URL that users are redirected to after their streaming session ends.}

\item{FeedbackURL}{The URL that users are redirected to after they click the Send Feedback
link. If no URL is specified, no Send Feedback link is displayed.}

\item{UserSettings}{The actions that are enabled or disabled for users during their
streaming sessions. By default, these actions are enabled.}

\item{ApplicationSettings}{The persistent application settings for users of a stack. When these
settings are enabled, changes that users make to applications and
Windows settings are automatically saved after each session and applied
to the next session.}

\item{Tags}{The tags to associate with the stack. A tag is a key-value pair, and the
value is optional. For example, Environment=Test. If you do not specify
a value, Environment=.

If you do not specify a value, the value is set to an empty string.

For more information about tags, see \href{https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html}{Tagging Your Resources}
in the \emph{Amazon AppStream 2.0 Developer Guide}.}
}
\description{
Creates a stack to start streaming applications to users. A stack
consists of an associated fleet, user access policies, and storage
configurations.
}
\section{Request syntax}{
\preformatted{svc$create_stack(
  Name = "string",
  Description = "string",
  DisplayName = "string",
  StorageConnectors = list(
    list(
      ConnectorType = "HOMEFOLDERS"|"GOOGLE_DRIVE"|"ONE_DRIVE",
      ResourceIdentifier = "string",
      Domains = list(
        "string"
      )
    )
  ),
  RedirectURL = "string",
  FeedbackURL = "string",
  UserSettings = list(
    list(
      Action = "CLIPBOARD_COPY_FROM_LOCAL_DEVICE"|"CLIPBOARD_COPY_TO_LOCAL_DEVICE"|"FILE_UPLOAD"|"FILE_DOWNLOAD"|"PRINTING_TO_LOCAL_DEVICE",
      Permission = "ENABLED"|"DISABLED"
    )
  ),
  ApplicationSettings = list(
    Enabled = TRUE|FALSE,
    SettingsGroup = "string"
  ),
  Tags = list(
    "string"
  )
)
}
}

\keyword{internal}