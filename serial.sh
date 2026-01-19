#!/usr/bin/env bash
set -euo pipefail

PORT_PATTERN="${1:-}"
BAUD="${2:-115200}"

if [[ -z "$PORT_PATTERN" ]]; then
  echo "Usage: $0 <device-path-or-glob> [baud]"
  echo "Example:"
  echo "  $0 /dev/serial/by-id/usb-Zephyr_* 115200"
  exit 1
fi

while true; do
  for dev in $PORT_PATTERN; do
    if [[ -e "$dev" ]]; then
      echo "Connecting to $dev"
      picocom -b "$BAUD" "$dev" || true
      echo "Disconnected from $dev"
    fi
  done
  sleep 0.5
done
