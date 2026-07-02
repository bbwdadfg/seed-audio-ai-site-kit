const site = Object.freeze({
  name: "Seed Audio AI",
  homepage: "https://seedaud.io/",
  description: "Browser-based text-to-speech and AI voice generation workflow.",
  canonicalPages: Object.freeze({
    home: "https://seedaud.io/",
    textToSpeech: "https://seedaud.io/text-to-speech/",
    pricing: "https://seedaud.io/pricing/",
    safety: "https://seedaud.io/safety/",
    terms: "https://seedaud.io/terms/"
  }),
  tags: Object.freeze(["text-to-speech", "ai-voice", "voice-generator", "site-kit"])
});

function seedAudioUrl(path = "") {
  const clean = String(path).replace(/^\/+|\/+$/g, "");
  return clean ? `${site.homepage}${clean}/` : site.homepage;
}

module.exports = { site, seedAudioUrl };
