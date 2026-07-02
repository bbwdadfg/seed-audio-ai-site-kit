library(seedAudioAiPwaToolkit)

stopifnot(seed_audio_ai_metadata()$homepage == "https://seedaud.io/")
stopifnot(seed_audio_ai_url("text-to-speech") == "https://seedaud.io/text-to-speech/")
