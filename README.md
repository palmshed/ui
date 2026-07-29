# palmshed/ui

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

## Usage

Link the CSS files in any HTML page:

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
| `--muted` | `#8f9191` |
| `--accent` | `#91AAA6` |
| `--border` | `rgba(255,255,255,0.04)` |
| `--code-bg` | `rgba(255,255,255,0.015)` |

## License

MIT