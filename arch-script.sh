#!/bin/bash
set -e

# way of mirror path
LOCAL_MIRROR="/your/server/path"

# Mirror source
SOURCE_MIRROR="rsync://yourserver.here"

if [ ! -d "$LOCAL_MIRROR" ]; then
  echo "The directory  $LOCAL_MIRROR does not exist. Cr  ation..."
  mkdir -p "$LOCAL_MIRROR"
  chown -R www-data:www-data "$LOCAL_MIRROR"
fi

# Rsync Option
RSYNC_OPTS="-avz --delete --delete-after --safe-links --progress --exclude='*.links.tar.gz'"

echo "Arch Linux mirror synchronization started..."

# Synchronisation with the source mirror
rsync $RSYNC_OPTS "$SOURCE_MIRROR" "$LOCAL_MIRROR"

echo "Synchronisation complete."

