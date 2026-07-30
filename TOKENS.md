# Design Tokens

Every design decision in palmshed/ui is expressed as a CSS custom property. Tokens are the public API - stable after `v1.0.0`.

## Color tokens

| Token | Value | Purpose | Public |
|-------|-------|---------|--------|
| `--bg` | `#080909` | Page background. | Yes |
| `--surface` | `#0e1010` | Card, nav, and elevated surface backgrounds. | Yes |
| `--text` | `#e1e2e2` | Primary text color. | Yes |
| `--muted` | `#8f9191` | Secondary text, captions, metadata. | Yes |
| `--accent` | `#91AAA6` | Links, active states, interactive elements. | Yes |
| `--border` | `rgba(255,255,255,0.04)` | Subtle border color for cards and inputs. | Yes |
| `--code-bg` | `rgba(255,255,255,0.015)` | Background for inline `<code>` and `<pre>` blocks. | Yes |

## Font tokens

| Token | Value | Purpose | Public |
|-------|-------|---------|--------|
| `--font` | System font stack | Primary typeface. | Yes |
| `--mono` | Monospace system stack | Code and preformatted text. | Yes |

### System font stack

```
-apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif
```

### Monospace font stack

```
ui-monospace, SFMono-Regular, "SF Mono", Menlo, Consolas, monospace
```

## Usage

```css
.my-element {
  background: var(--surface);
  color: var(--text);
  border: 1px solid var(--border);
}
```

## Token policy

- Adding a token is non-breaking (minor version bump).
- Renaming or removing a token is a breaking change (major version bump).
- Tokens are stable after `v1.0.0`.
- Internal-use-only tokens should be prefixed with `--_` to indicate private scope.

## Guidelines

- `--text` for body copy, `--muted` for less prominent text.
- `--accent` only for interactive elements and links.
- `--surface` for elevated containers (cards, nav).
- `--border` sparingly - prefer spacing to separate content.
