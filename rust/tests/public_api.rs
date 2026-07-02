use seed_audio_ai_site_kit::{seed_audio_url, site};

#[test]
fn public_api_is_usable() {
    assert_eq!(site().name, "Seed Audio AI");
    assert_eq!(seed_audio_url("text-to-speech"), "https://seedaud.io/text-to-speech/");
}
