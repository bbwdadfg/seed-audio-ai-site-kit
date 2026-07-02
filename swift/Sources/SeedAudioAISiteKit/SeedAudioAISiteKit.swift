import Foundation

public struct SeedAudioAISite {
    public let name: String
    public let homepage: String
    public let description: String
    public let canonicalPages: [String: String]
    public let tags: [String]
}

public enum SeedAudioAISiteKit {
    public static let homepage = "https://seedaud.io/"

    public static let site = SeedAudioAISite(
        name: "Seed Audio AI",
        homepage: homepage,
        description: "Browser-based text-to-speech and AI voice generation workflow.",
        canonicalPages: [
            "home": homepage,
            "textToSpeech": "https://seedaud.io/text-to-speech/",
            "pricing": "https://seedaud.io/pricing/",
            "safety": "https://seedaud.io/safety/",
            "terms": "https://seedaud.io/terms/"
        ],
        tags: ["text-to-speech", "ai-voice", "voice-generator", "site-kit"]
    )

    public static func url(_ path: String = "") -> String {
        let clean = path.trimmingCharacters(in: CharacterSet(charactersIn: "/"))
        return clean.isEmpty ? homepage : "\(homepage)\(clean)/"
    }
}
