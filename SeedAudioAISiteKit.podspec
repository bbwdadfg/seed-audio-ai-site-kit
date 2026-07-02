Pod::Spec.new do |spec|
  spec.name = 'SeedAudioAISiteKit'
  spec.version = '0.1.0'
  spec.summary = 'Small unofficial metadata and URL helpers for Seed Audio AI.'
  spec.description = 'Small unofficial metadata and URL helpers for Seed Audio AI, the browser-based text-to-speech and AI voice generation site at seedaud.io.'
  spec.homepage = 'https://seedaud.io/'
  spec.license = { type: 'MIT', file: 'LICENSE' }
  spec.author = { 'Seed Audio AI Site Kit contributors' => 'support@seedaud.io' }
  spec.source = { git: 'https://github.com/bbwdadfg/seed-audio-ai-site-kit.git', tag: "v#{spec.version}" }
  spec.swift_version = '5.9'
  spec.ios.deployment_target = '15.0'
  spec.osx.deployment_target = '12.0'
  spec.source_files = 'swift/Sources/SeedAudioAISiteKit/**/*.swift'
end
