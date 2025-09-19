#!/usr/bin/env bash
set -o errexit

# Render mounts the persistent disk at /opt/render/project/src/bookstore/media
PERSISTENT_MEDIA_DIR="/opt/render/project/src/bookstore/media"
APP_MEDIA_DIR="bookstore/media"

# Seed disk on first boot: if persistent dir is empty and app has bundled media, copy once
# If app has bundled media and persistent dir has no book images, seed it
if [ -d "$APP_MEDIA_DIR/book_images" ] && [ -z "$(ls -A "$PERSISTENT_MEDIA_DIR/book_images" 2>/dev/null || true)" ]; then
  echo "Seeding persistent media directory..."
  mkdir -p "$PERSISTENT_MEDIA_DIR"
  cp -r "$APP_MEDIA_DIR"/* "$PERSISTENT_MEDIA_DIR"/ || true
fi

# Launch gunicorn from project root as configured in render.yaml
exec gunicorn --chdir bookstore bookstore.wsgi:application