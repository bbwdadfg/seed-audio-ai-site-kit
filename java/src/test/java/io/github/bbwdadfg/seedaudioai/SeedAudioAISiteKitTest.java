package io.github.bbwdadfg.seedaudioai;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;

class SeedAudioAISiteKitTest {
    @Test
    void exposesMetadata() {
        assertEquals("Seed Audio AI", SeedAudioAISiteKit.site().get("name"));
        assertEquals("https://seedaud.io/", SeedAudioAISiteKit.site().get("homepage"));
    }

    @Test
    void buildsUrls() {
        assertEquals("https://seedaud.io/", SeedAudioAISiteKit.seedAudioUrl(""));
        assertEquals("https://seedaud.io/pricing/", SeedAudioAISiteKit.seedAudioUrl("/pricing/"));
    }
}
