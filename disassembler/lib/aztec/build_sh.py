"""``build.sh``: the project's own build, which needs nothing but its tree.

:func:`lib.aztec.project.project_files` writes it next to the ``makefile``, but
it reads neither that nor the ``.lnk`` files: what it builds is a block of
plain bash at its top (:func:`config`: the binaries, their ``ln`` flags and
roots, the C flags), and each binary is every ``.s``/``.c`` in its own
directory plus what it calls from a library of the shared ones, in no
particular order.  So a new ``.c``, a ``.c`` that replaced a ``.s``, or a
deleted ``.asm`` needs no other edit; it gives up the byte-exact layout ``make
link`` keeps.  It knows nothing of the disassembler or the sidecar: copy the
tree anywhere and run it; the first run downloads the one ``dos_compilers`` folder
the sidecar names into the tree's own ``dos_compilers/`` the way ``make init``
does (a GitHub tree listing, then each file over HTTPS, checked against its
size and git blob hash).  Unlike ``make link`` it applies no byte patches; the
binaries are exactly what the sources link to.  Like ``make build`` it fills
``build_out_new/`` with the game's other files (data, pictures, drivers it does not
build) from the app directory, so a deleted ``build_out_new`` comes back runnable.

``run.sh`` (:func:`run_script`) beside it launches the game in ``build_out_new/``
under DOSBox-X, as ``make run`` does.  Both start with a ``#!`` line, so the
build makes them executable (:func:`lib.autogen.sync`).
"""

import textwrap
from collections import namedtuple

Compiler = namedtuple('Compiler', 'repo ref folder')
#: One binary of ``build.sh``: its name (its source directory), the file it
#: makes, the name ``ln`` writes (renamed to *file* when they differ), the
#: binary whose ``.rsm`` it links against (``None``), its ``ln`` flags, a
#: description (``None``), the module that must open it (``None``), and the
#: startup modules nothing calls, linked in by force.
Binary = namedtuple('Binary', 'name file ln_output root ln_flags desc first entry')
#: The modules Aztec starts a program (``$begin``) and an overlay (``$ovbgn``)
#: at: no symbol names them, so the library would never give them.
ENTRY_STEMS = ('aztec_begin', 'aztec_ovbgn')


def _q(text):
    """*text* as one bash word."""
    return "'" + text.replace("'", "'\\''") + "'"


def config(binaries, cflags, aflags, include, libdirs, binary_cflags=None,
           object_cflags=None):
    """The bash block at the top of ``build.sh``: *binaries* (:data:`Binary`,
    roots first), the default C and assembler flags (lists), the include and
    library directories, and ``{binary: flags}`` / ``{module: flags}`` of the
    C flags other than the default."""
    lines = [f'CFLAGS={_q(" ".join(cflags))}', f'AFLAGS={_q(" ".join(aflags))}',
             f'INCLUDE={_q(include)}',
             '# Every source under these goes into SHARED.LIB.',
             'LIBDIRS=(' + ' '.join(_q(d) for d in libdirs) + ')',
             '# NAME FILE LN_WRITES ROOT [LN_FLAGS ...], ROOT - for none.  NAME/ holds',
             '# its sources.',
             'BINARIES=(']
    for b in binaries:
        for line in textwrap.wrap(b.desc or '', 74):
            lines.append(f'    # {line}')
        words = [b.name, b.file, b.ln_output, b.root or '-', *b.ln_flags]
        lines.append(f'    {_q(" ".join(words))}')
    lines.append(')')

    def table(name, comment, items):
        lines.extend(comment)
        if not items:
            lines.append(f'declare -A {name}=()')
            return
        lines.append(f'declare -A {name}=(')
        lines.extend(f'    [{key}]={_q(value)}' for key, value in items)
        lines.append(')')

    table('FIRST', ['# The module that must open a binary.'],
          [(b.name, b.first) for b in binaries if b.first])
    table('ENTRY', ['# Startup modules nothing calls, linked into a binary by force.'],
          [(b.name, ' '.join(b.entry)) for b in binaries if b.entry])
    table('BIN_CFLAGS', ["# C flags other than CFLAGS: a binary's default, and one module's",
                         '# (OBJ_CFLAGS beats BIN_CFLAGS).'],
          [(name, ' '.join(value)) for name, value in (binary_cflags or {}).items()])
    table('OBJ_CFLAGS', [],
          [(module, ' '.join(value)) for module, value in (object_cflags or {}).items()])
    return '\n'.join(lines)


def script(compiler, game='', config_text=''):
    """``build.sh`` for the :data:`Compiler` it downloads and runs.  *game* is
    the app directory, relative to the tree, it copies the game's files from;
    *config_text* (:func:`config`) what it builds."""
    return (SCRIPT.replace('@REPO@', compiler.repo).replace('@REF@', compiler.ref)
            .replace('@FOLDER@', compiler.folder).replace('@GAME@', game)
            .replace('@CONFIG@', config_text))


def run_script(exe, folder):
    """``run.sh``: launch *exe* (the game's main program, e.g. ``DS.EXE``) from
    ``build_out_new/`` under DOSBox-X with the flags ``make run`` uses.  The game
    sits at ``C:\\FOLDER``, where its installer put it: the game's data names
    that path (``SCENARIO.HDR``, the saves), so it is a link to ``build_out_new``."""
    return RUN_SCRIPT.replace('@EXE@', exe).replace('@FOLDER@', folder)


RUN_SCRIPT = r'''#!/usr/bin/env bash
# Play the game build.sh made: run build_out_new/@EXE@ under DOSBox-X.
#
#   ./run.sh [argument ...]       the arguments go to @EXE@
#
# The game expects to be installed in C:\@FOLDER@ (its data and saves name that
# path), so C: is .cache/run/C, whose @FOLDER@ is a link to build_out_new/: what the
# game writes there, saves included, lands in build_out_new/.  Run ./build.sh first
# if build_out_new/@EXE@ is missing.
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

[[ -f $here/build_out_new/$EXE ]] || die "no build_out_new/$EXE: run ./build.sh first"
command -v "$DOSBOX" >/dev/null || die "no $DOSBOX on PATH (set DOSBOX)"

mkdir -p "$drive" || die "cannot make $drive"
[[ -e $drive/$FOLDER && ! -L $drive/$FOLDER ]] &&
    die "$drive/$FOLDER is in the way (not a link to build_out_new/)"
ln -sfn ../../../build_out_new "$drive/$FOLDER" || die "cannot link $drive/$FOLDER"

exec "$DOSBOX" -fastlaunch -nomenu -nopromptfolder \
    -set 'dosbox quit warning=false' \
    -set 'cpu cycles=max' -set 'cpu turbo=false' \
    -c '@echo off' -c "mount c \"$drive\"" -c 'c:' -c "cd \\$FOLDER" \
    -c "$EXE${*:+ $*}" -c 'exit'
'''


SCRIPT = r'''#!/usr/bin/env bash
# Play the game build.sh made: run build_out_new/@EXE@ under DOSBox-X.
#
#   ./run.sh [argument ...]       the arguments go to @EXE@
#
# build_out_new/ is mounted as C:, so saves land there.  Run ./build.sh first if
# build_out_new/@EXE@ is missing.
#
# Environment:
#   DOSBOX   the DOSBox-X to run (default dosbox-x)

set -u

here=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
DOSBOX=${DOSBOX:-dosbox-x}
EXE='@EXE@'
game=$here/build_out_new

die() { echo "run.sh: $*" >&2; exit 1; }

[[ -f $game/$EXE ]] || die "no build_out_new/$EXE: run ./build.sh first"
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
# It needs nothing but this script and the sources beside it (no makefile, no
# .lnk files), and links in no particular order:
#   - binary NAME (a line of BINARIES below) is every NAME/**/MODULE.s and
#     NAME/**/MODULE.c, a .s beating a .c of the same name (.asm and other
#     files are not sources);
#   - every source under LIBDIRS goes into one library, SHARED.LIB, which ln
#     searches after the binary's objects and its root's .rsm, so a binary
#     gets just the shared modules it calls and an overlay none its root has;
#   - ENTRY[NAME] is a startup module nothing calls (it would never come out
#     of the library), linked in by force; FIRST[NAME] a module that must open
#     the binary (a driver's dispatch table, which DS calls at fixed offsets);
#   - NAME/data/globals, which declares all of the binary's uninitialized C
#     globals, comes right after FIRST: ln lays commons out in the order it
#     first meets their names, and the code relies on that layout (a list
#     shifts rows from one array into the next);
#   - cc gets OBJ_CFLAGS[MODULE], else BIN_CFLAGS[NAME], else CFLAGS; as gets
#     AFLAGS; both search INCLUDE.  A library is built per distinct binary
#     default, so a shared module gets the flags it would in that binary.
# DOS sees only 8.3 names, so each binary (and each library) is built in its
# own work directory where every module gets a short name (upper-cased, cut
# to 8 characters, a number on a clash) and ln reads a response file of them.
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
#   LN_EXTRA more ln flags for every link (make layout passes -t, so each
#            work directory keeps ln's symbol table, BINARY.SYM)
#   GAME     the original game's directory (default @GAME@, beside
#            this tree), whose files build_out_new/ gets
#
# Writes each binary into build_out_new/ under its own file name (the game's:
# DS.EXE, VBASE.OVR, VGA.DRV, ...), over the copy there.  ln takes the format
# from the extension, so a binary may be linked under another name and renamed
# (VGA.COM -> VGA.DRV).  Each work directory, with every log, and the root's
# .rsm stay in .cache/build/.  Every other file of $GAME (data, pictures, ...)
# is copied into build_out_new/ first, unless build_out_new/ already has it (so the
# game's saves there survive): delete build_out_new/ and the next run makes it a
# runnable game again.

# ---- what this tree builds --------------------------------------------------

@CONFIG@

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
LN_EXTRA=${LN_EXTRA:-}
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


# ---- the game's other files ----------------------------------------------

# Every entry of $GAME but the binaries this script builds, into build_out_new/,
# unless it is there already.
copy_game() {
    if [[ ! -d $GAME ]]; then
        echo "build.sh: no game directory $GAME (set GAME): build_out_new/ gets only the binaries" >&2
        return 0
    fi
    local -A built=()
    local rule src name copied=0
    for rule in "${LN_RULE[@]}"; do built[${rule^^}]=1; done
    mkdir -p "$here/build_out_new" || die "cannot make build_out_new/"
    shopt -s dotglob nullglob
    for src in "$GAME"/*; do
        name=${src##*/}
        [[ -n ${built[${name^^}]:-} || -e $here/build_out_new/$name ]] && continue
        cp -pr "$src" "$here/build_out_new/$name" || die "cannot copy $src"
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


command -v "$DOSBOX" >/dev/null || die "no $DOSBOX on PATH (set DOSBOX)"

# ---- the binaries ------------------------------------------------------------

declare -A LN_RULE=() LN_OUTPUT=() LN_FLAGS=() LN_ROOT=()
TARGETS=()
for line in "${BINARIES[@]}"; do
    read -ra words <<< "$line"
    (( ${#words[@]} >= 4 )) || die "BINARIES: need NAME FILE LN_WRITES ROOT [LN_FLAGS]: $line"
    binary=${words[0]}
    LN_RULE[$binary]=${words[1]} LN_OUTPUT[$binary]=${words[2]}
    LN_ROOT[$binary]=${words[3]#-} LN_FLAGS[$binary]="${words[*]:4}"
    TARGETS+=("$binary")
done
(( ${#TARGETS[@]} )) || die "BINARIES is empty"
for binary in "${TARGETS[@]}"; do
    root=${LN_ROOT[$binary]}
    [[ -z $root || -n ${LN_RULE[$root]:-} ]] || die "BINARIES: $binary: no root $root"
done
INCLUDE_DIR=$here/$INCLUDE
[[ -d $INCLUDE_DIR ]] || die "no include directory $INCLUDE_DIR"

# MODULE<TAB>.s or .c for every source under the directories "$@", sorted: a
# MODULE.s beats a MODULE.c.
module_sources() {
    local -A seen=()
    local f m
    while IFS= read -r f; do
        m=${f%.*}
        [[ -n ${seen[$m]:-} ]] && continue
        seen[$m]=1
        if [[ -f $m.s ]]; then printf '%s\t.s\n' "$m"; else printf '%s\t.c\n' "$m"; fi
    done < <(find "$@" -type f \( -name '*.s' -o -name '*.c' \) | LC_ALL=C sort)
}

# The source suffix of MODULE, or nothing when it has none.
module_ext() {
    if [[ -f $1.s ]]; then echo .s; elif [[ -f $1.c ]]; then echo .c; fi
}

# The C flags a binary gives the modules with no flags of their own.
binary_cflags() { printf '%s\n' "${BIN_CFLAGS[$1]-$CFLAGS}"; }

# The command line that compiles module $1 (suffix $2) as SHORT $3, with $4 the
# C flags of its binary.
compile_line() {
    local module=$1 ext=$2 short=$3
    if [[ $ext == .s ]]; then
        echo "as $AFLAGS -o $short.O $short.ASM"
    else
        echo "cc -B ${OBJ_CFLAGS[$module]-$4} -o $short.O $short.C"
    fi
}

# ---- DOSBox ------------------------------------------------------------------

# Run BUILD.BAT in work directory $1 under DOSBox; status 124 on a timeout.
run_dos() {
    local work=$1
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
}

# Copy modules into work directory $1 under their short names and write the
# BUILD.BAT lines that compile them into BAT: the modules, their suffixes and
# short names are the arrays named $2, $3 and $4, $5 the binary's C flags.
# Each object that comes out is appended to response file $6.
stage_modules() {
    local work=$1 cflags=$5 rsp=$6 i src
    local -n _paths=$2 _exts=$3 _shorts=$4
    for i in "${!_paths[@]}"; do
        src=${_shorts[i]}.$(dos_ext "${_exts[i]}")
        cp "${_paths[i]}${_exts[i]}" "$work/$src"
        bat+=("$(compile_line "${_paths[i]}" "${_exts[i]}" "${_shorts[i]}" "$cflags") > ${_shorts[i]}.CC")
        bat+=("if exist ${_shorts[i]}.O echo ${_shorts[i]}.O>> $rsp")
    done
}

# Append to REPORT a line per module (arrays named $2, $3, $4) of work
# directory $1 that did not compile, with its errors; status 1 if any.
check_modules() {
    local work=$1 i short line failed=0
    local -n _paths=$2 _exts=$3 _shorts=$4
    local err='^([^ ]+\.C:[0-9]+: ERROR [0-9]+:|ERROR:[^ ]+\.ASM:[0-9]+:)'
    for i in "${!_paths[@]}"; do
        short=${_shorts[i]}
        if [[ ! -f $work/$short.O ]] || grep -Eqi "$err" "$work/$short.CC" 2>/dev/null; then
            failed=1
            report+=("  ${_paths[i]}${_exts[i]} ($short): did not build")
            while IFS= read -r line; do report+=("    $line"); done \
                < <(grep -Ei "$err|error" "$work/$short.CC" 2>/dev/null | tr -d '\r' | head -20)
        fi
    done
    return $failed
}

# ---- the shared library ------------------------------------------------------

# Build SHARED.LIB of every LIBDIRS module into $WORK/$1, compiled with C flags
# $2 (a binary's default): JOBS sessions compile, one more orders the objects
# (ord, so that ln's one pass over the library finds every member) and
# archives them.  Print its report; status 0 when every module compiled.
build_library() {
    local lib=$1 cflags=$2 dir=$WORK/$1 report=() failed=0
    rm -rf "$dir"
    mkdir -p "$dir/lib"
    local paths=() exts=() stems=() module ext dirs=()
    for module in "${LIBDIRS[@]}"; do [[ -d $module ]] && dirs+=("$module"); done
    (( ${#dirs[@]} )) || { echo "$lib: no ${LIBDIRS[*]}"; return 0; }
    while IFS=$'\t' read -r module ext; do
        paths+=("$module") exts+=("$ext") stems+=("${module##*/}")
    done < <(module_sources "${dirs[@]}")
    short_names "${stems[@]}"
    local shorts=("${SHORT[@]}") n=${#paths[@]} parts=$JOBS
    (( parts > n )) && parts=$n
    (( parts < 1 )) && parts=1
    local p i
    for (( p = 0; p < parts; p++ )); do
        local part=$dir/part$p bat=() ppaths=() pexts=() pshorts=()
        mkdir -p "$part"
        for (( i = p; i < n; i += parts )); do
            ppaths+=("${paths[i]}") pexts+=("${exts[i]}") pshorts+=("${shorts[i]}")
        done
        stage_modules "$part" ppaths pexts pshorts "$cflags" OBJS.TXT
        printf '%s\r\n' "${bat[@]}" > "$part/BUILD.BAT"
        while (( $(jobs -rp | wc -l) >= JOBS )); do wait -n; done
        run_dos "$part" &
    done
    wait
    for (( i = 0; i < n; i++ )); do
        p=$dir/part$(( i % parts ))
        [[ -f $p/${shorts[i]}.O ]] && cp "$p/${shorts[i]}.O" "$dir/lib/"
        cp "$p/${shorts[i]}.CC" "$dir/lib/" 2>/dev/null
    done
    check_modules "$dir/lib" paths exts shorts || failed=1
    ( cd "$dir/lib" && ls | grep '\.O$' | LC_ALL=C sort ) |
        sed 's/$/\r/' > "$dir/lib/OBJS.TXT"
    printf '%s\r\n' 'ord OBJS.TXT ORD.TXT > ORD.LOG' \
        'lb SHARED.LIB -f ORD.TXT > LB.LOG' > "$dir/lib/BUILD.BAT"
    run_dos "$dir/lib"
    if [[ ! -s $dir/lib/SHARED.LIB ]]; then
        failed=1
        report+=("  lb wrote no SHARED.LIB")
        while IFS= read -r line; do report+=("    $line"); done \
            < <(cat "$dir/lib/ORD.LOG" "$dir/lib/LB.LOG" 2>/dev/null | tr -d '\r')
    fi
    if (( failed )); then
        echo "shared ($cflags): FAILED ($n sources)"
        printf '%s\n' "${report[@]}"
        return 1
    fi
    echo "shared ($cflags): $n sources"
}

# The library work directory of binary $1 (by its default C flags).
declare -A LIBRARY=()
library_of() { echo "${LIBRARY[$(binary_cflags "$1")]}"; }

# ---- one binary --------------------------------------------------------------

# Build binary $1 in its work directory; print its report; status 0 when its
# output was written with no compile or link error.
build_one() {
    local binary=$1
    local rule=${LN_RULE[$binary]} output=${LN_OUTPUT[$binary]}
    local root=${LN_ROOT[$binary]} cflags
    cflags=$(binary_cflags "$binary")
    local work=$WORK/$binary report=() failed=0 lib
    lib=$WORK/$(library_of "$binary")/lib/SHARED.LIB
    local dest=build_out_new/$rule
    rm -rf "$work"
    mkdir -p "$work"
    [[ -d $binary ]] || { echo "$binary: FAILED: no directory $binary/"; return 1; }

    # FIRST, then NAME/data/globals (before any module that names a common
    # it declares), then the binary's other modules, then ENTRY.
    local paths=() exts=() stems=() module ext first=${FIRST[$binary]:-} entry
    local globals=$binary/data/globals
    if [[ -n $first ]]; then
        ext=$(module_ext "$first")
        [[ -n $ext ]] || { echo "$binary: FAILED: FIRST $first has no .s or .c"; return 1; }
        paths+=("$first") exts+=("$ext")
    fi
    ext=$(module_ext "$globals")
    [[ -n $ext && $globals != "$first" ]] && paths+=("$globals") exts+=("$ext")
    while IFS=$'\t' read -r module ext; do
        [[ $module == "$first" || $module == "$globals" ]] && continue
        paths+=("$module") exts+=("$ext")
    done < <(module_sources "$binary")
    for entry in ${ENTRY[$binary]:-}; do
        [[ $entry == "$first" || " ${paths[*]} " == *" $entry "* ]] && continue
        ext=$(module_ext "$entry")
        [[ -n $ext ]] || { echo "$binary: FAILED: ENTRY $entry has no .s or .c"; return 1; }
        paths+=("$entry") exts+=("$ext")
    done
    for module in "${paths[@]}"; do stems+=("${module##*/}"); done
    short_names "${stems[@]}"

    local rsp bat=() shorts=("${SHORT[@]}")
    rsp=${binary^^}; rsp=${rsp:0:8}.LNK
    stage_modules "$work" paths exts shorts "$cflags" "$rsp"
    local ln_line="ln $LN_EXTRA ${LN_FLAGS[$binary]} -o ${output^^} -f $rsp"
    if [[ -n $root ]]; then
        if [[ ! -f $WORK/$root.rsm ]]; then
            echo "$binary: FAILED: $root.rsm was not built"
            return 1
        fi
        cp "$WORK/$root.rsm" "$work/${root^^}.RSM"
        ln_line+=" ${root^^}.RSM"
    fi
    # Twice: ord sorts the library for one pass, the second catches a cycle.
    if [[ -f $lib ]]; then
        cp "$lib" "$work/SHARED.LIB"
        ln_line+=" SHARED.LIB SHARED.LIB"
    fi
    bat+=("$ln_line > LINK.LOG")
    [[ $rule == "$output" ]] || bat+=("ren ${output^^} ${rule^^}")
    printf '%s\r\n' "${bat[@]}" > "$work/BUILD.BAT"

    run_dos "$work"
    (( $? == 124 )) && report+=("  DOSBox timed out after ${TIMEOUT}s")

    check_modules "$work" paths exts shorts || failed=1
    local image=$work/${rule^^} line
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

# ---- all of them -------------------------------------------------------------

wanted=("$@")
(( ${#wanted[@]} )) || wanted=("${TARGETS[@]}")
for binary in "${wanted[@]}"; do
    [[ -n ${LN_RULE[$binary]:-} ]] ||
        die "no binary $binary (has: ${TARGETS[*]})"
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
# One library per default C flags among the binaries built.
for binary in "${roots[@]}" "${wanted[@]}"; do
    cflags=$(binary_cflags "$binary")
    [[ -n ${LIBRARY[$cflags]+x} ]] && continue
    LIBRARY[$cflags]=shared${#LIBRARY[@]}
    build_library "${LIBRARY[$cflags]}" "$cflags" || status=1
done
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
