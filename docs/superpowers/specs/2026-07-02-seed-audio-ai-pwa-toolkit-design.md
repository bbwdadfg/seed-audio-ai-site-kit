# Seed Audio AI PWA Toolkit Conditional Publishing Design

## Goal

Publish additional legitimate package-ecosystem backlinks for `https://seedaud.io` by creating a small real PWA/toolkit surface, then releasing or submitting it to conditional developer platforms where the artifact has a defensible fit.

## Scope

The toolkit will provide:

- A static PWA helper with manifest, service worker, offline page, and Seed Audio AI canonical URL metadata.
- A small CLI/metadata helper for package managers that expect an installable command or module.
- Platform-specific wrappers only where they add a real install/deploy workflow.

The work will not create empty packages, misleading official SDK claims, or review-bypassing submissions. Review or OAuth platforms will be recorded as `submitted`, `blocked_oauth`, `blocked_namespace`, or `blocked_review` until public verification is possible.

## Platform Plan

- Homebrew: publish a public tap formula for a small CLI helper and verify install/test where possible.
- Open VSX: publish a VS Code-compatible extension with commands for opening Seed Audio AI and viewing canonical URL metadata.
- Helm / Artifact Hub: publish an installable Helm chart repository for the static PWA helper; record Artifact Hub indexing separately.
- Terraform Registry: prepare a valid public Terraform module repo with examples and semver tag; Registry UI import may remain `blocked_oauth`.
- Ansible Galaxy: prepare and publish a collection if the available namespace works; otherwise record `blocked_namespace`.
- Conda-forge: prepare a staged-recipes PR for the existing Python helper/CLI if checks are acceptable; otherwise record review constraints.
- CRAN: prepare a real R metadata helper package and run checks; submit only if CRAN-ready.
- Flathub: prepare a desktop PWA wrapper only if it can meet minimum Flatpak/AppStream expectations; otherwise record `blocked_review`.

## Verification

Each platform must have at least one of:

- Public package/module/page URL with `seedaud.io` link or metadata.
- Public source repo with installable/deployable artifact and passing local checks.
- Submitted PR/review URL for review-based ecosystems.

Records remain in `publish-record.json`, with CSV and Markdown regenerated from JSON.
