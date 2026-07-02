import unittest

from seed_audio_ai_site_kit import SITE, seed_audio_url


class SiteKitTest(unittest.TestCase):
    def test_metadata(self):
        self.assertEqual(SITE["name"], "Seed Audio AI")
        self.assertEqual(SITE["homepage"], "https://seedaud.io/")
        self.assertEqual(SITE["canonicalPages"]["pricing"], "https://seedaud.io/pricing/")

    def test_url_builder(self):
        self.assertEqual(seed_audio_url(), "https://seedaud.io/")
        self.assertEqual(seed_audio_url("/safety/"), "https://seedaud.io/safety/")


if __name__ == "__main__":
    unittest.main()
