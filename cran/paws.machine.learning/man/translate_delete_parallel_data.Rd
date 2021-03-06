% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/translate_operations.R
\name{translate_delete_parallel_data}
\alias{translate_delete_parallel_data}
\title{Deletes a parallel data resource in Amazon Translate}
\usage{
translate_delete_parallel_data(Name)
}
\arguments{
\item{Name}{[required] The name of the parallel data resource that is being deleted.}
}
\value{
A list with the following syntax:\preformatted{list(
  Name = "string",
  Status = "CREATING"|"UPDATING"|"ACTIVE"|"DELETING"|"FAILED"
)
}
}
\description{
Deletes a parallel data resource in Amazon Translate.
}
\section{Request syntax}{
\preformatted{svc$delete_parallel_data(
  Name = "string"
)
}
}

\keyword{internal}
