"""``build.sh``: the project's own build, which needs nothing but its tree.

:func:`lib.aztec.project.project_files` writes it next to the ``makefile``.  It
reads that makefile and the ``.lnk`` files at run time, so it builds whatever
they say today: edited flags, a ``.c`` that replaced a ``.s``, a reordered
``.lnk``.  It knows nothing of the disassembler or the sidecar: copy the tree
anywhere and run it; the first run downloads the one ``dos_compilers`` folder
the sidecar names into the tree's own ``dos_compilers/`` the way ``make init``
does (a GitHub tree listing, then each file over HTTPS, checked against its
size and git blob hash).  Unlike ``make link`` it applies no byte patches; the
binaries are exactly what the sources link to.  Like ``make build`` it fills
``build_out/`` with the game's other files (data, pictures, drivers it does not
build) from the app directory, so a deleted ``build_out`` comes back runnable.

``run.sh`` (:func:`run_script`) beside it launches the game in ``build_out/``
under DOSBox-X, as ``make run`` does.  Both start with a ``#!`` line, so the
build makes them executable (:func:`lib.autogen.sync`).
"""

from collections import namedtuple

Compiler = namedtuple('Compiler', 'repo ref folder')


def script(compiler, game=''):
    """``build.sh`` for the :data:`Compiler` it downloads and runs.  *game* is
    the app directory, relative to the tree, it copies the game's files from."""
    return (SCRIPT.replace('@REPO@', compiler.repo).replace('@REF@', compiler.ref)
            .replace('@FOLDER@', compiler.folder).replace('@GAME@', game))


def run_script(exe, folder):
    """``run.sh``: launch *exe* (the game's main program, e.g. ``DS.EXE``) from
    ``build_out/`` under DOSBox-X with the flags ``make run`` uses.  The game
    sits at ``C:\\FOLDER``, where its installer put it: the game's data names
    that path (``SCENARIO.HDR``, the saves), so it is a link to ``build_out``."""
    return RUN_SCRIPT.replace('@EXE@', exe).replace('@FOLDER@', folder)


RUN_SCRIPT = r'''#!/usr/bin/env bash
# Play the game build.sh made: run build_out/@EXE@ under DOSBox-X.
#
#   ./run.sh [argument ...]       the arguments go to @EXE@
#
# The game expects to be installed in C:\@FOLDER@ (its data and saves name that
# path), so C: is .cache/run/C, whose @FOLDER@ is a link to build_out/: what the
# game writes there, saves included, lands in build_out/.  Run ./build.sh first
# if build_out/@EXE@ is missing.
#
# Environment:
#   DOSBOX   the DOSBox-X to run (default dosbox-x)

set -u

here=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
DOSBOX=${DOSBOX:-dosbox-x}
EXE='@EXE@'
FOLDER='@FOLDER@'
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
'''


SCRIPT = r'''#!/usr/bin/env bash
# Play the game build.sh made: run build_out/@EXE@ under DOSBox-X.
#
#   ./run.sh [argument ...]       the arguments go to @EXE@
#
# build_out/ is mounted as C:, so saves land there.  Run ./build.sh first if
# build_out/@EXE@ is missing.
#
# Environment:
#   DOSBOX   the DOSBox-X to run (default dosbox-x)

set -u

here=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
DOSBOX=${DOSBOX:-dosbox-x}
EXE='@EXE@'
game=$here/build_out

die() { echo "run.sh: $*" >&2; exit 1; }

[[ -f $game/$EXE ]] || die "no build_out/$EXE: run ./build.sh first"
command -v "$DOSBOX" >/dev/null || die "no $DOSBOX on PATH (set DOSBOX)"

exec "$DOSBOX" -fastlaunch -nomenu -nopromptfolder \
    -set 'dosbox quit warning=false' \
    -set 'cpu cycles=max' -set 'cpu turbo=false' \
    -c '@echo off' -c "mount c \"$game\"" -c 'c:' -c "$EXE${*:+ $*}" -c 'exit'
'''


SCRIPT = r'''#!/usr/bin/env bash
# Build every binary of this tree with Manx Aztec C86 under DOSBox-X.
#
#   ./build.sh [binary ...]      e.g. ./build.sh vmnpc   (default: all)
#
# It reads only `makefile` and the `.lnk` files beside it:
#   - the .SUFFIXES order picks each module's source (MODULE.s, else MODULE.c);
#   - the .s.o / .c.o rules are the commands, with $(CFLAGS)/$(AFLAGS) taken
#     from the object's own `X.o: CFLAGS = ...` line, else its binary's
#     `X.exe: CFLAGS = ...`, else the makefile's;
#   - INCLUDE is the header directory cc and as search;
#   - each binary's `ln` line links it, an overlay against its root's .rsm.
# DOS sees only 8.3 names, so each binary is built in its own work directory
# where every module gets a short name (upper-cased, cut to 8 characters, a
# number on a clash) and the .lnk becomes a response file of those objects.
#
# The compiler is `@FOLDER@` from github.com/@REPO@
# (@REF@).  The first run downloads just that folder into dos_compilers/ next
# to this script, checking every file's size and git blob hash; later runs
# reuse it.  `./build.sh init` downloads (or re-checks) it and stops.
#
# Environment:
#   GITHUB_TOKEN  optional, for the GitHub API rate limit
#   DOSBOX   the DOSBox-X to run (default dosbox-x)
#   JOBS     DOSBox sessions at once (default: the number of CPUs)
#   TIMEOUT  seconds one session may take (default 600)
#   SHOW=1   show the DOSBox window instead of running headless
#   GAME     the original game's directory (default @GAME@, beside
#            this tree), whose files build_out/ gets
#
# Writes each binary into build_out/ under its rule's name (the game's own:
# DS.EXE, VBASE.OVR, VGA.DRV, ...), over the copy there.  A rule may rename
# what ln wrote (`ren VGA.COM VGA.DRV`: ln takes the format from the extension).  Each binary's DOS work directory, with every log, and
# the root's .rsm stay in .cache/build/<binary>.  Every other file of $GAME
# (data, pictures, ...) is copied into build_out/ first, as `make build` does,
# unless build_out/ already has it (so the game's saves there survive): delete
# build_out/ and the next run makes it a runnable game again.

set -u

here=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
cd "$here" || exit 1
REPO='@REPO@'
REF='@REF@'
FOLDER='@FOLDER@'
AZTEC=$here/dos_compilers/$FOLDER
DOSBOX=${DOSBOX:-dosbox-x}
JOBS=${JOBS:-$(nproc 2>/dev/null || echo 4)}
TIMEOUT=${TIMEOUT:-600}
WORK=$here/.cache/build
GAME=${GAME:-$here/@GAME@}

die() { echo "build.sh: $*" >&2; exit 1; }

# ---- the compiler (what `make init` does, for this one folder) -------------

# Body of $1 into file $2; GitHub API calls send the token if there is one.
fetch() {
    local auth=()
    if [[ $1 == https://api.github.com/* ]]; then
        auth=(-H 'Accept: application/vnd.github+json')
        [[ -n ${GITHUB_TOKEN:-${GH_TOKEN:-}} ]] &&
            auth+=(-H "Authorization: Bearer ${GITHUB_TOKEN:-$GH_TOKEN}")
    fi
    curl -fsSL --retry 3 --max-time 60 -A wiz7-build-sh "${auth[@]}" -o "$2" "$1"
}

# `sha size path` of every file in a tree listing, path last (it may hold
# spaces).  Pretty or compact JSON alike: one entry per line once split at its
# braces (the entries are flat objects; no path in the repo has a brace).
tree_blobs() {
    tr -d '\n' < "$1" | sed 's/[{}]/\n/g' | awk '
        function field(k,   v) {
            if (!match($0, "\"" k "\" *: *(\"([^\"\\\\]|\\\\.)*\"|[0-9]+)")) return ""
            v = substr($0, RSTART, RLENGTH)
            sub(/^"[a-z]+" *: */, "", v); sub(/^"/, "", v); sub(/"$/, "", v)
            gsub(/\\"/, "\"", v); gsub(/\\\\/, "\\", v)
            return v
        }
        field("type") == "blob" && field("mode") != "120000" {
            print field("sha"), field("size") + 0, field("path")
        }'
}

blob_sha() {   # git hash-object, without git
    { printf 'blob %d\0' "$(stat -c %s "$1")"; cat "$1"; } | sha1sum | cut -d' ' -f1
}

urlencode() {
    local s=$1 out='' c i
    for (( i = 0; i < ${#s}; i++ )); do
        c=${s:i:1}
        case $c in [A-Za-z0-9/._~-]) out+=$c ;; *) printf -v c '%%%02X' "'$c"; out+=$c ;; esac
    done
    printf '%s' "$out"
}

# One file: skip it if it is already right, else download, check, and move in.
get_blob() {
    local sha=$1 size=$2 rel=$3 path=$here/dos_compilers/$FOLDER/$3
    if [[ -f $path ]] && (( $(stat -c %s "$path") == size )) &&
            [[ $(blob_sha "$path") == "$sha" ]]; then
        return 0
    fi
    mkdir -p "$(dirname "$path")"
    fetch "https://raw.githubusercontent.com/$REPO/$REF/$(urlencode "$FOLDER/$rel")" \
        "$path.part" || { echo "  failed: $rel"; rm -f "$path.part"; return 1; }
    if (( $(stat -c %s "$path.part") != size )); then
        echo "  size $(stat -c %s "$path.part") != $size: $rel"
    elif [[ $(blob_sha "$path.part") != "$sha" ]]; then
        echo "  hash mismatch: $rel"
    else
        mv -f "$path.part" "$path"; return 0
    fi
    rm -f "$path.part"; return 1
}

download_compiler() {
    command -v curl >/dev/null || die "no curl on PATH (needed to download $FOLDER)"
    local tmp=$here/dos_compilers/.tree.$$ api=https://api.github.com/repos/$REPO/git/trees
    mkdir -p "$here/dos_compilers"
    echo "downloading $FOLDER from github.com/$REPO ($REF)"
    # The top of the repo names the folder's own tree; list just that one.
    fetch "$api/$REF" "$tmp.top" || die "cannot list github.com/$REPO ($REF)"
    local sub
    sub=$(tree_blobs <(sed 's/"type" *: *"tree"/"type":"blob"/g' "$tmp.top") |
          awk -v f="$FOLDER" '{ s = $1; $1 = $2 = ""; sub(/^  /, ""); if ($0 == f) print s }')
    [[ -n $sub ]] || { rm -f "$tmp.top"; die "no folder '$FOLDER' in github.com/$REPO"; }
    fetch "$api/$sub?recursive=1" "$tmp" || die "cannot list $FOLDER"
    grep -Eq '"truncated" *: *true' "$tmp" && die "the listing of $FOLDER is truncated"
    local blobs
    mapfile -t blobs < <(tree_blobs "$tmp")
    rm -f "$tmp" "$tmp.top"
    (( ${#blobs[@]} )) || die "no files in $FOLDER"
    local line errs=$here/dos_compilers/.errors.$$
    : > "$errs"
    for line in "${blobs[@]}"; do
        while (( $(jobs -rp | wc -l) >= 8 )); do wait -n; done
        get_blob "${line%% *}" "$(cut -d' ' -f2 <<< "$line")" \
            "$(cut -d' ' -f3- <<< "$line")" >> "$errs" 2>&1 &
    done
    wait
    if [[ -s $errs ]]; then
        echo "download FAILED:" >&2; cat "$errs" >&2; rm -f "$errs"
        die "re-run to retry"
    fi
    rm -f "$errs"
    printf '%s\n' "${blobs[@]}" > "$here/dos_compilers/$FOLDER.files"
    echo "downloaded ${#blobs[@]} files -> dos_compilers/$FOLDER"
}

# The download is complete once its file list is written (last, after every check).
if [[ ${1:-} == init ]]; then
    download_compiler; exit 0
fi
[[ -f $here/dos_compilers/$FOLDER.files && -f $AZTEC/BIN/CC.EXE ]] || download_compiler

[[ -f makefile ]] || die "no makefile in $here"
command -v "$DOSBOX" >/dev/null || die "no $DOSBOX on PATH (set DOSBOX)"

# ---- the makefile ----------------------------------------------------------

declare -A MACRO=() SCOPED=() RECIPE=() RULE_RECIPE=()
declare -A LN_RULE=() LN_OUTPUT=() LN_FLAGS=() LN_LNK=() LN_ROOT=()
SUFFIXES=(.o .s .c)
RULES=()
TARGETS=()

re_scoped='^([^[:space:]:=]+)[[:space:]]*:[[:space:]]*([A-Za-z_][A-Za-z0-9_]*)[[:space:]]*=[[:space:]]*(.*)$'
re_macro='^(export[[:space:]]+)?([A-Za-z_][A-Za-z0-9_]*)[[:space:]]*=[[:space:]]*(.*)$'
re_rule='^([^[:space:]:]+)[[:space:]]*:[[:space:]]*(.*)$'
current=
while IFS= read -r raw || [[ -n $raw ]]; do
    line=${raw%%#*}
    line=${line%"${line##*[![:space:]]}"}
    [[ -z $line ]] && continue
    if [[ $line == [[:space:]]* ]]; then
        [[ -n $current ]] || die "makefile: recipe without a target: $line"
        line=${line#"${line%%[![:space:]]*}"}
        RULE_RECIPE[$current]+=${RULE_RECIPE[$current]:+$'\n'}$line
    elif [[ $line =~ $re_scoped ]]; then
        SCOPED["${BASH_REMATCH[1]}|${BASH_REMATCH[2]}"]=${BASH_REMATCH[3]}
        current=
    elif [[ $line =~ $re_macro ]]; then
        MACRO[${BASH_REMATCH[2]}]=${BASH_REMATCH[3]}
        current=
    elif [[ $line =~ $re_rule ]]; then
        current=${BASH_REMATCH[1]}
        if [[ $current == .SUFFIXES ]]; then
            read -ra words <<< "${BASH_REMATCH[2]}"
            if (( ${#words[@]} )); then SUFFIXES+=("${words[@]}"); else SUFFIXES=(); fi
            current=
        else
            RULES+=("$current")
        fi
    else
        die "makefile: cannot read: $line"
    fi
done < makefile

for rule in "${RULES[@]}"; do
    recipe=${RULE_RECIPE[$rule]:-}
    [[ -z $recipe ]] && continue
    if [[ $rule =~ ^(\.[A-Za-z0-9_]+)\.o$ ]]; then
        RECIPE[${BASH_REMATCH[1]}]=$recipe
        continue
    fi
    # An ln line, and a `ren LN_OUTPUT RULE` line when ln writes another name.
    ln_line=${recipe%%$'\n'*} ren=
    [[ $recipe == *$'\n'* ]] && ren=${recipe#*$'\n'}
    read -ra words <<< "$ln_line"
    [[ ${words[0]} == ln ]] || die "makefile: $rule: expected an ln line: $ln_line"
    flags=() lnk= root= output=
    for (( i = 1; i < ${#words[@]}; i++ )); do
        case ${words[i]} in
            -o) output=${words[++i]} ;;
            -f) lnk=${words[++i]} ;;
            *.rsm) root=${words[i]%.rsm} ;;
            *) flags+=("${words[i]}") ;;
        esac
    done
    [[ -n $output && -n $lnk ]] || die "makefile: $rule: ln needs -o FILE and -f FILE: $ln_line"
    if [[ -n $ren ]]; then
        read -ra words <<< "$ren"
        [[ ${#words[@]} == 3 && ${words[0]} == ren && ${words[1]} == "$output" &&
           ${words[2]} == "$rule" ]] ||
            die "makefile: $rule: expected ren $output $rule, got: $ren"
    elif [[ $output != "$rule" ]]; then
        die "makefile: $rule: ln writes $output (rename it with ren $output $rule)"
    fi
    binary=$(basename "${lnk%.*}")
    LN_RULE[$binary]=$rule LN_OUTPUT[$binary]=$output LN_LNK[$binary]=$lnk
    LN_ROOT[$binary]=$root LN_FLAGS[$binary]="${flags[*]}"
    TARGETS+=("$binary")
done
(( ${#TARGETS[@]} )) || die "makefile: no ln rule"

SOURCES=()
for ext in "${SUFFIXES[@]}"; do
    [[ $ext != .o && -n ${RECIPE[$ext]:-} ]] && SOURCES+=("$ext")
done
INCLUDE_DIR=$here/${MACRO[INCLUDE]:-include}
[[ -d $INCLUDE_DIR ]] || die "no include directory $INCLUDE_DIR"

# The value of macro $1 for object $2 of the binary that writes $3.
macro() {
    local name=$1 obj=$2 output=$3
    if [[ -n ${SCOPED["$obj|$name"]+x} ]]; then echo "${SCOPED["$obj|$name"]}"
    elif [[ -n ${SCOPED["$output|$name"]+x} ]]; then echo "${SCOPED["$output|$name"]}"
    else echo "${MACRO[$name]:-}"
    fi
}

# Recipe $1 with its macros expanded: object $2 of output $3, $@ = $4, $< = $5.
expand() {
    local text=$1 obj=$2 output=$3 at=$4 lt=$5 done= ref
    local re='^([^$]*)\$(\(([A-Za-z_][A-Za-z0-9_]*)\)|([@<*]))(.*)$'
    while [[ $text =~ $re ]]; do
        done+=${BASH_REMATCH[1]}
        ref=${BASH_REMATCH[2]} text=${BASH_REMATCH[5]}
        case $ref in
            '@') done+=$at ;;
            '<') done+=$lt ;;
            '*') done+=${lt%.*} ;;
            *) done+=$(macro "${BASH_REMATCH[3]}" "$obj" "$output") ;;
        esac
    done
    read -ra words <<< "$done$text"
    echo "${words[*]}"
}

# ---- the game's other files ----------------------------------------------

# Every entry of $GAME but the binaries the makefile builds, into build_out/,
# unless it is there already.
copy_game() {
    if [[ ! -d $GAME ]]; then
        echo "build.sh: no game directory $GAME (set GAME): build_out/ gets only the binaries" >&2
        return 0
    fi
    local -A built=()
    local rule src name copied=0
    for rule in "${LN_RULE[@]}"; do built[${rule^^}]=1; done
    mkdir -p "$here/build_out" || die "cannot make build_out/"
    shopt -s dotglob nullglob
    for src in "$GAME"/*; do
        name=${src##*/}
        [[ -n ${built[${name^^}]:-} || -e $here/build_out/$name ]] && continue
        cp -pr "$src" "$here/build_out/$name" || die "cannot copy $src"
        copied=$(( copied + 1 ))
    done
    shopt -u dotglob nullglob
    (( copied )) && echo "copied $copied game file(s) from $GAME"
    return 0
}

# ---- 8.3 names -------------------------------------------------------------

declare -A RESERVED=([CON]=1 [PRN]=1 [AUX]=1 [NUL]=1 [CLOCK\$]=1 [BUILD]=1)
for n in 1 2 3 4 5 6 7 8 9; do RESERVED[COM$n]=1 RESERVED[LPT$n]=1; done

# A short stem for each argument, distinct among them, in order, into SHORT.
short_names() {
    local -A used=()
    local name stem cand n
    SHORT=()
    for name in "$@"; do
        stem=${name^^}
        stem=${stem//[^A-Z0-9_]/_}
        stem=${stem:0:8}
        [[ -n $stem ]] || stem=MODULE
        cand=$stem n=0
        while [[ -n ${used[$cand]:-} || -n ${RESERVED[$cand]:-} ]]; do
            n=$(( n + 1 ))
            cand=${stem:0:$(( 8 - ${#n} ))}$n
        done
        used[$cand]=1
        SHORT+=("$cand")
    done
}

# The DOS extension for a source suffix: as reads .ASM, cc .C.
dos_ext() { [[ $1 == .s ]] && echo ASM || { local e=${1#.}; echo "${e^^}"; }; }

# ---- one binary ------------------------------------------------------------

# Build binary $1 in its work directory; print its report; status 0 when its
# output was written with no compile or link error.
build_one() {
    local binary=$1
    local rule=${LN_RULE[$binary]} output=${LN_OUTPUT[$binary]}
    local lnk=${LN_LNK[$binary]} root=${LN_ROOT[$binary]}
    local work=$WORK/$binary report=() failed=0
    local dest=build_out/$rule
    rm -rf "$work"
    mkdir -p "$work"

    local listed=() paths=() exts=() stems=() missing=() name ext
    while IFS= read -r name || [[ -n $name ]]; do
        name=${name%%#*}
        name=${name//[[:space:]]/}
        [[ -z $name ]] && continue
        listed+=("$name")
    done < "$lnk"
    for name in "${listed[@]}"; do
        for ext in "${SOURCES[@]}" ''; do
            [[ -z $ext ]] && { missing+=("$name"); break; }
            if [[ -f $name$ext ]]; then
                paths+=("$name") exts+=("$ext") stems+=("${name##*/}")
                break
            fi
        done
    done
    short_names "${stems[@]}"

    local lnk_dos bat=() i short src
    local shorts=("${SHORT[@]}")
    lnk_dos=$(basename "${lnk%.*}"); lnk_dos=${lnk_dos^^}; lnk_dos=${lnk_dos:0:8}.LNK
    for i in "${!paths[@]}"; do
        short=${shorts[i]}
        src=$short.$(dos_ext "${exts[i]}")
        cp "${paths[i]}${exts[i]}" "$work/$src"
        bat+=("$(expand "${RECIPE[${exts[i]}]}" "${paths[i]}.o" "$rule" \
                 "$short.O" "$src") > $short.CC")
        bat+=("if exist $short.O echo $short.O>> $lnk_dos")
    done
    local ln_line="ln ${LN_FLAGS[$binary]} -o ${output^^} -f $lnk_dos"
    if [[ -n $root ]]; then
        if [[ ! -f $WORK/$root.rsm ]]; then
            echo "$binary: FAILED: $root.rsm was not built"
            return 1
        fi
        cp "$WORK/$root.rsm" "$work/${root^^}.RSM"
        ln_line+=" ${root^^}.RSM"
    fi
    bat+=("$ln_line > LINK.LOG")
    [[ $rule == "$output" ]] || bat+=("ren ${output^^} ${rule^^}")
    printf '%s\r\n' "${bat[@]}" > "$work/BUILD.BAT"

    cat > "$work/dosbox.conf" <<'CONF'
[dosbox]
machine=svga_s3
memsize=128
quit warning=false

[cpu]
cycles=max
turbo=true

[sblaster]
sbtype=none

[midi]
mpu401=none

[autoexec]
CONF
    local argv=("$DOSBOX" -conf "$work/dosbox.conf" -nopromptfolder
                -defaultdir "$work" -fastlaunch -exit)
    [[ ${SHOW:-0} == 1 ]] || argv+=(-nogui)
    argv+=(-c "mount c \"$AZTEC\"" -c "mount d \"$work\""
           -c "mount e \"$INCLUDE_DIR\"" -c 'set PATH=C:\BIN'
           -c 'set INCLUDE=E:\' -c 'd:' -c 'BUILD.BAT' -c 'exit')
    if [[ ${SHOW:-0} == 1 ]]; then
        HOME=$work SDL_AUDIODRIVER=dummy timeout "$TIMEOUT" "${argv[@]}" \
            > "$work/dosbox.out" 2>&1
    else
        HOME=$work SDL_AUDIODRIVER=dummy SDL_VIDEODRIVER=dummy \
            timeout "$TIMEOUT" "${argv[@]}" > "$work/dosbox.out" 2>&1
    fi
    (( $? == 124 )) && report+=("  DOSBox timed out after ${TIMEOUT}s")

    local err='^([^ ]+\.C:[0-9]+: ERROR [0-9]+:|ERROR:[^ ]+\.ASM:[0-9]+:)'
    for i in "${!paths[@]}"; do
        short=${shorts[i]}
        if [[ ! -f $work/$short.O ]] || grep -Eqi "$err" "$work/$short.CC" 2>/dev/null; then
            failed=1
            report+=("  ${paths[i]}${exts[i]} ($short): did not build")
            while IFS= read -r line; do report+=("    $line"); done \
                < <(grep -Ei "$err|error" "$work/$short.CC" 2>/dev/null | head -20)
        fi
    done
    for name in "${missing[@]}"; do
        failed=1
        report+=("  $name: no ${SOURCES[*]} source")
    done
    local image=$work/${rule^^}
    if grep -Eqi 'Undefined symbol|multiply defined|error' "$work/LINK.LOG" 2>/dev/null; then
        failed=1
        while IFS= read -r line; do report+=("  ln: $line"); done \
            < <(grep -Evi '^Aztec C Linker|^(Base|Code):' "$work/LINK.LOG" | tr -d '\r')
    fi
    if [[ -f $image ]]; then
        mkdir -p "$(dirname "$here/$dest")" && cp "$image" "$here/$dest"
        [[ -f $work/${binary^^}.RSM ]] && cp "$work/${binary^^}.RSM" "$WORK/$binary.rsm"
    else
        failed=1
        report+=("  ln wrote no $rule")
    fi
    if (( failed )); then
        echo "$binary: FAILED (${#paths[@]} sources)"
        printf '%s\n' "${report[@]}"
        return 1
    fi
    echo "$binary: $dest, $(wc -c < "$here/$dest") bytes, ${#paths[@]} sources"
}

# ---- all of them -----------------------------------------------------------

wanted=("$@")
(( ${#wanted[@]} )) || wanted=("${TARGETS[@]}")
for binary in "${wanted[@]}"; do
    [[ -n ${LN_OUTPUT[$binary]:-} ]] ||
        die "makefile has no binary $binary (has: ${TARGETS[*]})"
done
# Roots link first: the overlays need their .rsm.
roots=()
for binary in "${wanted[@]}"; do
    root=${LN_ROOT[$binary]}
    [[ -n $root && " ${roots[*]} " != *" $root "* ]] && roots+=("$root")
done

copy_game
mkdir -p "$WORK"
rm -f "$WORK"/*.status
status=0
for binary in "${roots[@]}"; do
    build_one "$binary" || status=1
done
for binary in "${wanted[@]}"; do
    [[ " ${roots[*]} " == *" $binary "* ]] && continue
    while (( $(jobs -rp | wc -l) >= JOBS )); do wait -n; done
    ( build_one "$binary" > "$WORK/$binary.report" 2>&1
      echo $? > "$WORK/$binary.status" ) &
done
wait
for binary in "${wanted[@]}"; do
    [[ -f $WORK/$binary.status ]] || continue
    cat "$WORK/$binary.report"
    [[ $(cat "$WORK/$binary.status") == 0 ]] || status=1
    rm -f "$WORK/$binary.status" "$WORK/$binary.report"
done
(( status == 0 )) && echo "all built" || echo "some binaries failed" >&2
exit $status
'''
