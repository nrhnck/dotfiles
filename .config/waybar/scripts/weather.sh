#!/usr/bin/env bash

# Hardcoded for Storrs, CT
TEMP=$(curl -s "wttr.in/Storrs?format=%t" | grep -oE '[0-9]+')

if [ -z "$TEMP" ]; then
    echo '{"text": "☀️ N/A", "tooltip": "Weather unavailable"}'
else
    echo "{\"text\": \"☀️ ${TEMP}°F\", \"tooltip\": \"Current Temperature in Storrs\"}"
fi
