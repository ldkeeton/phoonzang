#!/bin/bash
# Start dosbox-x in foreground, emit ready marker immediately.
# Stays alive until dosbox-x exits (so VSCode background task keeps it alive).
# The marker is caught by the problemMatcher to signal "task ready".

DIR="$(dirname "$0")"
BUILD="$DIR/build"
DOSBOX=$(command -v dosbox-x 2>/dev/null || echo "/usr/bin/dosbox-x")

if ! command -v "$DOSBOX" &>/dev/null; then
    echo "Error: dosbox-x not found" >&2
    exit 1
fi

fuser -k -KILL 1234/tcp 2>/dev/null || true

CONFIG=$(mktemp)
cat > "$CONFIG" << CFG
[serial]
serial1 = nullmodem server port:1234
serial2 = dummy
serial3 = disabled
serial4 = disabled

[sdl]
fullscreen = false
windowresolution = 960x600
output = opengl

[dosbox]
quit warning = false

[cpu]
cputype = 386

[autoexec]
mount C "$BUILD"
C:
DEBUG.COM
CFG

echo "Starting dosbox-x..."
echo "__READY__"

exec "$DOSBOX" -conf "$CONFIG" > /tmp/dosboxx-stub.log 2>&1
