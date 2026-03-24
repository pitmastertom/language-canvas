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
- Anthropic API key support via browser `localStorage` (`lingua_canvas_key`)
- Graceful offline / no-key fallback content

## Project structure

This project intentionally stays simple:

- `lingua.html` — HTML, CSS, and JavaScript in one file

## Usage

Open `lingua.html` directly in a browser.

For live AI-generated exercises:
1. Open the page
2. Enter your Anthropic API key
3. Save it in the local browser

If no key is present, the app still works using built-in fallback content.

## Design direction

The visual style is intentionally:
- warm
- editorial
- touch-friendly
- mobile and desktop responsive

## Notes

- The site is usable as a static file
- The interactive experience degrades gracefully when API access is unavailable
- Progress is stored locally in the browser
