#!/usr/bin/env bash
# auto-generated
# Play the game build.sh made: run build_out/DS.EXE under DOSBox-X.
#
#   ./run.sh [argument ...]       the arguments go to DS.EXE
#
# The game expects to be installed in C:\DSAVANT (its data and saves name that
# path), so C: is .cache/run/C, whose DSAVANT is a link to build_out/: what the
# game writes there, saves included, lands in build_out/.  Run ./build.sh first
# if build_out/DS.EXE is missing.
#
# Environment:
#   DOSBOX   the DOSBox-X to run (default dosbox-x)

set -u

here=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
DOSBOX=${DOSBOX:-dosbox-x}
EXE='DS.EXE'
FOLDER='DSAVANT'
drive=$here/.cache/run/C

die() { echo "run.sh: $*" >&2; exit 1; }

[[ -f $here/build_out/$EXE ]] || die "no build_out/$EXE: run ./build.sh first"
command -v "$DOSBOX" >/dev/null || die "no $DOSBOX on PATH (set DOSBOX)"

mkdir -p "$drive" || die "cannot make $drive"
[[ -e $drive/$FOLDER && ! -L $drive/$FOLDER ]] &&
    die "$drive/$FOLDER is in the way (not a link to build_out/)"
ln -sfn ../../../build_out "$drive/$FOLDER" || die "cannot link $drive/$FOLDER"

exec "$DOSBOX" -fastlaunch -nomenu -nopromptfolder \
    -set 'dosbox quit warning=false' \
    -set 'cpu cycles=max' -set 'cpu turbo=false' \
    -c '@echo off' -c "mount c \"$drive\"" -c 'c:' -c "cd \\$FOLDER" \
    -c "$EXE${*:+ $*}" -c 'exit'
