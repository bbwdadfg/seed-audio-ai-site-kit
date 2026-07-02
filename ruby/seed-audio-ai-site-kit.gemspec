Gem::Specification.new do |spec|
  spec.name = "seed-audio-ai-site-kit"
  spec.version = "0.1.0"
  spec.summary = "Small unofficial metadata and URL helpers for Seed Audio AI at seedaud.io."
  spec.description = "Small unofficial metadata and URL helpers for Seed Audio AI, the browser-based text-to-speech and AI voice generation site."
  spec.authors = ["Seed Audio AI Site Kit contributors"]
  spec.email = ["support@seedaud.io"]
  spec.homepage = "https://seedaud.io/"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0"
  spec.metadata = {
    "homepage_uri" => "https://seedaud.io/",
    "source_code_uri" => "https://github.com/bbwdadfg/seed-audio-ai-site-kit",
    "changelog_uri" => "https://github.com/bbwdadfg/seed-audio-ai-site-kit/releases"
  }
  spec.files = Dir["lib/**/*.rb", "README.md", "../LICENSE"].select { |path| File.file?(path) }
  spec.require_paths = ["lib"]
end
