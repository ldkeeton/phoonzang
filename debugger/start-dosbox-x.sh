#!/bin/bash
# Start DOSBox-X and emit __READY__ when the selected target reaches entry.
# VSCode background task problemMatcher uses __READY__ to signal "task ready".

DIR="$(dirname "$0")"
BUILD="$DIR/build"
PID_FILE="$BUILD/dosbox-x.pid"
DOSBOX=$(command -v dosbox-x 2>/dev/null || echo "/usr/bin/dosbox-x")
APP_BUILD="$BUILD"
MOUNT_DEBUGGER=0
case "${1:-testcom}" in
    testcom|com) TARGET=TESTCOM.COM ;;
    testexe|exe) TARGET=TESTEXE.EXE ;;
    dsavant)
        TARGET='C:\DS.EXE'
        APP_BUILD="$DIR/../asm_DSAVANT/build_out"
        MOUNT_DEBUGGER=1
        ;;
    *) echo "Usage: $0 [testcom|testexe|dsavant] [--headless]" >&2; exit 2 ;;
esac
ENTRY_FILE="$APP_BUILD/GDBENTRY.OK"
HEADLESS=0
if [ "${2:-}" = "--headless" ]; then
    HEADLESS=1
elif [ -n "${2:-}" ]; then
    echo "Usage: $0 [testcom|testexe|dsavant] [--headless]" >&2
    exit 2
fi
SDL_OUTPUT=opengl
SDL_ENV=()
# Shared launch flags: skip the BIOS logo/splash and welcome banner
# (-fastlaunch), hide the menu bar (-nomenu), and suppress the startup
# working-directory dialog (-nopromptfolder).
DOSBOX_ARGS=(-fastlaunch -nomenu -nopromptfolder)
if [ "$HEADLESS" -eq 1 ]; then
    SDL_OUTPUT=surface
    SDL_ENV=(env SDL_VIDEODRIVER=dummy SDL_AUDIODRIVER=dummy)
    DOSBOX_ARGS+=(-nogui)
fi

if ! command -v "$DOSBOX" &>/dev/null; then
    echo "Error: dosbox-x not found" >&2
    exit 1
fi

fuser -k -KILL 1234/tcp 2>/dev/null || true
rm -f "$PID_FILE"
rm -f "$ENTRY_FILE"

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
output = $SDL_OUTPUT

[dosbox]
quit warning = false

[cpu]
cputype = 386

[autoexec]
@echo off
mount C "$APP_BUILD"
C:
CFG

if [ "$MOUNT_DEBUGGER" -eq 1 ]; then
    cat >> "$CONFIG" << CFG
mount D "$BUILD"
D:
GDBSRV.COM
C:
D:\GDBEXEC.COM $TARGET
CFG
else
    cat >> "$CONFIG" << CFG
GDBSRV.COM
GDBEXEC.COM $TARGET
CFG
fi

echo "Starting dosbox-x..."
"${SDL_ENV[@]}" "$DOSBOX" "${DOSBOX_ARGS[@]}" -conf "$CONFIG" > /tmp/dosboxx-stub.log 2>&1 &
DOSBOX_PID=$!
printf '%s\n' "$DOSBOX_PID" > "$PID_FILE"
cleanup() {
    kill "$DOSBOX_PID" 2>/dev/null || true
    if [ "$(cat "$PID_FILE" 2>/dev/null)" = "$DOSBOX_PID" ]; then
        rm -f "$PID_FILE"
    fi
    rm -f "$ENTRY_FILE"
    rm -f "$CONFIG"
}
trap cleanup EXIT

# Wait until the target itself reaches its entry trap. The TCP port
# opens before DOS autoexec completes, so port readiness alone is too early.
for i in $(seq 1 120); do
    if [ -f "$ENTRY_FILE" ]; then
        break
    fi
    sleep 0.25
done

if [ ! -f "$ENTRY_FILE" ]; then
    echo "Error: $TARGET did not reach its entry trap" >&2
    exit 1
fi

echo "__READY__"
wait $DOSBOX_PID
