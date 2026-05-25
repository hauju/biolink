# Hauke Jung — Personal Biolink

[![ci](https://github.com/hauju/biolink/actions/workflows/build.yml/badge.svg)](https://github.com/hauju/biolink/actions/workflows/build.yml)
[![site](https://img.shields.io/website?url=https%3A%2F%2Fhaukejung.de&label=haukejung.de&up_message=online)](https://haukejung.de)
[![license](https://img.shields.io/github/license/hauju/biolink)](LICENSE)

Source code for [**haukejung.de**](https://haukejung.de) — my personal landing page and link hub. A single static HTML page, built with Tailwind CSS 4 and DaisyUI, deployed to GitHub Pages.

## About me

I'm **Hauke Jung** — a software engineer and indie hacker based in Germany. I build small, focused tools — mostly in **Rust** — with a bias toward simple infrastructure, observability, and developer experience. When I'm not shipping code, I'm usually outside on a trail.

## Projects

| Project | What it does |
| --- | --- |
| [**Infra.page**](https://infra.page) | One dashboard for your entire project — aggregates hosting, analytics, errors, and deploys in a single view. |
| [**SeggWat**](https://seggwat.com) | Lightweight feedback collection platform for indie projects and small teams. |
| [**Oxidt**](https://oxidt.com) | Tech blog on Rust, software engineering, and indie hacking. |
| [**Hike & Code**](https://hikeandcode.com) | Where hiking meets software engineering — trip reports and notes from the trail. |

## Stack

- **HTML + Tailwind CSS 4** with **DaisyUI** (single static page, dark theme)
- Built with **[Bun](https://bun.sh)** and **[just](https://github.com/casey/just)**
- Self-hosted **[Umami](https://umami.is)** analytics
- Deployed to **GitHub Pages** via `peaceiris/actions-gh-pages`
- SEO: JSON-LD `Person` schema, Open Graph + Twitter Card meta, `robots.txt`, `sitemap.xml`

## Develop

Requires [Bun](https://bun.sh) and [just](https://github.com/casey/just).

```bash
# install dependencies
just install

# build Tailwind once
just build

# watch CSS + serve at http://localhost:8000
just dev
```

Run `just` with no arguments to list all recipes (build, watch, serve, dev, images).

## Project layout

```
public/         # Deploy directory — published to GitHub Pages as-is
  index.html    # The entire site
  tailwind.css  # Built CSS (generated from src/input.css)
  assets/       # Images, favicons, OG image, analytics script
src/input.css   # Tailwind entry — imports Tailwind + DaisyUI + brand colors
justfile        # Build / dev / image recipes
```

## Deploy

Push to `main`. CI (`.github/workflows/build.yml`) builds `public/tailwind.css` and publishes the `public/` directory to the `gh-pages` branch.

## Connect

- GitHub — [@hauju](https://github.com/hauju)
- Twitter / X — [@haukejung](https://twitter.com/haukejung)
- Bluesky — [@hauju.bsky.social](https://bsky.app/profile/hauju.bsky.social)
- LinkedIn — [haukejung](https://www.linkedin.com/in/haukejung/)

## License

[Apache 2.0](LICENSE) for the code. Images, copy, and personal branding are © Hauke Jung.
