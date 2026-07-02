package io.github.bbwdadfg.seedaudioai;

import java.util.List;
import java.util.Map;

/** Unofficial metadata and URL helpers for Seed Audio AI at https://seedaud.io/. */
public final class SeedAudioAISiteKit {
    public static final String HOMEPAGE = "https://seedaud.io/";

    private SeedAudioAISiteKit() {}

    /**
     * Returns stable public metadata for Seed Audio AI.
     *
     * @return metadata map with name, homepage, description, canonical pages, and tags
     */
    public static Map<String, Object> site() {
        return Map.of(
            "name", "Seed Audio AI",
            "homepage", HOMEPAGE,
            "description", "Browser-based text-to-speech and AI voice generation workflow.",
            "canonicalPages", Map.of(
                "home", HOMEPAGE,
                "textToSpeech", "https://seedaud.io/text-to-speech/",
                "pricing", "https://seedaud.io/pricing/",
                "safety", "https://seedaud.io/safety/",
                "terms", "https://seedaud.io/terms/"
            ),
            "tags", List.of("text-to-speech", "ai-voice", "voice-generator", "site-kit")
        );
    }

    /**
     * Builds a canonical Seed Audio AI URL.
     *
     * @param path optional path such as pricing or /text-to-speech/
     * @return normalized https://seedaud.io/ URL
     */
    public static String seedAudioUrl(String path) {
        String clean = path == null ? "" : path.replaceAll("^/+|/+$", "");
        return clean.isEmpty() ? HOMEPAGE : HOMEPAGE + clean + "/";
    }
}
