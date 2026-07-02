defmodule SeedAudioAISiteKit.MixProject do
  use Mix.Project

  def project do
    [
      app: :seed_audio_ai_site_kit,
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: "Small unofficial metadata and URL helpers for Seed Audio AI at seedaud.io.",
      package: package(),
      docs: [main: "SeedAudioAISiteKit", extras: ["README.md"]]
    ]
  end

  def application, do: [extra_applications: [:logger]]

  defp deps do
    [
      {:ex_doc, "~> 0.34", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      licenses: ["MIT"],
      links: %{
        "Homepage" => "https://seedaud.io/",
        "Repository" => "https://github.com/bbwdadfg/seed-audio-ai-site-kit"
      },
      files: ["lib", "mix.exs", "README.md", "LICENSE"]
    ]
  end
end
