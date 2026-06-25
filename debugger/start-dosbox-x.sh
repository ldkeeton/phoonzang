#!/bin/bash
# Start dosbox-x with debug.com (GDB stub) and serial bridge to TCP :1234.
set -e

DIR="$(dirname "$0")"
BUILD_OUT="$DIR/../decompiled_asm_3/build_out"

echo "Killing old processes..."
pkill -9 dosbox-x 2>/dev/null || true
sleep 1

cp "$DIR/build/debug.com" "$BUILD_OUT/"
cp "$DIR/RUNTEST.BAT"     "$BUILD_OUT/"

CONFIG=$(mktemp)
cat > "$CONFIG" << CFG
[serial]
serial1 = nullmodem server port:1234
serial2 = dummy
serial3 = disabled
serial4 = disabled

[sdl]
fullscreen = false
windowresolution = 640x400
output = opengl

[autoexec]
mount C "$BUILD_OUT"
C:
RUNTEST.BAT
CFG

echo "Starting dosbox-x..."
dosbox-x -conf "$CONFIG" > /tmp/dosboxx-stub.log 2>&1 &
DOSBOX_PID=$!

for i in $(seq 1 30); do
    if ss -tlnp 2>/dev/null | grep -q :1234; then
        echo "Serial port 1234 ready (dosbox-x PID $DOSBOX_PID)"
        sleep 1
        rm -f "$CONFIG"
        exit 0
    fi
    sleep 0.5
done

echo "Timeout waiting for port 1234" >&2
rm -f "$CONFIG"
exit 1
