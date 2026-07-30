# Changelog

All notable changes to palmshed/ui will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.2.0] - 2026-07-30

### Added
- Governance documentation (scope, release policy, component acceptance rule, definition of done)
- `TOKENS.md` - public design token reference with policy and guidelines
- Living documentation site (`docs/`) with 11 pages built using palmshed/ui
- CI workflow (`validate.yml`) - HTML validation, asset checks, link checking, template consistency
- GitHub Pages deployment workflow (`deploy.yml`)
- Issue templates (bug, component request, documentation)
- Pull request template
- `scripts/validate.sh` - local validation script

### Changed
- All templates, docs, and examples now use relative CSS paths - no symlinks needed
- `README.md` updated with deployment scenarios for consumers
- `CONTRIBUTING.md` updated with validation instructions and PR guidelines
- `AGENTS.md` updated with governance, paths, and docs reference
- `package.json` includes `TOKENS.md` in published files

### Removed
- Symlinked `ui/` directory - paths are now self-contained

## [0.1.0] - Initial release

### Added
- Dark theme design tokens (`--bg`, `--surface`, `--text`, `--muted`, `--accent`, `--border`, `--code-bg`)
- Base styles (reset, typography, links, focus states)
- Layout primitives (nav, hero, page container, footer)
- Typography styles (headings, code blocks, tables)
- Components (cards, buttons, badges, alerts, tags, inputs)
- HTML templates (home, docs, project, error, about, projects)
- `mark.svg` shared logo asset
