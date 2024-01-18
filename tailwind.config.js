/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./public/**/*.{html,js,ts}"],
  theme: {
    extend: {
      colors: {
        "twitter-blue": "#1DA1F2",
        "linkedin-blue": "#0077B5",
        "youtube-red": "#FF0000",
        "github-black": "#333333",
        "buymeacoffee-yellow": "#FFDD00",
        "rust-orange": "#E57324",
      },
    },
  },
  plugins: [],
}

