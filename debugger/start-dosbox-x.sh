#!/bin/bash
# Start dosbox-x with gdbsrv TSR + test.com, serial bridge to TCP :1234.
set -e

DIR="$(dirname "$0")"
BUILD="$DIR/build"
DOSBOX=$(command -v dosbox-x 2>/dev/null || echo "/usr/bin/dosbox-x")

# Try graceful shutdown of old TSR via serial
if ss -tlnp 2>/dev/null | grep -q :1234; then
    echo "Sending shutdown to old TSR..."
    python3 -c "
import socket, time
try:
    s = socket.socket()
    s.settimeout(2)
    s.connect(('localhost', 1234))
    time.sleep(0.3)
    try: s.recv(1024)
    except: pass
    s.send(b'\$k#6b')  # GDB kill packet
    time.sleep(0.5)
    try: s.recv(1024)
    except: pass
    s.close()
except: pass
" 2>/dev/null || true
    sleep 1
fi

# Force-kill stale process by port
fuser -k -KILL 1234/tcp 2>/dev/null || true
for i in $(seq 1 10); do
    if ! ss -tlnp 2>/dev/null | grep -q :1234; then
        break
    fi
    sleep 0.5
done

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
mount C "$BUILD"
C:
RUNTEST
CFG

echo "Starting dosbox-x..."
"$DOSBOX" -conf "$CONFIG" > /tmp/dosboxx-stub.log 2>&1 &
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
