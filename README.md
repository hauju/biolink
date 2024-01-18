
Install bun

```bash
curl -fsSL https://bun.sh/install | bash
source /home/hjung/.bashrc
```

Install tailwindcss
https://tailwindcss.com/docs/installation

```bash
bun install -D tailwindcss
bunx tailwindcss init
```

```bash
bun install -D prettier-plugin-tailwindcss
```

Watch folder

```bash
bunx tailwindcss -i ./src/input.css -o ./public/tailwind.css --watch
```

## Status

[![ci](https://github.com/hauju/biolink/actions/workflows/build.yml/badge.svg)](https://github.com/hauju/biolink/actions/workflows/build.yml)