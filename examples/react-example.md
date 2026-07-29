# React Example

In a React project, import the CSS files and use the classes directly:

```tsx
import '@/ui/css/tokens.css';
import '@/ui/css/base.css';
import '@/ui/css/layout.css';
import '@/ui/css/typography.css';
import '@/ui/css/components.css';

export default function HomePage() {
  return (
    <nav>
      <span className="nav-mark">palmshed</span>
      <ul className="nav-links">
        <li><a href="/" className="active">Home</a></li>
        <li><a href="/projects">Projects</a></li>
      </ul>
    </nav>
  );
}
```

The CSS uses only CSS custom properties and standard selectors. No JavaScript runtime is needed beyond the mobile menu toggle script.
