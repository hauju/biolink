
Install bun

```bash
curl -fsSL https://bun.sh/install | bash
source /home/hjung/.bashrc
```

Install tailwindcss
https://tailwindcss.com/docs/installation

```bash
bun install -D tailwindcss @tailwindcss/cli
bunx tailwindcss init
```

```bash
bun install -D prettier-plugin-tailwindcss
```

Watch folder

```bash
bunx @tailwindcss/cli -i ./src/input.css -o ./public/tailwind.css --watch
```

@layer base {

  *,
  ::after,
  ::before,
  ::backdrop,
  ::file-selector-button {
    border-color: var(--color-gray-200, currentColor);
  }
}

## Status

[![ci](https://github.com/hauju/biolink/actions/workflows/build.yml/badge.svg)](https://github.com/hauju/biolink/actions/workflows/build.yml)