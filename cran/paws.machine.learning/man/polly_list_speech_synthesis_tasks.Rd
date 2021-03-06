% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/polly_operations.R
\name{polly_list_speech_synthesis_tasks}
\alias{polly_list_speech_synthesis_tasks}
\title{Returns a list of SpeechSynthesisTask objects ordered by their creation
date}
\usage{
polly_list_speech_synthesis_tasks(MaxResults, NextToken, Status)
}
\arguments{
\item{MaxResults}{Maximum number of speech synthesis tasks returned in a List operation.}

\item{NextToken}{The pagination token to use in the next request to continue the listing
of speech synthesis tasks.}

\item{Status}{Status of the speech synthesis tasks returned in a List operation}
}
\value{
A list with the following syntax:\preformatted{list(
  NextToken = "string",
  SynthesisTasks = list(
    list(
      Engine = "standard"|"neural",
      TaskId = "string",
      TaskStatus = "scheduled"|"inProgress"|"completed"|"failed",
      TaskStatusReason = "string",
      OutputUri = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      RequestCharacters = 123,
      SnsTopicArn = "string",
      LexiconNames = list(
        "string"
      ),
      OutputFormat = "json"|"mp3"|"ogg_vorbis"|"pcm",
      SampleRate = "string",
      SpeechMarkTypes = list(
        "sentence"|"ssml"|"viseme"|"word"
      ),
      TextType = "ssml"|"text",
      VoiceId = "Aditi"|"Amy"|"Astrid"|"Bianca"|"Brian"|"Camila"|"Carla"|"Carmen"|"Celine"|"Chantal"|"Conchita"|"Cristiano"|"Dora"|"Emma"|"Enrique"|"Ewa"|"Filiz"|"Geraint"|"Giorgio"|"Gwyneth"|"Hans"|"Ines"|"Ivy"|"Jacek"|"Jan"|"Joanna"|"Joey"|"Justin"|"Karl"|"Kendra"|"Kevin"|"Kimberly"|"Lea"|"Liv"|"Lotte"|"Lucia"|"Lupe"|"Mads"|"Maja"|"Marlene"|"Mathieu"|"Matthew"|"Maxim"|"Mia"|"Miguel"|"Mizuki"|"Naja"|"Nicole"|"Olivia"|"Penelope"|"Raveena"|"Ricardo"|"Ruben"|"Russell"|"Salli"|"Seoyeon"|"Takumi"|"Tatyana"|"Vicki"|"Vitoria"|"Zeina"|"Zhiyu",
      LanguageCode = "arb"|"cmn-CN"|"cy-GB"|"da-DK"|"de-DE"|"en-AU"|"en-GB"|"en-GB-WLS"|"en-IN"|"en-US"|"es-ES"|"es-MX"|"es-US"|"fr-CA"|"fr-FR"|"is-IS"|"it-IT"|"ja-JP"|"hi-IN"|"ko-KR"|"nb-NO"|"nl-NL"|"pl-PL"|"pt-BR"|"pt-PT"|"ro-RO"|"ru-RU"|"sv-SE"|"tr-TR"
    )
  )
)
}
}
\description{
Returns a list of SpeechSynthesisTask objects ordered by their creation
date. This operation can filter the tasks by their status, for example,
allowing users to list only tasks that are completed.
}
\section{Request syntax}{
\preformatted{svc$list_speech_synthesis_tasks(
  MaxResults = 123,
  NextToken = "string",
  Status = "scheduled"|"inProgress"|"completed"|"failed"
)
}
}

\keyword{internal}
