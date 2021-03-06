% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/transcribeservice_operations.R
\name{transcribeservice_create_vocabulary_filter}
\alias{transcribeservice_create_vocabulary_filter}
\title{Creates a new vocabulary filter that you can use to filter words, such
as profane words, from the output of a transcription job}
\usage{
transcribeservice_create_vocabulary_filter(VocabularyFilterName,
  LanguageCode, Words, VocabularyFilterFileUri)
}
\arguments{
\item{VocabularyFilterName}{[required] The vocabulary filter name. The name must be unique within the account
that contains it. If you try to create a vocabulary filter with the same
name as another vocabulary filter, you get a \code{ConflictException} error.}

\item{LanguageCode}{[required] The language code of the words in the vocabulary filter. All words in
the filter must be in the same language. The vocabulary filter can only
be used with transcription jobs in the specified language.}

\item{Words}{The words to use in the vocabulary filter. Only use characters from the
character set defined for custom vocabularies. For a list of character
sets, see \href{https://docs.aws.amazon.com/transcribe/latest/dg/how-vocabulary.html#charsets}{Character Sets for Custom Vocabularies}.

If you provide a list of words in the \code{Words} parameter, you can't use
the \code{VocabularyFilterFileUri} parameter.}

\item{VocabularyFilterFileUri}{The Amazon S3 location of a text file used as input to create the
vocabulary filter. Only use characters from the character set defined
for custom vocabularies. For a list of character sets, see \href{https://docs.aws.amazon.com/transcribe/latest/dg/how-vocabulary.html#charsets}{Character Sets for Custom Vocabularies}.

The specified file must be less than 50 KB of UTF-8 characters.

If you provide the location of a list of words in the
\code{VocabularyFilterFileUri} parameter, you can't use the \code{Words}
parameter.}
}
\value{
A list with the following syntax:\preformatted{list(
  VocabularyFilterName = "string",
  LanguageCode = "af-ZA"|"ar-AE"|"ar-SA"|"cy-GB"|"da-DK"|"de-CH"|"de-DE"|"en-AB"|"en-AU"|"en-GB"|"en-IE"|"en-IN"|"en-US"|"en-WL"|"es-ES"|"es-US"|"fa-IR"|"fr-CA"|"fr-FR"|"ga-IE"|"gd-GB"|"he-IL"|"hi-IN"|"id-ID"|"it-IT"|"ja-JP"|"ko-KR"|"ms-MY"|"nl-NL"|"pt-BR"|"pt-PT"|"ru-RU"|"ta-IN"|"te-IN"|"tr-TR"|"zh-CN",
  LastModifiedTime = as.POSIXct(
    "2015-01-01"
  )
)
}
}
\description{
Creates a new vocabulary filter that you can use to filter words, such
as profane words, from the output of a transcription job.
}
\section{Request syntax}{
\preformatted{svc$create_vocabulary_filter(
  VocabularyFilterName = "string",
  LanguageCode = "af-ZA"|"ar-AE"|"ar-SA"|"cy-GB"|"da-DK"|"de-CH"|"de-DE"|"en-AB"|"en-AU"|"en-GB"|"en-IE"|"en-IN"|"en-US"|"en-WL"|"es-ES"|"es-US"|"fa-IR"|"fr-CA"|"fr-FR"|"ga-IE"|"gd-GB"|"he-IL"|"hi-IN"|"id-ID"|"it-IT"|"ja-JP"|"ko-KR"|"ms-MY"|"nl-NL"|"pt-BR"|"pt-PT"|"ru-RU"|"ta-IN"|"te-IN"|"tr-TR"|"zh-CN",
  Words = list(
    "string"
  ),
  VocabularyFilterFileUri = "string"
)
}
}

\keyword{internal}
