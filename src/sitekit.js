const SITE = Object.freeze({
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

function normalizePath(path) {
  if (!path || path === "/") return "";
  return String(path).replace(/^\/+/, "").replace(/\/+$/, "");
}

function seedAudioUrl(path = "") {
  const clean = normalizePath(path);
  return clean ? `${SITE.homepage}${clean}/` : SITE.homepage;
}

module.exports = { SITE, seedAudioUrl };
