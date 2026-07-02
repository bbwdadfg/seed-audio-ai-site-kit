local kit = require("seed_audio_ai_site_kit")

assert(kit.site.name == "Seed Audio AI")
assert(kit.site.homepage == "https://seedaud.io/")
assert(kit.seed_audio_url() == "https://seedaud.io/")
assert(kit.seed_audio_url("/pricing/") == "https://seedaud.io/pricing/")

print("lua tests passed")
