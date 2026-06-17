# 🎓 GenWise AI/ML Summer Camp Hub

A single-page web app that connects our **2 teachers + 7 students** for the GenWise AI/ML strand (June 2026). Chat, resources, games, an AI tutor, assignments, announcements, and badges — all in one place, synced live across everyone's devices.

---

## 🔗 Open the app

**👉 Live link:** https://prayan-aiml.github.io/genwise-camp/

**Room code:** `GENWISE-AIML-2026`

To join: open the link → enter the room code → tap your name/seat → pick an avatar → **Enter the Hub**. That's it. **No GitHub account or install needed to use the app** — just the link above.

---

## 👥 Who it's for

- **Teachers:** Mr. Keshav, Mr. Ashish
- **Students:** Prayan, Aarav, Akshaan, Parnika, Sohum, Kiyaan, Jesna

---

## ✨ What's inside

| Section | What it does |
|---|---|
| 🏠 **Home / Roster** | Everyone's card with a live "online" dot and badges |
| 💬 **Chat** | Real-time group chat (teacher messages highlighted) |
| 📚 **Resources** | Curated links — **Week 1 (ML foundations)** & **Week 2 (going deeper)**. Anyone can *suggest* a link; teachers approve it (moderation) |
| 🎮 **Games** | AI Economics Quiz, Spot the AI, Prompt Golf, 20-Questions Decision Tree — finishing one earns a badge |
| 🤖 **AI Tutor** | Ask AI/ML questions — runs in **demo mode with no API key**, fully offline from a built-in knowledge base |
| 📝 **Assignments** | Teachers post tasks; students submit; teachers give feedback |
| 📢 **Announcements** | Pinned notices + the 2-week camp schedule |
| 🏅 **Progress & Badges** | Personal checklist + badges (each with a one-line description) |

## 🔐 Roles

- **Teachers** can post announcements, add/approve resources, create assignments, and give feedback.
- **Students** can chat, play games, use the tutor, submit assignments, suggest resources, and edit their own profile.

---

## 🛠️ How it works (for the curious / for editing)

- **One file:** the entire app is `index.html` — plain HTML + CSS + vanilla JavaScript, no build step.
- **Live sync:** uses a free **Firebase Realtime Database** (`genwise-camp`). The Firebase web config in the file is *public client config* by design (not a secret), secured by database rules scoped to the room.
- **AI Tutor:** demo mode needs no API key and works offline. There's an optional, off-by-default toggle to plug in your own key later.
- **Hosting:** served free via **GitHub Pages** straight from this repo.

### Run it locally
Just open `index.html` in any browser (double-click it). It works offline in **demo mode** (data saved per-device); the live link is what gives cross-device sync.

### Edit & publish
1. Edit `index.html` (here on GitHub: **Add file → Upload files**, or edit in the browser).
2. Commit the change.
3. GitHub Pages rebuilds in ~1 minute → the live link updates automatically. Same URL always.

> ⚠️ Editing `index.html` changes the live site for **everyone**. Day-to-day camp activity (chatting, assignments, resources) happens **inside the app** via the link — not here on GitHub.

---

## 📁 Repo contents

- `index.html` — the complete app (this is everything).

---

*Built during the GenWise Gifted Summer Program — AI/ML strand, June 2026. Learn · Grow · Play.* 🚀
