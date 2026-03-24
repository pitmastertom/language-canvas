# Lingua Canvas

Lingua Canvas is a single-file responsive language-learning website designed to feel warm, editorial, and lightweight rather than generic SaaS.

## What it includes

- Responsive landing / hero section
- Features section
- Interactive practice studio
- Four study modes:
  - Flashcards
  - Quiz
  - Phrase Builder
  - Conversation mode
- Spanish and Telugu support
- Script-aware Telugu typography
- Built-in dataset-driven practice content
- Graceful static/offline behavior

## Project structure

This project intentionally stays simple:

- `lingua.html` — HTML, CSS, and JavaScript in one file

## Usage

Open `lingua.html` directly in a browser.

The app works using built-in structured learning content and does not require a browser-side AI key.

If you want AI later, add a server-side endpoint rather than putting credentials in frontend code.

## Design direction

The visual style is intentionally:
- warm
- editorial
- touch-friendly
- mobile and desktop responsive

## Notes

- The site is usable as a static file
- The current version is ideal for static hosting platforms like Vercel
- Progress is stored locally in the browser
