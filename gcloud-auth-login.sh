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

osascript -e 'tell application "Terminal" to do script "gcloud auth login"'
