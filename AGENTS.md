# palmshed/ui

Shared design system for Palmshed projects. Framework-agnostic CSS and HTML templates.

## Structure

- `css/` — Design tokens and CSS modules
- `assets/` — Shared SVG assets (mark.svg)
- `templates/` — HTML starting points for new project sites
- `examples/` — Usage examples for different frameworks
- `docs/` — Documentation

## Usage

Link CSS files in any HTML page:

```html
<link rel="stylesheet" href="/ui/tokens.css">
<link rel="stylesheet" href="/ui/base.css">
<link rel="stylesheet" href="/ui/layout.css">
<link rel="stylesheet" href="/ui/typography.css">
<link rel="stylesheet" href="/ui/components.css">
```

## Design tokens

| Token | Value |
|-------|-------|
| `--bg` | `#080909` |
| `--surface` | `#0e1010` |
| `--text` | `#e1e2e2` |
| `--text-secondary` | `#8f9191` |
| `--accent` | `#91AAA6` |
| `--border` | `rgba(255,255,255,0.04)` |
| `--code-bg` | `rgba(255,255,255,0.015)` |

## Conventions

- Static HTML files with inline `<style>` (no build step)
- CSS variables for all design decisions
- Vertical `<ul>` navigation
- Mobile menu toggle with `type="button"`
- `transition:none` on nav links
- `mark.svg` as the shared logo asset
- `.nojekyll` file for GitHub Pages compatibility