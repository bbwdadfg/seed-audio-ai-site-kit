#!/usr/bin/python

from ansible.module_utils.basic import AnsibleModule

DOCUMENTATION = r'''
---
module: links
short_description: Return Seed Audio AI metadata and PWA toolkit links
version_added: "0.1.0"
description:
  - Returns stable metadata links for Seed Audio AI text-to-speech pages and PWA toolkit files.
options: {}
author:
  - Seed Audio AI
'''

EXAMPLES = r'''
- name: Get Seed Audio AI links
  bbwdadfg.seed_audio_ai_pwa_toolkit.links:
  register: seed_audio_ai
'''

RETURN = r'''
homepage:
  description: Seed Audio AI homepage.
  returned: always
  type: str
links:
  description: Canonical Seed Audio AI public links.
  returned: always
  type: dict
pwa:
  description: PWA toolkit file paths in the source repository.
  returned: always
  type: dict
'''


def main():
    module = AnsibleModule(argument_spec={}, supports_check_mode=True)
    homepage = "https://seedaud.io/"
    module.exit_json(
        changed=False,
        name="Seed Audio AI",
        homepage=homepage,
        links={
            "home": homepage,
            "text_to_speech": "https://seedaud.io/text-to-speech/",
            "pricing": "https://seedaud.io/pricing/",
            "safety": "https://seedaud.io/safety/",
            "terms": "https://seedaud.io/terms/",
        },
        pwa={
            "manifest": "pwa/manifest.webmanifest",
            "service_worker": "pwa/sw.js",
            "offline_page": "pwa/offline.html",
        },
    )


if __name__ == "__main__":
    main()
