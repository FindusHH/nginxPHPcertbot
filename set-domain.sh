#!/usr/bin/env bash
# Replace the default domain (eniware.info) with a new domain in config files.

set -e

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 NEW_DOMAIN"
  exit 1
fi

OLD_DOMAIN="eniware.info"
NEW_DOMAIN="$1"

FILES=(
  "README.md"
  "nginx/default.conf"
)

for file in "${FILES[@]}"; do
  if [ -f "$file" ]; then
    sed -i "s/${OLD_DOMAIN}/${NEW_DOMAIN}/g" "$file"
  fi
done

echo "Updated domain to ${NEW_DOMAIN} in configuration files."
