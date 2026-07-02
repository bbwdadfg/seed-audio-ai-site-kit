local M = {}

M.site = {
  name = "Seed Audio AI",
  homepage = "https://seedaud.io/",
  description = "Browser-based text-to-speech and AI voice generation workflow.",
  canonicalPages = {
    home = "https://seedaud.io/",
    textToSpeech = "https://seedaud.io/text-to-speech/",
    pricing = "https://seedaud.io/pricing/",
    safety = "https://seedaud.io/safety/",
    terms = "https://seedaud.io/terms/"
  },
  tags = { "text-to-speech", "ai-voice", "voice-generator", "site-kit" }
}

function M.seed_audio_url(path)
  local clean = tostring(path or ""):gsub("^/+", ""):gsub("/+$", "")
  if clean == "" then
    return M.site.homepage
  end
  return M.site.homepage .. clean .. "/"
end

return M
