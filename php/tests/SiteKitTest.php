<?php

require_once __DIR__ . '/../src/SiteKit.php';

use SeedAudioAI\SiteKit\SiteKit;

assert(SiteKit::site()['name'] === 'Seed Audio AI');
assert(SiteKit::site()['homepage'] === 'https://seedaud.io/');
assert(SiteKit::url() === 'https://seedaud.io/');
assert(SiteKit::url('/pricing/') === 'https://seedaud.io/pricing/');
