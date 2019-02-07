#' @include struct.R
NULL

# A Url object stores a parse URL.
Url <- struct(
  scheme = "",
  opaque = "",
  user = "",
  host = "",
  path = "",
  raw_path = "",
  force_query = FALSE,
  raw_query = "",
  fragment = ""
)

# Parse a URL into a Url object.
# TODO: Finish.
parse_url <- function(url) {
  p <- httr::parse_url(url)
  if (is.null(p$scheme)) p$scheme <- ""
  if (is.null(p$host)) p$host <- ""
  if (!is.null(p$port)) p$host <- paste0(p$host, ":", p$port)
  if (p$path == "") p$path <- "/"
  if (substr(p$path, 1, 1) != "/") p$path <- paste0("/", p$path)
  u <- Url(
    scheme = p$scheme,
    host = p$host,
    path = p$path,
    raw_query = encode(p$query),
  )
  return(u)
}

# Build a URL from a Url object.
# <scheme>://<net_loc>/<path>;<params>?<query>#<fragment>
build_url <- function(url) {
  if (url$scheme != "" && url$host != "") {
    l <- paste0(url$scheme, "://", url$host)
  } else {
    return("")
  }
  if (url$path != "") l <- paste0(l, url$path)
  if (url$raw_query != "") l <- paste(l, url$raw_query, sep = "?")
  if (url$fragment != "") l <- paste0(l, "#", url$fragment)
  return(l)
}

# Encode a list into a query string.
# e.g. `list(bar = "baz", foo = "qux")` -> "bar=baz&foo=qux".
encode <- function(body) {
  string = ""
  if (is.null(body) || length(body) == 0) return(string)
  for (key in sort(names(body))) {
    k <- query_escape(key)
    values <- body[[key]]
    for (value in values) {
      v <- query_escape(query_convert(value))
      el <- paste0(k, "=", v)
      if (string != "") {
        string <- paste0(string, "&")
      }
      string <- paste0(string, el)
    }
  }
  return(string)
}

# Decode a query string into a list.
# e.g. "bar=baz&foo=qux" -> `list(bar = "baz", foo = "qux")`.
parse_query <- function(query) {
  result <- list()
  for (el in strsplit(query, "&")[[1]]) {
    pair <- strsplit(el, "=")[[1]]
    key <- pair[1]
    value <- pair[2]
    result[[key]] <- c(result[[key]], query_unescape(value))
  }
  return(result)
}

# Escape strings so they can be safely included in a URL query.
query_escape <- function(string) {
  return(escape(string, "encodeQueryComponent"))
}

# Escape strings so they can be safely included in a URL.
escape <- function(string, mode) {
  t <- ""
  for (i in 1:nchar(string)) {
    c <- substr(string, i, i)
    if (c == " " && mode == "encodeQueryComponent") {
      t <- paste0(t, "+")
    } else if (should_escape(c, mode)) {
      t <- paste0(t, utils::URLencode(c, reserved = TRUE))
    } else {
      t <- paste0(t, c)
    }
  }
  return(t)
}

# Return whether to escape a given character.
should_escape <- function(char, mode) {
  if (grepl("[A-Za-z0-9]", char)) {
    return(FALSE)
  }

  if (mode == "encodeHost" || mode == "encodeZone") {
    if (char %in% c("!", "$", "&", "'", "(", ")", "*", "+", ",", ";", "=", ":", "[", "]", "<", ">", '"')) {
      return(FALSE)
    }
  }

  if (char %in% c("-", "_", ".", "~")) {
    return(FALSE)
  }

  if (char %in% c("$", "&", "+", ",", "/", ":", ";", "=", "?", "@")) {
    if (mode == "encodePath") {
      return(char == "?")
    }

    if (mode == "encodePathSegment") {
      return(char %in% c("/", ";", ",", "?"))
    }

    if (mode == "encodeQueryComponent") {
      return(TRUE)
    }

    if (mode == "encodeFragment") {
      return(FALSE)
    }
  }
  return(TRUE)
}

# unescape a string.
# TODO: Complete.
unescape <- function(string) {
  return(utils::URLdecode(string))
}

# The inverse of query_escape: convert the encoded string back to the original,
# e.g. "%20" -> " ".
# TODO: Complete.
query_unescape <- function(string) {
  return(unescape(string))
}

#
escaped_path <- function(url) {
  if (url$raw_path != "" && valid_encoded_path(url$raw_path)) {
    if (unescape(url$raw_path) == url$path) {
      return(url$raw_path)
    }
  }
  if (url$path == "*") {
    return("*")
  }
  return(escape(url$path, "encodePath"))
}

# Return whether a given path is a valid encoded path, i.e. without characters
# that require escaping.
# TODO: Implement.
valid_encoded_path <- function(path) {
  return(TRUE)
}

# Convert a value to be used in a query string.
query_convert <- function(value) {
  convert_fn <- as.character
  if (is.logical(value)) {
    convert_fn <- convert_boolean
  }
  string <- convert_fn(value)
  return(string)
}