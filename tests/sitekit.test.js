const assert = require("node:assert/strict");
const { SITE, seedAudioUrl } = require("../src/sitekit");

assert.equal(SITE.name, "Seed Audio AI");
assert.equal(SITE.homepage, "https://seedaud.io/");
assert.equal(SITE.canonicalPages.textToSpeech, "https://seedaud.io/text-to-speech/");
assert.deepEqual(seedAudioUrl(), "https://seedaud.io/");
assert.deepEqual(seedAudioUrl("/pricing/"), "https://seedaud.io/pricing/");
assert.ok(SITE.tags.includes("text-to-speech"));
