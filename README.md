
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
bunx tailwindcss -i ./src/input.css -o ./dist/output.css --watch
```