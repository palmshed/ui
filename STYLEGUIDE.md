# Style Guide

palmshed/ui components and their intended usage.

## Tokens

```css
:root {
  --bg: #080909;
  --surface: #0e1010;
  --text: #e1e2e2;
  --muted: #8f9191;
  --accent: #91AAA6;
  --border: rgba(255, 255, 255, 0.04);
  --code-bg: rgba(255, 255, 255, 0.015);
}
```

## Navigation

Use a vertical `<ul>` list for site navigation. The mobile menu is toggled with a `<button type="button">`.

```html
<nav>
  <span class="nav-mark">palmshed/ui</span>
  <ul class="nav-links" id="nav">
    <li><a href="home.html" class="active">Home</a></li>
    <li><a href="docs.html">Docs</a></li>
  </ul>
  <button type="button" class="mobile-menu-toggle" aria-label="Menu" aria-expanded="false">Menu</button>
</nav>
```

The `active` class marks the current page. Navigation links use `transition: none` for instant state changes.

## Hero

Use for page headers. Contains a heading and a description paragraph.

```html
<div class="hero">
  <div class="hero-content">
    <h1>Page Title</h1>
    <p>Short description of the page content.</p>
  </div>
</div>
```

## Page Content

Wrap body content in a `<div class="page">`. Sections are separated with `<section>` elements. Use the `section + section` sibling selector for consistent spacing.

```html
<div class="page">
  <section>
    <h2>Section Title</h2>
    <p>Content goes here.</p>
  </section>
</div>
```

## Buttons

Use the `.button` class for links and actions.

```html
<a href="/signup" class="button">Get Started</a>
```

## Cards

Use for summarizing projects or linking to content.

```html
<div class="card">
  <div class="card-name">Project Name</div>
  <div class="card-desc">Short description.</div>
</div>
```

## Tags

Use for labels, version badges, or metadata.

```html
<span class="tag">alpha</span>
```

## Badges

Use for status indicators.

```html
<span class="badge">stable</span>
```

## Alerts

Use for notices or warnings.

```html
<div class="alert alert-info">This is an informational message.</div>
```

## Tables

Use for structured data comparisons.

```html
<table>
  <thead><tr><th>Feature</th><th>Description</th></thead>
  <tbody>
    <tr><td>Token-based auth</td><td>Stateless sessions with HMAC signing</td></tr>
  </tbody>
</table>
```

## Code Blocks

Use `<pre><code>` for code examples. Tab size is 2 spaces.

```html
<pre><code>import { Auth } from "@palmshed/auth-core";</code></pre>
```

## HTTP Method Indicators

Use method labels for API endpoint documentation.

```html
<span class="method method-get">GET</span> <code>/session</code>
```