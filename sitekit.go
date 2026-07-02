package seedaudioaisitekit

import "strings"

type Metadata struct {
	Name           string            `json:"name"`
	Homepage       string            `json:"homepage"`
	Description    string            `json:"description"`
	CanonicalPages map[string]string `json:"canonicalPages"`
	Tags           []string          `json:"tags"`
}

const Homepage = "https://seedaud.io/"

func Site() Metadata {
	return Metadata{
		Name:        "Seed Audio AI",
		Homepage:    Homepage,
		Description: "Browser-based text-to-speech and AI voice generation workflow.",
		CanonicalPages: map[string]string{
			"home":         Homepage,
			"textToSpeech": "https://seedaud.io/text-to-speech/",
			"pricing":      "https://seedaud.io/pricing/",
			"safety":       "https://seedaud.io/safety/",
			"terms":        "https://seedaud.io/terms/",
		},
		Tags: []string{"text-to-speech", "ai-voice", "voice-generator", "site-kit"},
	}
}

func URL(path string) string {
	clean := strings.Trim(path, "/")
	if clean == "" {
		return Homepage
	}
	return Homepage + clean + "/"
}
