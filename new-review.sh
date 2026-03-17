#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: ./new-review.sh <slug>"
  echo "Example: ./new-review.sh paper-title"
  exit 1
fi

SLUG="$1"
DIR="content/review/$SLUG"
FILE="$DIR/index.md"

if [ -d "$DIR" ]; then
  echo "Error: $DIR already exists."
  exit 1
fi

TITLE=$(echo "$SLUG" | tr '-' ' ')
DATE=$(date +%Y-%m-%d)

mkdir -p "$DIR"

cat > "$FILE" << EOF
---
title: "$TITLE"
date: $DATE
draft: true
tags: []
summary: ""
description: ""
keywords: []
ShowToc: false
cover:
  image: ""
  alt: ""
  caption: ""
---
EOF

echo "Created: $FILE"
