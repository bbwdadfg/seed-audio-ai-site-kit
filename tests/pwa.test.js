const assert = require("node:assert/strict");
const { execFileSync } = require("node:child_process");
const { readFileSync } = require("node:fs");
const path = require("node:path");

const root = path.join(__dirname, "..");
const cli = path.join(root, "bin", "seed-audio-ai-pwa-toolkit.js");

const metadata = JSON.parse(execFileSync(process.execPath, [cli, "metadata"], { encoding: "utf8" }));
assert.equal(metadata.name, "Seed Audio AI");
assert.equal(metadata.homepage, "https://seedaud.io/");
assert.equal(metadata.canonicalPages.textToSpeech, "https://seedaud.io/text-to-speech/");
assert.equal(metadata.pwa.manifest, "pwa/manifest.webmanifest");

assert.equal(execFileSync(process.execPath, [cli, "url"], { encoding: "utf8" }).trim(), "https://seedaud.io/");
assert.equal(
  execFileSync(process.execPath, [cli, "manifest"], { encoding: "utf8" }).trim(),
  "pwa/manifest.webmanifest"
);

const manifest = JSON.parse(readFileSync(path.join(root, "pwa", "manifest.webmanifest"), "utf8"));
assert.equal(manifest.name, "Seed Audio AI PWA Toolkit");
assert.equal(manifest.start_url, "./index.html");
assert.ok(manifest.icons.some((icon) => icon.src === "./icons/icon.svg"));

const sw = readFileSync(path.join(root, "pwa", "sw.js"), "utf8");
assert.match(sw, /seed-audio-ai-pwa-toolkit-v0\.1\.0/);
assert.match(sw, /offline\.html/);
