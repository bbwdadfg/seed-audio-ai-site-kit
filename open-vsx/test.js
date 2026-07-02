const assert = require("node:assert/strict");

const source = require("node:fs").readFileSync(require("node:path").join(__dirname, "extension.js"), "utf8");
assert.match(source, /https:\/\/seedaud\.io\//);
assert.match(source, /https:\/\/seedaud\.io\/text-to-speech\//);

const pkg = require("./package.json");
assert.equal(pkg.publisher, "bbwdadfg");
assert.equal(pkg.homepage, "https://seedaud.io/");
assert.equal(pkg.repository.url, "https://github.com/bbwdadfg/seed-audio-ai-site-kit");
