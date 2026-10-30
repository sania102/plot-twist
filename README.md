# PLOT TWIST — Where Culture Changes the Scene
Qloo-powered cultural intelligence for fans (discover what's next) and studios (THE CULTURAL CUT: one film, three evidence-backed campaign directions per market, story unchanged).

**deploy link : https://plot-twist-pcrv.onrender.com/**

## How Qloo is used
All taste data comes from Qloo via `https://hackathon.api.qloo.com` (`/search`, `/v2/insights`) called only from the backend. The LLM interprets retrieved evidence; its citations are filtered to names Qloo actually returned. Failures show "unavailable", never fake data.

## Keys
- `QLOO_API_KEY` (required): request via the Resources tab at qloo.devpost.com.
- `LLM_API_KEY` (optional, FREE): Groq key from console.groq.com/keys. Poster art uses Pollinations (free, no key).


