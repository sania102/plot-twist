# PLOT TWIST — Where Culture Changes the Scene
Qloo-powered cultural intelligence for fans (discover what's next) and studios (THE CULTURAL CUT: one film, three evidence-backed campaign directions per market, story unchanged).

## How Qloo is used
All taste data comes from Qloo via `https://hackathon.api.qloo.com` (`/search`, `/v2/insights`) called only from the backend. The LLM interprets retrieved evidence; its citations are filtered to names Qloo actually returned. Failures show "unavailable", never fake data.

## Run locally
Requires Python 3.11+.
```
cp .env.example .env     # fill in keys
pip install -r backend/requirements.txt
# Windows: set QLOO_API_KEY=... and set OPENAI_API_KEY=... (or use run.bat)
uvicorn backend.main:app --reload
```
Open http://localhost:8000 (API docs at /api/docs).

## Keys
- `QLOO_API_KEY` (required): request via the Resources tab at qloo.devpost.com.
- `LLM_API_KEY` (optional, FREE): Groq key from console.groq.com/keys. Poster art uses Pollinations (free, no key).

## Deploy (free, ~5 min)
Push to a public GitHub repo, then Render -> New Web Service -> pick repo (uses Dockerfile / render.yaml) -> add the env vars. Use the resulting URL as your live demo.

## Status
Implemented: Fan discovery, Studio Cultural Cut, evidence labels, rate limiting, prompt-injection-safe brief handling.
Not implemented (future work): accounts/auth, Film Vault storage, fan-to-studio research, maps, PDF export, poster images.

## AI assistance disclosure
Built with AI assistance (Claude). Runtime AI uses an open model via Groq; poster art via Gemini. State this in the Devpost submission.
## License
MIT

## Qloo features used
`/search` (entity resolution), `/v2/insights` with taste signals (fan picks) and location signals (studio markets) across films, artists, brands, TV shows and places; cross-market overlap is computed from real results. Venue results are leads, not confirmed partnerships.
Poster tailoring runs free in the browser (colour grade, local tagline, stickers on your uploaded poster; the original art is untouched). Gemini image editing endpoint exists but needs a paid Gemini tier.
