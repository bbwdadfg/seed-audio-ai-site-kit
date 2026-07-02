pub const HOMEPAGE: &str = "https://seedaud.io/";

#[derive(Debug, Clone, PartialEq, Eq)]
pub struct SiteMetadata {
    pub name: &'static str,
    pub homepage: &'static str,
    pub description: &'static str,
    pub canonical_pages: &'static [(&'static str, &'static str)],
    pub tags: &'static [&'static str],
}

pub fn site() -> SiteMetadata {
    SiteMetadata {
        name: "Seed Audio AI",
        homepage: HOMEPAGE,
        description: "Browser-based text-to-speech and AI voice generation workflow.",
        canonical_pages: &[
            ("home", HOMEPAGE),
            ("textToSpeech", "https://seedaud.io/text-to-speech/"),
            ("pricing", "https://seedaud.io/pricing/"),
            ("safety", "https://seedaud.io/safety/"),
            ("terms", "https://seedaud.io/terms/"),
        ],
        tags: &["text-to-speech", "ai-voice", "voice-generator", "site-kit"],
    }
}

pub fn seed_audio_url(path: &str) -> String {
    let clean = path.trim_matches('/');
    if clean.is_empty() {
        HOMEPAGE.to_string()
    } else {
        format!("{HOMEPAGE}{clean}/")
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn exposes_metadata() {
        let metadata = site();
        assert_eq!(metadata.name, "Seed Audio AI");
        assert_eq!(metadata.homepage, HOMEPAGE);
        assert!(metadata.tags.contains(&"text-to-speech"));
    }

    #[test]
    fn builds_urls() {
        assert_eq!(seed_audio_url(""), "https://seedaud.io/");
        assert_eq!(seed_audio_url("/pricing/"), "https://seedaud.io/pricing/");
    }
}
