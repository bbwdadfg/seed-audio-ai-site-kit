const seedAudioAiSite = {
  'name': 'Seed Audio AI',
  'homepage': 'https://seedaud.io/',
  'description': 'Browser-based text-to-speech and AI voice generation workflow.',
  'canonicalPages': {
    'home': 'https://seedaud.io/',
    'textToSpeech': 'https://seedaud.io/text-to-speech/',
    'pricing': 'https://seedaud.io/pricing/',
    'safety': 'https://seedaud.io/safety/',
    'terms': 'https://seedaud.io/terms/',
  },
  'tags': ['text-to-speech', 'ai-voice', 'voice-generator', 'site-kit'],
};

String seedAudioUrl([String path = '']) {
  final clean = path.replaceAll(RegExp(r'^/+|/+$'), '');
  return clean.isEmpty ? 'https://seedaud.io/' : 'https://seedaud.io/$clean/';
}
