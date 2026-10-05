#!/bin/bash
# Start dosbox-x in foreground, emit __READY__ only when port 1234 is open.
# VSCode background task problemMatcher uses __READY__ to signal "task ready".

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
GDBSRV.COM
TEST.COM
CFG

echo "Starting dosbox-x..."
"$DOSBOX" -conf "$CONFIG" > /tmp/dosboxx-stub.log 2>&1 &
DOSBOX_PID=$!
trap "kill $DOSBOX_PID 2>/dev/null; rm -f '$CONFIG'" EXIT

# Poll until port is open or 10s timeout
for i in $(seq 1 40); do
    if (echo >/dev/tcp/localhost/1234) 2>/dev/null; then
        break
    fi
    sleep 0.25
done

echo "__READY__"
wait $DOSBOX_PID
