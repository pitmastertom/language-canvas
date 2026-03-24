-- Lingua Canvas starter schema for Supabase

create table if not exists languages (
  code text primary key,
  label text not null
);

create table if not exists topics (
  id bigserial primary key,
  slug text unique not null,
  name text not null
);

create table if not exists flashcards (
  id bigserial primary key,
  language_code text not null references languages(code) on delete cascade,
  topic_slug text not null,
  english text not null,
  translation text not null,
  pronunciation text,
  example_en text,
  example_translation text,
  tip text,
  created_at timestamptz default now()
);

create table if not exists quiz_questions (
  id bigserial primary key,
  language_code text not null references languages(code) on delete cascade,
  topic_slug text not null,
  question text not null,
  correct text not null,
  options jsonb not null,
  explanation text,
  created_at timestamptz default now()
);

create table if not exists phrases (
  id bigserial primary key,
  language_code text not null references languages(code) on delete cascade,
  source_english text not null,
  translation text not null,
  pronunciation text,
  word_by_word jsonb,
  grammar_note text,
  alternative text,
  created_at timestamptz default now()
);

create table if not exists conversation_openers (
  id bigserial primary key,
  language_code text not null references languages(code) on delete cascade,
  scenario text not null,
  opener text not null,
  created_at timestamptz default now()
);

insert into languages (code, label) values
  ('es', 'Spanish'),
  ('te', 'Telugu')
on conflict (code) do nothing;
