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
- Supabase-ready content structure

## Project structure

This project intentionally stays simple while becoming easier to scale:

- `index.html` — main deploy entrypoint
- `lingua.html` — alternate single-file entry
- `data/*.json` — structured content files used by the site
- `supabase-schema.sql` — starter relational schema for Supabase
- `supabase-import.md` — import/setup notes
- `.env.example` — future environment variable placeholders

## Usage

Open `index.html` directly in a browser, or deploy the repo to Vercel.

The app works using built-in structured learning content and does not require a browser-side AI key.

If you want dynamic content later, use Supabase and/or a secure server-side API route rather than putting credentials in frontend code.

## Supabase path

Recommended next step:
1. Create a Supabase project
2. Run `supabase-schema.sql`
3. Import the content from `data/*.json`
4. Add `SUPABASE_URL` and `SUPABASE_ANON_KEY`
5. Replace JSON file loading with Supabase queries when ready

## Notes

- The site is usable as a static file
- The current version is ideal for static hosting platforms like Vercel
- Progress is stored locally in the browser
- Content is now separated from the UI, which makes expansion much easier
