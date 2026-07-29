# Design Principles

palmshed/ui is a framework-agnostic design system. Every decision reflects the same principles used throughout the Palmshed ecosystem.

## Core Principles

1. **Static by default.** CSS and HTML only. No JavaScript runtime, no build step, no framework dependency. The design system works by pasting in `<link>` tags.

2. **Design tokens are the public API.** Changing a token name is a breaking change. Tokens are versioned alongside the design system.

3. **Dark-first, not dark-only.** The default theme is dark. Light theme support is intentional and explicit, never assumed.

4. **Fewer concepts are better.** The design system has one job: provide consistent visual language. It does not solve layout problems beyond the basics (container, spacing, nav).

5. **Patterns are earned.** Reusable components are added only after they appear in multiple templates. Until then, duplication is simpler.

6. **Repositories should reflect the page.** Keep the design system as quiet as the sites it supports. Documentation, structure, and tooling should be understandable without reading implementation details.

## Token Policy

Tokens are stable after `v1.0.0`. They must not be renamed or removed before a major version bump.

| Token | Purpose |
|-------|---------|
| `--bg` | Page background |
| `--surface` | Card, nav, and elevated surface backgrounds |
| `--text` | Primary text color |
| `--muted` | Secondary text, captions, metadata |
| `--accent` | Links, active states, interactive elements |
| `--border` | Subtle border color |
| `--code-bg` | Background for inline code and code blocks |

## Scope

palmshed/ui provides:

- Design tokens (CSS custom properties)
- Base styles (reset, typography, links)
- Layout primitives (nav, hero, page container, footer)
- Reusable components (cards, buttons, badges, alerts, tables)
- HTML templates for common page types

palmshed/ui does not provide:

- JavaScript frameworks
- Component rendering logic
- Build tools or bundlers
- Animation libraries
- Icon libraries (uses `mark.svg` as the shared logo asset)

## Naming Convention

All CSS class names use lowercase hyphenated names. Tokens use lowercase hyphenated names. No camelCase in CSS.