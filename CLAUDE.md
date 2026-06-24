# Project: Trick Shot

> 🧠 Second brain at ~/Projects/brain. **At the start of every session here, run brain-recall first** to load company + project context (overview, progress, ideas).

## Framing
- **domain:** business — standalone product (sport / trick training), not a Punchlab-internal tool.
- **nature:** build — Claude writes the software.
- **blast_radius:** customer-app — publicly deployed (GitHub Pages); real users hit the live URL.

STACK: single self-contained `index.html` — vanilla HTML/CSS/JS, no framework, no build step, no
dependencies. Browser APIs only: `getUserMedia`, canvas + `ImageBitmap` ring buffer, `MediaRecorder`,
Screen Wake Lock, Fullscreen. Hosted as a static file on GitHub Pages (`punchlab-lab/trick-shot`,
deploys on push to `master`). A Mac double-click launcher (`Start Trick Shot.command`) serves it
locally via `python3 -m http.server` for offline use.

## What we're building
A delayed-video mirror for self-coaching tricks: the camera shows you on a set delay (default 3s) so
you can review a rep right after doing it, capture the best attempts into a session Clips panel, and
rewatch them full screen on a loop. Fully client-side — no backend, nothing uploaded.
