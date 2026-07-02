function Get-SeedAudioAISiteKitMetadata {
    [CmdletBinding()]
    param()

    [PSCustomObject]@{
        Name        = 'Seed Audio AI'
        Homepage    = 'https://seedaud.io/'
        Description = 'Browser-based AI text-to-speech and voice audio generation.'
        Repository  = 'https://github.com/bbwdadfg/seed-audio-ai-site-kit'
        Package     = 'seed-audio-ai-site-kit'
        Version     = '0.1.0'
    }
}

function Get-SeedAudioAISiteKitUrl {
    [CmdletBinding()]
    param(
        [ValidateSet('Home', 'TextToSpeech', 'Pricing', 'Safety', 'Terms')]
        [string] $Page = 'Home'
    )

    $urls = @{
        Home         = 'https://seedaud.io/'
        TextToSpeech = 'https://seedaud.io/text-to-speech/'
        Pricing      = 'https://seedaud.io/pricing/'
        Safety       = 'https://seedaud.io/safety/'
        Terms        = 'https://seedaud.io/terms/'
    }

    $urls[$Page]
}

Export-ModuleMember -Function Get-SeedAudioAISiteKitMetadata, Get-SeedAudioAISiteKitUrl
