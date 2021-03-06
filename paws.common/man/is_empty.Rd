% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/util.R
\name{is_empty}
\alias{is_empty}
\title{Check whether an object is empty}
\usage{
is_empty(x)
}
\arguments{
\item{x}{An object.}
}
\description{
Check whether an object is empty, e.g. has no sub-elements, is NA, or is the
empty string.
}
\examples{
is_empty(NA) # TRUE
is_empty("") # TRUE
is_empty(list()) # TRUE
is_empty(list(list())) # TRUE

is_empty(1) # FALSE
is_empty(list(1)) # FALSE
is_empty(list(list(1))) # FALSE

}
