# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Personal biolink/linktree-style page for Hauke Jung, hosted at **haukejung.de**. Static HTML site deployed to GitHub Pages via the `gh-pages` branch.

## Build & Development

```bash
# Install dependencies
bun install

# Build Tailwind CSS
bunx @tailwindcss/cli -i ./src/input.css -o ./public/tailwind.css

# Watch mode for development
bunx @tailwindcss/cli -i ./src/input.css -o ./public/tailwind.css --watch
```

No test suite or linter is configured.

## Architecture

- `public/` — The deploy directory. Everything in here is published to GitHub Pages as-is.
  - `index.html` — The entire site (single page). Uses Tailwind CSS 4 + DaisyUI with `data-theme="dark"`.
  - `tailwind.css` — Built CSS output (generated from `src/input.css`).
  - `assets/images/` — Profile photo, project logos, OG image.
  - `assets/js/analytics.js` — Self-hosted Umami analytics script.
  - `CNAME` — Custom domain config (`haukejung.de`).
- `src/input.css` — Tailwind entry point. Imports Tailwind, DaisyUI plugin, and custom brand colors.

## Deployment

CI (`.github/workflows/build.yml`) runs on push to `main`: builds Tailwind CSS, then deploys `public/` to `gh-pages` branch using `peaceiris/actions-gh-pages`.

## Key Details

- Tailwind CSS v4 with `source(none)` directive — only scans `public/*.{html,js}` for classes.
- The page also loads `@tailwindcss/browser` from CDN for runtime class support.
- 3D card hover effects on project cards use vanilla JS with `perspective`/`transform-style: preserve-3d`.
- SEO: JSON-LD Person schema, Open Graph, Twitter Card meta tags, `robots.txt`, `sitemap.xml`.
- OG image generated via `create_og_image.py` (Python/Pillow script, not part of the build pipeline).
