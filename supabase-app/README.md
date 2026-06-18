# GenWise — Supabase app (Vite)

A copy of the camp app, connected to the class **Supabase Storage** bucket,
built with **Vite** so the keys live in a `.env` file.

## Setup
```bash
cd supabase-app
cp .env.example .env      # then fill in your real values
npm install
```

## Run locally
```bash
npm run dev               # opens a local dev server
```

## Build for hosting
```bash
npm run build             # outputs the static site to dist/
npm run preview           # preview the built site locally
```

## Environment variables (`.env`)
| Variable | Meaning |
|---|---|
| `VITE_SUPABASE_URL` | Supabase project URL |
| `VITE_SUPABASE_ANON_KEY` | public **anon** key (safe to expose) |
| `VITE_SUPABASE_BUCKET` | storage bucket name (`class-resources`) |
| `VITE_APP_SLUG` | this app's folder in the bucket (`prayan-genwise-camp`) |

> ⚠️ `.env` is gitignored — it is never committed. But note: anything prefixed
> `VITE_` is baked into the built JavaScript and **is visible in the browser**.
> That's fine for the **anon** key (it's public by design). Never put a
> `service_role` / secret key in here.
