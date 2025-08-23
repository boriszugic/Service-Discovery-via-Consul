#!/bin/bash

set -e

KEY_DIR="./keys"
KEY_NAMES=("nginx" "backend" "consul")

# Create or reset the key directory
mkdir -p "$KEY_DIR"
chmod 700 "$KEY_DIR"

for NAME in "${KEY_NAMES[@]}"; do
  KEY_PATH="$KEY_DIR/id_rsa_$NAME"

  echo "Generating SSH key pair for $NAME..."

  ssh-keygen -t rsa -b 4096 -f "$KEY_PATH" -N "" -C "$NAME" >/dev/null

  chmod 600 "$KEY_PATH"
  chmod 644 "$KEY_PATH.pub"
done

echo -e "\n✅ SSH key pairs generated in $KEY_DIR:"
ls -l "$KEY_DIR"
