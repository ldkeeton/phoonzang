#!/bin/bash
# Start dosemu with GDBSRV + TEST.COM for GDB remote debugging.
# Kills old bridge, starts new bridge, starts dosemu, waits for port.
set -e

DIR="$(dirname "$0")"
WS="$(cd "$DIR/../decompiled_asm_3" && pwd)"
BUILD_OUT="$WS/build_out"

# Kill old processes
pkill -9 dosemu socat 2>/dev/null || true
sleep 1

# Copy test files
cp "$DIR/build/gdbsrv.com" "$BUILD_OUT/"
cp "$DIR/build/test.com"    "$BUILD_OUT/"
cp "$DIR/RUNTEST.BAT"       "$BUILD_OUT/"

chmod +x "$DIR/serbridge.sh"

# Start serial bridge (PTY → TCP :1234)
echo "Starting serial bridge..."
"$DIR/serbridge.sh" &
BRIDGE_PID=$!
sleep 2

PTY_DEV=$(readlink -f /tmp/com1 2>/dev/null || echo "")
if [ -z "$PTY_DEV" ]; then
    echo "Failed to create PTY bridge" >&2
    exit 1
fi
echo "PTY: $PTY_DEV"

# Write config with absolute PTY path
CONFIG=$(mktemp)
cat > "$CONFIG" << CFG
\$_cpu_vm = "emulated"
\$_cpu_vm_dpmi = "emulated"
\$_com1 = "$PTY_DEV"
CFG

# Start dosemu
echo "Starting dosemu..."
dosemu -K "$BUILD_OUT" -E RUNTEST -X -q -f "$CONFIG" -D +s &
DOSEMU_PID=$!

# Wait for TCP port
for i in $(seq 1 60); do
    if nc -z localhost 1234 2>/dev/null; then
        echo "Serial port 1234 ready (dosemu PID $DOSEMU_PID)"
        sleep 2
        rm -f "$CONFIG"
        exit 0
    fi
    sleep 0.5
done

echo "Timeout waiting for port 1234" >&2
rm -f "$CONFIG"
exit 1
