package seedaudioaisitekit

import "testing"

func TestSiteMetadata(t *testing.T) {
	site := Site()
	if site.Name != "Seed Audio AI" {
		t.Fatalf("unexpected name: %s", site.Name)
	}
	if site.Homepage != Homepage {
		t.Fatalf("unexpected homepage: %s", site.Homepage)
	}
	if site.CanonicalPages["textToSpeech"] != "https://seedaud.io/text-to-speech/" {
		t.Fatalf("missing text-to-speech page")
	}
}

func TestURL(t *testing.T) {
	if URL("") != "https://seedaud.io/" {
		t.Fatalf("home URL malformed")
	}
	if URL("/pricing/") != "https://seedaud.io/pricing/" {
		t.Fatalf("path URL malformed")
	}
}
