#!/bin/bash

USAGE=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

echo "Current disk usage: $USAGE%"

if [ "$USAGE" -gt 80 ]; then
  echo "WARNING: Disk usage is over 80%!"
else
  echo "Disk usage is okay."
fi
