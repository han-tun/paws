% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/devicefarm_operations.R
\name{devicefarm_get_suite}
\alias{devicefarm_get_suite}
\title{Gets information about a suite}
\usage{
devicefarm_get_suite(arn)
}
\arguments{
\item{arn}{[required] The suite's ARN.}
}
\value{
A list with the following syntax:\preformatted{list(
  suite = list(
    arn = "string",
    name = "string",
    type = "BUILTIN_FUZZ"|"BUILTIN_EXPLORER"|"WEB_PERFORMANCE_PROFILE"|"APPIUM_JAVA_JUNIT"|"APPIUM_JAVA_TESTNG"|"APPIUM_PYTHON"|"APPIUM_NODE"|"APPIUM_RUBY"|"APPIUM_WEB_JAVA_JUNIT"|"APPIUM_WEB_JAVA_TESTNG"|"APPIUM_WEB_PYTHON"|"APPIUM_WEB_NODE"|"APPIUM_WEB_RUBY"|"CALABASH"|"INSTRUMENTATION"|"UIAUTOMATION"|"UIAUTOMATOR"|"XCTEST"|"XCTEST_UI"|"REMOTE_ACCESS_RECORD"|"REMOTE_ACCESS_REPLAY",
    created = as.POSIXct(
      "2015-01-01"
    ),
    status = "PENDING"|"PENDING_CONCURRENCY"|"PENDING_DEVICE"|"PROCESSING"|"SCHEDULING"|"PREPARING"|"RUNNING"|"COMPLETED"|"STOPPING",
    result = "PENDING"|"PASSED"|"WARNED"|"FAILED"|"SKIPPED"|"ERRORED"|"STOPPED",
    started = as.POSIXct(
      "2015-01-01"
    ),
    stopped = as.POSIXct(
      "2015-01-01"
    ),
    counters = list(
      total = 123,
      passed = 123,
      failed = 123,
      warned = 123,
      errored = 123,
      stopped = 123,
      skipped = 123
    ),
    message = "string",
    deviceMinutes = list(
      total = 123.0,
      metered = 123.0,
      unmetered = 123.0
    )
  )
)
}
}
\description{
Gets information about a suite.
}
\section{Request syntax}{
\preformatted{svc$get_suite(
  arn = "string"
)
}
}

\examples{
\dontrun{
# The following example gets information about a specific test suite.
svc$get_suite(
  arn = "arn:aws:devicefarm:us-west-2:123456789101:suite:EXAMPLE-GUID-123-456"
)
}

}
\keyword{internal}
