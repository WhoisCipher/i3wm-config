#!/bin/sh

# Brightness icons
BRIGHTNESS_LOW="🌑"   # Very dim
BRIGHTNESS_MID="🌕"   # Medium brightness
BRIGHTNESS_HIGH="☀️"  # Bright

# Get current brightness as a percentage
BRIGHTNESS_LEVEL=$(brightnessctl get)
MAX_BRIGHTNESS=$(brightnessctl max)
BRIGHTNESS_PERCENT=$((BRIGHTNESS_LEVEL * 100 / MAX_BRIGHTNESS))

# Set icon based on brightness level
if [ "$BRIGHTNESS_PERCENT" -lt 34 ]; then
    ICON="$BRIGHTNESS_LOW"
elif [ "$BRIGHTNESS_PERCENT" -lt 67 ]; then
    ICON="$BRIGHTNESS_MID"
else
    ICON="$BRIGHTNESS_HIGH"
fi

# Print the formatted output
echo "$ICON" "$BRIGHTNESS_PERCENT" | awk '{ printf(" %s:%3s%% \n", $1, $2) }'

