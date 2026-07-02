<?php

namespace SeedAudioAI\SiteKit;

final class SiteKit
{
    public const HOMEPAGE = 'https://seedaud.io/';

    public static function site(): array
    {
        return [
            'name' => 'Seed Audio AI',
            'homepage' => self::HOMEPAGE,
            'description' => 'Browser-based text-to-speech and AI voice generation workflow.',
            'canonicalPages' => [
                'home' => self::HOMEPAGE,
                'textToSpeech' => 'https://seedaud.io/text-to-speech/',
                'pricing' => 'https://seedaud.io/pricing/',
                'safety' => 'https://seedaud.io/safety/',
                'terms' => 'https://seedaud.io/terms/',
            ],
            'tags' => ['text-to-speech', 'ai-voice', 'voice-generator', 'site-kit'],
        ];
    }

    public static function url(string $path = ''): string
    {
        $clean = trim($path, '/');
        return $clean === '' ? self::HOMEPAGE : self::HOMEPAGE . $clean . '/';
    }
}
