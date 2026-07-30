# palmshed/ui

Shared design system for Palmshed projects. Framework-agnostic CSS and HTML templates.

## Structure

- `css/` - Design tokens and CSS modules
- `assets/` - Shared SVG assets (mark.svg)
- `templates/` - HTML starting points for new project sites
- `examples/` - Usage examples for different frameworks
- `docs/` - Living documentation site built with palmshed/ui

## Usage

From `templates/` or `docs/`, reference CSS with relative paths:

```html
<link rel="stylesheet" href="../css/tokens.css">
<link rel="stylesheet" href="../css/base.css">
<link rel="stylesheet" href="../css/layout.css">
<link rel="stylesheet" href="../css/typography.css">
<link rel="stylesheet" href="../css/components.css">
```

Consuming projects adjust the path based on their deployment:

```html
<link rel="stylesheet" href="/vendor/palmshed-ui/css/tokens.css">
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

## Conventions

- Static HTML files with inline `<style>` (no build step)
- CSS variables for all design decisions
- Vertical `<ul>` navigation
- Mobile menu toggle with `type="button"`
- `transition:none` on nav links
- `mark.svg` as the shared logo asset
- `.nojekyll` file for GitHub Pages compatibility

## Principles

### Adoption over expansion

New components should be added because multiple projects need them, not because they might be useful someday.

### Scope

`palmshed/ui` provides a shared visual language for Palmshed projects through HTML templates, CSS modules, design tokens, and static assets.

It does **not**:

- Include a JavaScript framework.
- Require a build step.
- Provide application logic.
- Implement state management.
- Bundle CSS automatically.
- Depend on React, Vue, Svelte, or any other framework.

Framework integrations belong in examples or thin adapters, not in the core design system.

### Release policy

- **Patch (`1.0.x`)**: bug fixes, documentation, accessibility improvements.
- **Minor (`1.1.x`)**: new components, new templates, new design tokens.
- **Major (`2.0.0`)**: breaking changes to tokens, CSS classes, or template structure.

### New component acceptance rule

Before adding a new component, all of the following must be true:

1. Has this been needed by at least two Palmshed projects?
2. Can it be implemented with HTML and CSS alone?
3. Is it accessible by default?
4. Can it be documented with a complete example?
5. Does it avoid increasing complexity for existing users?

If any answer is "no", don't add it yet.

## Definition of Done

A change is complete when:

- Documentation is updated.
- Accessibility has been verified.
- Templates and examples are updated if applicable.
- No breaking changes are introduced without a major version bump.
- CI passes.
- The change has been validated in at least one consuming project when appropriate.