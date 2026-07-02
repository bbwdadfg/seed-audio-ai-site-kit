SITE = {
    "name": "Seed Audio AI",
    "homepage": "https://seedaud.io/",
    "description": "Browser-based text-to-speech and AI voice generation workflow.",
    "canonicalPages": {
        "home": "https://seedaud.io/",
        "textToSpeech": "https://seedaud.io/text-to-speech/",
        "pricing": "https://seedaud.io/pricing/",
        "safety": "https://seedaud.io/safety/",
        "terms": "https://seedaud.io/terms/",
    },
    "tags": ["text-to-speech", "ai-voice", "voice-generator", "site-kit"],
}


def seed_audio_url(path: str = "") -> str:
    clean = str(path or "").strip("/")
    return SITE["homepage"] if not clean else f'{SITE["homepage"]}{clean}/'


__all__ = ["SITE", "seed_audio_url"]
