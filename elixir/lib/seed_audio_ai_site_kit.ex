defmodule SeedAudioAISiteKit do
  @moduledoc """
  Unofficial metadata and URL helpers for Seed Audio AI at https://seedaud.io/.
  """

  @homepage "https://seedaud.io/"

  def site do
    %{
      name: "Seed Audio AI",
      homepage: @homepage,
      description: "Browser-based text-to-speech and AI voice generation workflow.",
      canonical_pages: %{
        home: @homepage,
        text_to_speech: "https://seedaud.io/text-to-speech/",
        pricing: "https://seedaud.io/pricing/",
        safety: "https://seedaud.io/safety/",
        terms: "https://seedaud.io/terms/"
      },
      tags: ["text-to-speech", "ai-voice", "voice-generator", "site-kit"]
    }
  end

  def seed_audio_url(path \\ "") do
    clean = path |> to_string() |> String.trim("/")
    if clean == "", do: @homepage, else: @homepage <> clean <> "/"
  end
end
