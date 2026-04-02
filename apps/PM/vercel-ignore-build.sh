#!/bin/bash

# Vercel "Ignored Build Step" script
# This script checks if there are changes in the current directory compared to the previous commit.
# If changes are found, it exits with 1 (proceed with build).
# If no changes are found, it exits with 0 (cancel build).

echo "Checking for changes."

# Use git diff to find changes in the current directory (.)
# git diff --quiet returns 0 if no changes, 1 if changes found.
if git diff --quiet HEAD^ HEAD -- .; then
  echo "🛑 No changes. Cancelling build."
  exit 0
else
  echo "✅ Changes detected. Proceeding with build."
  exit 1
fi
