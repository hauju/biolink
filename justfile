default:
    @just --list

install:
    bun install

build:
    bunx @tailwindcss/cli -i ./src/input.css -o ./public/tailwind.css

watch:
    bunx @tailwindcss/cli -i ./src/input.css -o ./public/tailwind.css --watch

serve:
    python3 -m http.server 8000 --directory public

dev:
    #!/usr/bin/env bash
    set -euo pipefail
    bunx @tailwindcss/cli -i ./src/input.css -o ./public/tailwind.css --watch &
    python3 -m http.server 8000 --directory public &
    trap 'kill $(jobs -p)' EXIT
    wait
