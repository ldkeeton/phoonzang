#!/bin/bash
# Test GDBSRV with dosemu2 + GDB
set -e

DIR="$(dirname "$0")"
WS="$(cd "$DIR/../decompiled_asm_3" && pwd)"
BUILD_OUT="$WS/build_out"

# Copy test files alongside game binaries
cp "$DIR/build/gdbsrv.com" "$BUILD_OUT/"
cp "$DIR/build/test.com"    "$BUILD_OUT/"
cp "$DIR/RUNTEST.BAT"       "$BUILD_OUT/"

# Kill old dosemu
pkill dosemu 2>/dev/null || true
sleep 1

echo "Starting dosemu..."
dosemu -K "$BUILD_OUT" -E RUNTEST.BAT -X -q -f "$DIR/dosemu-gdb.conf" &
DOSEMU_PID=$!

# Wait for serial port
for i in $(seq 1 60); do
    if nc -z localhost 1234 2>/dev/null; then
        echo "Serial port 1234 ready (dosemu PID $DOSEMU_PID)"
        sleep 2  # wait for TSR to load + test to hit INT3
        break
    fi
    sleep 0.5
done

echo "Connecting GDB..."
gdb -batch \
    -ex "target remote :1234" \
    -ex "info registers" \
    -ex "x/8i \$cs*16+\$eip" \
    -ex "stepi" \
    -ex "stepi" \
    -ex "info registers" \
    -ex "continue" \
    2>&1 || echo "GDB test completed (may have disconnected after continue)"

# Give dosemu time to finish
wait $DOSEMU_PID 2>/dev/null || true
echo "Done"
