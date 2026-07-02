seed_audio_ai_pages <- function() {
  list(
    home = "https://seedaud.io/",
    text_to_speech = "https://seedaud.io/text-to-speech/",
    pricing = "https://seedaud.io/pricing/",
    safety = "https://seedaud.io/safety/",
    terms = "https://seedaud.io/terms/"
  )
}

#' Seed Audio AI metadata
#'
#' Returns canonical Seed Audio AI links and PWA toolkit paths.
#'
#' @return A list with site metadata, canonical pages, and PWA toolkit paths.
#' @examples
#' seed_audio_ai_metadata()$homepage
#' @export
seed_audio_ai_metadata <- function() {
  list(
    name = "Seed Audio AI",
    homepage = "https://seedaud.io/",
    description = "Browser-based AI text-to-speech and voice audio generation.",
    canonical_pages = seed_audio_ai_pages(),
    pwa = list(
      manifest = "pwa/manifest.webmanifest",
      service_worker = "pwa/sw.js",
      offline_page = "pwa/offline.html"
    )
  )
}

#' Build a Seed Audio AI URL
#'
#' @param path Optional path under the Seed Audio AI homepage.
#' @return A canonical Seed Audio AI URL.
#' @examples
#' seed_audio_ai_url()
#' seed_audio_ai_url("text-to-speech")
#' @export
seed_audio_ai_url <- function(path = "") {
  clean <- gsub("^/+|/+$", "", path)
  if (!nzchar(clean)) {
    return("https://seedaud.io/")
  }
  paste0("https://seedaud.io/", clean, "/")
}
