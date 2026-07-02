defmodule SeedAudioAISiteKitTest do
  use ExUnit.Case

  test "metadata is available" do
    assert SeedAudioAISiteKit.site().name == "Seed Audio AI"
    assert SeedAudioAISiteKit.site().homepage == "https://seedaud.io/"
  end

  test "URLs are normalized" do
    assert SeedAudioAISiteKit.seed_audio_url() == "https://seedaud.io/"
    assert SeedAudioAISiteKit.seed_audio_url("/pricing/") == "https://seedaud.io/pricing/"
  end
end
