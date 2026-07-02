#!/usr/bin/env node

const metadata = {
  name: "Seed Audio AI",
  homepage: "https://seedaud.io/",
  description: "Browser-based AI text-to-speech and voice audio generation.",
  canonicalPages: {
    home: "https://seedaud.io/",
    textToSpeech: "https://seedaud.io/text-to-speech/",
    pricing: "https://seedaud.io/pricing/",
    safety: "https://seedaud.io/safety/",
    terms: "https://seedaud.io/terms/"
  },
  pwa: {
    manifest: "pwa/manifest.webmanifest",
    serviceWorker: "pwa/sw.js",
    offlinePage: "pwa/offline.html"
  }
};

function printUsage() {
  console.log("Usage: seed-audio-ai-pwa-toolkit <metadata|url|manifest>");
}

function main(argv) {
  const command = argv[2] || "metadata";
  if (command === "metadata") {
    console.log(JSON.stringify(metadata, null, 2));
    return;
  }
  if (command === "url") {
    console.log(metadata.homepage);
    return;
  }
  if (command === "manifest") {
    console.log(metadata.pwa.manifest);
    return;
  }
  printUsage();
  process.exitCode = 2;
}

main(process.argv);
