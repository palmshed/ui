# palmshed/ui

[![Docs](https://img.shields.io/badge/docs-palmshed.github.io/ui-91AAA6?style=flat-square)](https://palmshed.github.io/ui)
[![Validate](https://img.shields.io/github/actions/workflow/status/palmshed/ui/validate.yml?branch=main&label=validate&style=flat-square)](https://github.com/palmshed/ui/actions/workflows/validate.yml)
[![License](https://img.shields.io/github/license/palmshed/ui?color=8f9191&style=flat-square)](LICENSE)
[![Release](https://img.shields.io/github/v/release/palmshed/ui?color=e1e2e2&style=flat-square)](https://github.com/palmshed/ui/releases)

Shared design system for Palmshed projects. Framework-agnostic CSS and HTML templates.

## Files

| Path | Description |
|------|-------------|
| `css/tokens.css` | Design tokens (colors, fonts, spacing) |
| `css/base.css` | Reset and base styles |
| `css/layout.css` | Nav, hero, page layout, footer |
| `css/typography.css` | Headings, code blocks, tables, links |
| `css/components.css` | Reusable components (cards, buttons, badges, alerts) |
| `assets/mark.svg` | Organization logo |
| `templates/` | HTML starting points for new sites |
| `docs/` | Living documentation site |

## Usage

### As a submodule or vendor directory

Copy or submodule the repository into your project, then link the CSS files using relative or server-relative paths:

```html
<link rel="stylesheet" href="/vendor/palmshed-ui/css/tokens.css">
<link rel="stylesheet" href="/vendor/palmshed-ui/css/base.css">
<link rel="stylesheet" href="/vendor/palmshed-ui/css/layout.css">
<link rel="stylesheet" href="/vendor/palmshed-ui/css/typography.css">
<link rel="stylesheet" href="/vendor/palmshed-ui/css/components.css">
```

### From the repository root (development)

When working on the design system itself, use relative paths from `templates/` or `docs/`:

```html
<link rel="stylesheet" href="../css/tokens.css">
<link rel="stylesheet" href="../css/base.css">
```

### With a URL prefix (GitHub Pages)

If hosting at a path prefix, adjust the paths accordingly:

```html
<link rel="stylesheet" href="/ui/css/tokens.css">
```

## Design tokens

| Token | Value |
|-------|-------|
| `--bg` | `#080909` |
| `--surface` | `#0e1010` |
| `--text` | `#e1e2e2` |
| `--muted` | `#8f9191` |
| `--accent` | `#91AAA6` |
| `--border` | `rgba(255,255,255,0.04)` |
| `--code-bg` | `rgba(255,255,255,0.015)` |

## License

MIT