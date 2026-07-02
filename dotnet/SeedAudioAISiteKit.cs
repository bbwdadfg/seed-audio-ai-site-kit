namespace SeedAudioAISiteKit;

public sealed record SiteMetadata(
    string Name,
    string Homepage,
    string Description,
    IReadOnlyDictionary<string, string> CanonicalPages,
    IReadOnlyList<string> Tags
);

public static class SeedAudioAI
{
    public const string Homepage = "https://seedaud.io/";

    public static SiteMetadata Site() => new(
        "Seed Audio AI",
        Homepage,
        "Browser-based text-to-speech and AI voice generation workflow.",
        new Dictionary<string, string>
        {
            ["home"] = Homepage,
            ["textToSpeech"] = "https://seedaud.io/text-to-speech/",
            ["pricing"] = "https://seedaud.io/pricing/",
            ["safety"] = "https://seedaud.io/safety/",
            ["terms"] = "https://seedaud.io/terms/"
        },
        new[] { "text-to-speech", "ai-voice", "voice-generator", "site-kit" }
    );

    public static string Url(string? path = null)
    {
        var clean = (path ?? string.Empty).Trim('/');
        return clean.Length == 0 ? Homepage : $"{Homepage}{clean}/";
    }
}
