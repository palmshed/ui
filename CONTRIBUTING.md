# Contributing to palmshed/ui

## Adding a component

1. Add the CSS to `css/components.css`.
2. Do not add a JavaScript dependency.
3. Document the component in `STYLEGUIDE.md`.
4. Add a usage example in `examples/` if the component is non-trivial.

## Token changes

- Renaming a token is a breaking change. Bump the major version.
- Adding a new token is non-breaking. Bump the minor version.
- The token policy is documented in `DESIGN.md`.

## Templates

- Templates use plain HTML with inline CSS links. No build step.
- Each template includes only the CSS files it needs.
- New templates should follow the existing nav and footer structure.

## Release process

1. Update `CHANGELOG.md`.
2. Update version in `package.json`.
3. Commit and tag (`git tag v1.1.0`).
4. Push tag to GitHub.

## Questions

Open an issue on GitHub or reach out in the Palmshed organization.