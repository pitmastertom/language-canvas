# Supabase import plan for Lingua Canvas

## 1. Create a Supabase project
Create a new Supabase project and open the SQL editor.

## 2. Run the schema
Run the contents of `supabase-schema.sql`.

## 3. Import content
Use the JSON files in `data/` to populate:

- `flashcards` from `flashcards.es.json` and `flashcards.te.json`
- `quiz_questions` from `quizzes.es.json` and `quizzes.te.json`
- `phrases` from `phrases.es.json` and `phrases.te.json`
- `conversation_openers` from `conversation-openers.es.json` and `conversation-openers.te.json`

## 4. Add project settings
When you are ready to connect the frontend or a secure API layer, provide:

- `SUPABASE_URL`
- `SUPABASE_ANON_KEY`

## 5. Recommended architecture
For production:
- keep public read-only lesson content accessible safely
- use Row Level Security for any user-specific data
- store user progress in Supabase later if needed
- avoid putting any service-role key in frontend code
