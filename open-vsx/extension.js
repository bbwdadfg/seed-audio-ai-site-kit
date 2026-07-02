const vscode = require("vscode");

const links = {
  homepage: "https://seedaud.io/",
  textToSpeech: "https://seedaud.io/text-to-speech/"
};

function open(url) {
  return vscode.env.openExternal(vscode.Uri.parse(url));
}

function activate(context) {
  context.subscriptions.push(
    vscode.commands.registerCommand("seedAudioAi.openHomepage", () => open(links.homepage)),
    vscode.commands.registerCommand("seedAudioAi.openTextToSpeech", () => open(links.textToSpeech))
  );
}

module.exports = { activate, links };
