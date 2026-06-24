#!/bin/bash
# Double-click this file to launch the Trick Shot app.
# It starts a tiny local web server (needed so the browser will allow the camera)
# and opens the app in your default browser. Close this Terminal window to stop.

set -e
cd "$(dirname "$0")"

PORT=8765
URL="http://localhost:$PORT"

# Find Python 3 (ships with macOS developer tools).
if command -v python3 >/dev/null 2>&1; then
  PY=python3
else
  echo ""
  echo "  ⚠  Python 3 isn't installed on this Mac."
  echo "     Run this once in Terminal, then try again:"
  echo ""
  echo "         xcode-select --install"
  echo ""
  echo "  Press any key to close."
  read -n 1 -s
  exit 1
fi

echo ""
echo "  🎥  Trick Shot is running."
echo "  → Opening $URL in your browser…"
echo ""
echo "  Leave this window open while you use the app."
echo "  Close this window (or press Ctrl-C) to stop."
echo ""

# Open the browser shortly after the server comes up.
( sleep 1; open "$URL" ) &

# Serve this folder. Stays in the foreground until the window is closed.
exec "$PY" -m http.server "$PORT"
