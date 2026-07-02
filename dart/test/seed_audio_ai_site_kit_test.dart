import 'package:test/test.dart';
import 'package:seed_audio_ai_site_kit/seed_audio_ai_site_kit.dart';

void main() {
  test('metadata is available', () {
    expect(seedAudioAiSite['name'], equals('Seed Audio AI'));
    expect(seedAudioAiSite['homepage'], equals('https://seedaud.io/'));
  });

  test('URLs are normalized', () {
    expect(seedAudioUrl(), equals('https://seedaud.io/'));
    expect(seedAudioUrl('/pricing/'), equals('https://seedaud.io/pricing/'));
  });
}
