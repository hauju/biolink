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

# Regenerate optimized profile image variants and favicons from hauju.jpg
images:
    #!/usr/bin/env bash
    set -euo pipefail
    cd public/assets/images
    magick hauju.jpg -resize 288x288^ -gravity center -extent 288x288 -quality 85 hauju-288.jpg
    cwebp -q 80 -resize 288 288 hauju.jpg -o hauju-288.webp
    magick hauju.jpg -resize 180x180^ -gravity center -extent 180x180 -quality 90 apple-touch-icon.png
    magick hauju.jpg -resize 32x32^ -gravity center -extent 32x32 favicon-32.png
    magick hauju.jpg -resize 16x16^ -gravity center -extent 16x16 favicon-16.png
