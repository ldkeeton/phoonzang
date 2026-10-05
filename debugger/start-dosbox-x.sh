#!/bin/bash
# Start dosbox-x in foreground, emit __READY__ when TESTDBG.COM reaches entry.
# VSCode background task problemMatcher uses __READY__ to signal "task ready".

DIR="$(dirname "$0")"
BUILD="$DIR/build"
DOSBOX=$(command -v dosbox-x 2>/dev/null || echo "/usr/bin/dosbox-x")

if ! command -v "$DOSBOX" &>/dev/null; then
    echo "Error: dosbox-x not found" >&2
    exit 1
fi

fuser -k -KILL 1234/tcp 2>/dev/null || true
rm -f "$BUILD/GDBENTRY.OK"

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
GDBSRV.COM
TESTDBG.COM
CFG

echo "Starting dosbox-x..."
"$DOSBOX" -conf "$CONFIG" > /tmp/dosboxx-stub.log 2>&1 &
DOSBOX_PID=$!
trap "kill $DOSBOX_PID 2>/dev/null; rm -f '$CONFIG'" EXIT

# Wait until the target itself reaches the injected entry gate. The TCP port
# opens before DOS autoexec completes, so port readiness alone is too early.
for i in $(seq 1 120); do
    if [ -f "$BUILD/GDBENTRY.OK" ]; then
        break
    fi
    sleep 0.25
done

if [ ! -f "$BUILD/GDBENTRY.OK" ]; then
    echo "Error: TESTDBG.COM did not reach its entry gate" >&2
    exit 1
fi

echo "__READY__"
wait $DOSBOX_PID
