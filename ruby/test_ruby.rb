require "minitest/autorun"
require_relative "lib/seed_audio_ai_site_kit"

class SeedAudioAISiteKitTest < Minitest::Test
  def test_metadata
    assert_equal "Seed Audio AI", SeedAudioAISiteKit::SITE[:name]
    assert_equal "https://seedaud.io/", SeedAudioAISiteKit::SITE[:homepage]
  end

  def test_url_builder
    assert_equal "https://seedaud.io/", SeedAudioAISiteKit.seed_audio_url
    assert_equal "https://seedaud.io/pricing/", SeedAudioAISiteKit.seed_audio_url("/pricing/")
  end
end
