module SeedAudioAISiteKit
  SITE = {
    name: "Seed Audio AI",
    homepage: "https://seedaud.io/",
    description: "Browser-based text-to-speech and AI voice generation workflow.",
    canonical_pages: {
      home: "https://seedaud.io/",
      text_to_speech: "https://seedaud.io/text-to-speech/",
      pricing: "https://seedaud.io/pricing/",
      safety: "https://seedaud.io/safety/",
      terms: "https://seedaud.io/terms/"
    },
    tags: ["text-to-speech", "ai-voice", "voice-generator", "site-kit"]
  }.freeze

  def self.seed_audio_url(path = "")
    clean = path.to_s.gsub(%r{\A/+|/+\z}, "")
    clean.empty? ? SITE[:homepage] : "#{SITE[:homepage]}#{clean}/"
  end
end
