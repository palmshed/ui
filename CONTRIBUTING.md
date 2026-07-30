# Contributing to palmshed/ui

## Adding a component

1. Add the CSS to `css/components.css`.
2. Do not add a JavaScript dependency.
3. Document the component in `STYLEGUIDE.md`.
4. Update the component preview in `docs/components.html`.
5. Add a usage example in `examples/` if the component is non-trivial.

## Token changes

- Renaming a token is a breaking change. Bump the major version.
- Adding a new token is non-breaking. Bump the minor version.
- Token policy is documented in `TOKENS.md`.

## Templates

- Templates use plain HTML with inline CSS links. No build step.
- Each template includes only the CSS files it needs.
- New templates should follow the existing nav and footer structure.

## Documentation

- The documentation site lives in `docs/` and uses palmshed/ui itself.
- Update the relevant doc page when adding or changing a feature.

## Before submitting

- Run `scripts/validate.sh` to check for broken links and missing assets.
- Fill out the pull request template - every section matters.
- Use the issue templates for bugs, component proposals, and documentation gaps.

## Release process

1. Update `CHANGELOG.md`.
2. Update version in `package.json`.
3. Commit and tag (`git tag v1.1.0`).
4. Push tag to GitHub (CI deploys documentation automatically).

## Questions

Open an issue on GitHub or reach out in the Palmshed organization.