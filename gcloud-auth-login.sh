#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title GCloud Auth Login
# @raycast.mode silent

# Optional parameters:
# @raycast.icon ☁️

# Documentation:
# @raycast.description Launches gcloud auth login
# @raycast.author Milidn Sai Waghrey
# @raycast.authorURL https://twitter.com/milindwaghrey

if ! command -v gcloud >/dev/null 2>&1; then
  echo "gcloud not found. Install the Google Cloud CLI: https://cloud.google.com/sdk/docs/install"
  exit 1
fi

# Terminal automation is macOS-only; elsewhere just run the interactive flow here.
if command -v osascript >/dev/null 2>&1; then
  osascript -e 'tell application "Terminal" to do script "gcloud auth login"'
  osascript -e 'tell application "Terminal" to activate'
else
  gcloud auth login
fi
