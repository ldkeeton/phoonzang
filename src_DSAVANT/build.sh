#!/usr/bin/env bash
# auto-generated
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
#     The first (the roots' flags) has every shared module; any other is
#     walked: its binaries' own modules compile first, and cnm's symbols of
#     them and of the first library's objects give the shared modules they
#     reach, only those go in it, and of those only the ones its flags change
#     compile again (the rest are the first library's objects).
# DOS sees only 8.3 names, so each binary (and each library) is built in its
# own work directory where every module gets a short name (upper-cased, cut
# to 8 characters, a number on a clash) and ln reads a response file of them.
#
# The compiler is `Manx Aztec C86 v42b` from github.com/ldkeeton/dos_compilers
# (main).  The first run downloads just that folder into dos_compilers/ next
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
#   GAME     the original game's directory (default ../apps/DSAVANT, beside
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

CFLAGS='-n +b +m +c'
AFLAGS='-dMODEL=0 -l'
INCLUDE='include'
# Every source under these goes into SHARED.LIB.
LIBDIRS=('shared')
# NAME FILE LN_WRITES ROOT [LN_FLAGS ...], ROOT - for none.  NAME/ holds
# its sources.
BINARIES=(
    # Main program: Aztec C runtime, game loop, overlay manager, and driver
    # thunks shared by all overlays
    'ds DS.EXE DS.EXE - -R +C af00 +D 2100'
    # EGA video driver: planar graphics primitives, text, palette, mouse
    # pointer, EMS/memory caching, and music slots
    'ega EGA.DRV EGA.COM -'
    # Sound driver: OPL (AdLib) and MPU-401 music player, digitized sample
    # playback on the timer interrupt
    'play PLAY.DRV PLAY.COM -'
    # Base menus overlay: party roster, character import (PC files, Bane party),
    # load/save game, configuration menu, copy protection
    'vbase VBASE.OVR VBASE.OVR ds'
    # Do-options overlay: automap view, item use, spellcasting from menu, and
    # floor items
    'vdopt VDOPT.OVR VDOPT.OVR ds'
    # VGA video driver: graphics primitives, text, palette, mouse pointer,
    # EMS/memory caching, and music slots
    'vga VGA.DRV VGA.COM -'
    # Startup overlay: loads fonts, palette, startup maze/misc files and
    # initializes runtime resources
    'vinit VINIT.OVR VINIT.OVR ds'
    # Installer and setup utility: configures hardware drivers and copies game
    # files
    'vinstall VINSTALL.EXE VINSTALL.EXE -'
    # Maze overlay: level loading, 3D view rendering, movement, region events,
    # maze sounds, and roaming NPC turns
    'vmaze VMAZE.OVR VMAZE.OVR ds'
    # Melee overlay: combat setup, monster pictures, action slots, and
    # combatant/monster group turns
    'vmele VMELE.OVR VMELE.OVR ds'
    # Melee execution overlay: carries out queued combat actions and their
    # overlay animations
    'vmexe VMEXE.OVR VMEXE.OVR ds'
    # Maze side actions, entered from VMAZE and always returning to it: running
    # from an NPC encounter (random stumble), drinking from a fountain, picking
    # up a floor item, and swapping two party members' order. Carries its own
    # copy of the 3D view code to redraw the maze while VMAZE is swapped out.
    'vmext VMEXT.OVR VMEXT.OVR ds'
    # NPC encounter overlay: talking, trading items, giving quest maps, and NPC
    # item/spell menus
    'vmnpc VMNPC.OVR VMNPC.OVR ds'
    # Level-up overlay: stat and skill point allocation, resistances, and
    # profession skill lists
    'vpclv VPCLV.OVR VPCLV.OVR ds'
    # Character creation overlay: rolling stats, choosing profession and skills,
    # and naming new characters
    'vpcmk VPCMK.OVR VPCMK.OVR ds'
    # Character view overlay: member summary, item pages, spell lists, and
    # profession evaluation
    'vpcvw VPCVW.OVR VPCVW.OVR ds'
    # Party options overlay: spell and item action dialogs outside combat
    'vpops VPOPS.OVR VPOPS.OVR ds'
    # Treasure overlay: chests and loot division, experience distribution, and
    # scripted scene states
    'vtrea VTREA.OVR VTREA.OVR ds'
)
# The module that must open a binary.
declare -A FIRST=(
    [ega]='shared/drv/driver_dispatch'
    [play]='play/driver_dispatch'
    [vga]='shared/drv/driver_dispatch'
)
# Startup modules nothing calls, linked into a binary by force.
declare -A ENTRY=(
    [ds]='shared/aztec/aztec_begin'
    [vbase]='shared/ovr/aztec_ovbgn'
    [vdopt]='shared/ovr/aztec_ovbgn'
    [vinit]='shared/ovr/aztec_ovbgn'
    [vinstall]='shared/aztec/aztec_begin'
    [vmaze]='shared/ovr/aztec_ovbgn'
    [vmele]='shared/ovr/aztec_ovbgn'
    [vmexe]='shared/ovr/aztec_ovbgn'
    [vmext]='shared/ovr/aztec_ovbgn'
    [vmnpc]='shared/ovr/aztec_ovbgn'
    [vpclv]='shared/ovr/aztec_ovbgn'
    [vpcmk]='shared/ovr/aztec_ovbgn'
    [vpcvw]='shared/ovr/aztec_ovbgn'
    [vpops]='shared/ovr/aztec_ovbgn'
    [vtrea]='shared/ovr/aztec_ovbgn'
)
# C flags other than CFLAGS: a binary's default, and one module's
# (OBJ_CFLAGS beats BIN_CFLAGS).
declare -A BIN_CFLAGS=(
    [vinstall]='-n'
)
declare -A OBJ_CFLAGS=(
    [ds/aztec/aztec_ovloader]='-n'
    [ds/aztec/aztec_bdos]='-n'
    [ds/aztec/aztec_impl_csread]='-n'
    [ds/aztec/aztec_sprintf]='-n'
    [ds/aztec/aztec_movblock]='-n'
    [ds/aztec/aztec_setmem]='-n'
    [shared/aztec/aztec_strcat]='-n'
    [shared/aztec/aztec_strcpy]='-n'
    [ds/aztec/aztec_lmalloc]='-n'
    [ds/aztec/aztec_lfree]='-n'
    [ds/aztec/aztec_lrealloc]='-n'
    [ds/data/aztec_csav_begin]='-n'
    [ds/aztec/aztec_csav]='-n'
    [shared/aztec/aztec_malloc]='-n'
    [shared/aztec/aztec_format]='-n'
    [shared/aztec/aztec_format_get_pointer]='-n'
    [shared/aztec/aztec_format_do_width]='-n'
    [shared/aztec/aztec_open]='-n'
    [shared/aztec/aztec_lsubs]='-n'
    [shared/aztec/aztec_strlen]='-n'
    [shared/aztec/aztec_impl_sys]='-n'
    [shared/data/aztec_begin_exitad]='-n'
    [shared/data/aztec_begin_exitcs]='-n'
    [shared/aztec/aztec_begin]='-n'
    [shared/aztec/aztec_Croot]='-n'
    [shared/aztec/aztec_fltinit]='-n'
    [ds/aztec/aztec_impl_stkover]='-n'
    [shared/aztec/aztec_io]='-n'
    [shared/aztec/aztec_ttyio]='-n'
    [shared/aztec/aztec_movmem]='-n'
    [shared/aztec/aztec_isatty]='-n'
    [shared/aztec/aztec_sbrk]='-n'
    [shared/aztec/aztec_brk]='-n'
    [shared/aztec/aztec_rsvstk]='-n'
    [shared/ovr/aztec_ovbgn]='-n'
    [shared/ovr/aztec_cswt]='-n'
    [shared/aztec/aztec_strcmp]='-n'
    [vinstall/data/install_tables]='-n -Z4000'
    [shared/ovr/aztec_swapmem]='-n'
    [shared/aztec/aztec_strncpy]='-n'
)

set -u

here=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
cd "$here" || exit 1
REPO='ldkeeton/dos_compilers'
REF='main'
FOLDER='Manx Aztec C86 v42b'
AZTEC=$here/dos_compilers/$FOLDER
DOSBOX=${DOSBOX:-dosbox-x}
JOBS=${JOBS:-$(nproc 2>/dev/null || echo 4)}
TIMEOUT=${TIMEOUT:-600}
LN_EXTRA=${LN_EXTRA:-}
WORK=$here/.cache/build
GAME=${GAME:-$here/../apps/DSAVANT}

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
# Each object that comes out is appended to response file $6.  Phase $7:
# compile (copy and compile only), link (only list the objects compiled
# before), or both (the default).
stage_modules() {
    local work=$1 cflags=$5 rsp=$6 phase=${7:-all} i src
    local -n _paths=$2 _exts=$3 _shorts=$4
    for i in "${!_paths[@]}"; do
        if [[ $phase != link ]]; then
            src=${_shorts[i]}.$(dos_ext "${_exts[i]}")
            cp "${_paths[i]}${_exts[i]}" "$work/$src"
            bat+=("$(compile_line "${_paths[i]}" "${_exts[i]}" "${_shorts[i]}" "$cflags") > ${_shorts[i]}.CC")
        fi
        [[ $phase == compile ]] ||
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

# Every LIBDIRS module into SHARED_PATHS and SHARED_EXTS, with its short name
# (the same in every library) in SHARED_SHORTS.
shared_modules() {
    SHARED_PATHS=() SHARED_EXTS=() SHARED_SHORTS=()
    local dirs=() stems=() module ext
    for module in "${LIBDIRS[@]}"; do [[ -d $module ]] && dirs+=("$module"); done
    (( ${#dirs[@]} )) || return 0
    while IFS=$'\t' read -r module ext; do
        SHARED_PATHS+=("$module") SHARED_EXTS+=("$ext") stems+=("${module##*/}")
    done < <(module_sources "${dirs[@]}")
    short_names "${stems[@]}"
    SHARED_SHORTS=("${SHORT[@]}")
}

# Compile the shared modules numbered "$3"... with C flags $2 in at most JOBS
# parts of directory $1, each part's symbols (cnm -l) into its SYMS.TXT:
# start a session per part and do not wait for them.  PART_OF[number] is the
# part directory a module compiles in.
declare -A PART_OF=()
compile_parts() {
    local dir=$1 cflags=$2; shift 2
    local idx=("$@") n=$# parts=$JOBS p j i
    (( n )) || return 0
    (( parts > n )) && parts=$n
    for (( p = 0; p < parts; p++ )); do
        local part=$dir/part$p bat=() ppaths=() pexts=() pshorts=()
        rm -rf "$part"
        mkdir -p "$part"
        for (( j = p; j < n; j += parts )); do
            i=${idx[j]}
            ppaths+=("${SHARED_PATHS[i]}") pexts+=("${SHARED_EXTS[i]}")
            pshorts+=("${SHARED_SHORTS[i]}")
            PART_OF[$i]=$part
        done
        stage_modules "$part" ppaths pexts pshorts "$cflags" OBJS.TXT compile
        bat+=('cnm -l *.O > SYMS.TXT')
        printf '%s\r\n' "${bat[@]}" > "$part/BUILD.BAT"
        while (( $(jobs -rp | wc -l) >= JOBS )); do wait -n; done
        run_dos "$part" &
    done
}

# Order the objects of directory $1 (ord, so that ln's one pass over the
# library finds every member) and archive them into its SHARED.LIB; status 1,
# with REPORT lines, when lb wrote none.  With $2, the ORD.TXT of a library
# they are a subset of, they keep its order instead: ln lays the members out
# in library order, so a walked library links a binary just as the full one
# would (ord would sort a subset its own way).
archive_library() {
    local lib=$1 order=${2:-} line
    if [[ -n $order ]]; then
        tr -d '\r' < "$order" | while IFS= read -r line; do
            [[ -f $lib/$line ]] && printf '%s\r\n' "$line"
        done > "$lib/ORD.TXT"
        printf '%s\r\n' 'lb SHARED.LIB -f ORD.TXT > LB.LOG' > "$lib/BUILD.BAT"
    else
        ( cd "$lib" && ls | grep '\.O$' | LC_ALL=C sort ) | sed 's/$/\r/' > "$lib/OBJS.TXT"
        printf '%s\r\n' 'ord OBJS.TXT ORD.TXT > ORD.LOG' \
            'lb SHARED.LIB -f ORD.TXT > LB.LOG' > "$lib/BUILD.BAT"
    fi
    run_dos "$lib"
    [[ -s $lib/SHARED.LIB ]] && return 0
    report+=("  lb wrote no SHARED.LIB")
    while IFS= read -r line; do report+=("    $line"); done \
        < <(cat "$lib/ORD.LOG" "$lib/LB.LOG" 2>/dev/null | tr -d '\r')
    return 1
}

# The full library: start compiling every shared module into $WORK/$1 with C
# flags $2 ...
start_full_library() {
    local dir=$WORK/$1
    rm -rf "$dir"
    mkdir -p "$dir/lib"
    PART_OF=()
    compile_parts "$dir" "$2" "${!SHARED_PATHS[@]}"
}

# ... and, once those sessions are done, gather the objects and their symbols
# (SYMS.TXT) into its lib/ and archive them.  Print its report; status 0 when
# every module compiled.
finish_full_library() {
    local dir=$WORK/$1 cflags=$2 report=() failed=0 i part
    local n=${#SHARED_PATHS[@]}
    (( n )) || { echo "shared: no ${LIBDIRS[*]}"; return 0; }
    for (( i = 0; i < n; i++ )); do
        part=${PART_OF[$i]}
        [[ -f $part/${SHARED_SHORTS[i]}.O ]] && cp "$part/${SHARED_SHORTS[i]}.O" "$dir/lib/"
        cp "$part/${SHARED_SHORTS[i]}.CC" "$dir/lib/" 2>/dev/null
    done
    cat "$dir"/part*/SYMS.TXT > "$dir/lib/SYMS.TXT" 2>/dev/null
    check_modules "$dir/lib" SHARED_PATHS SHARED_EXTS SHARED_SHORTS || failed=1
    archive_library "$dir/lib" || failed=1
    if (( failed )); then
        echo "shared ($cflags): FAILED ($n sources)"
        printf '%s\n' "${report[@]}"
        return 1
    fi
    echo "shared ($cflags): $n sources"
}

# The library objects (lower-case, as cnm names them: AZTEC_B1.O is
# aztec_b1.o) that the objects of the seed symbol files reach: the symbol
# files ("cnm -l" output) of the library come first, then --, then the
# seeds'.  A library file later in the list replaces an object an earlier one
# described.  A symbol is reached when a seed object, or a library object
# reached, uses it (Un, Ud) and no seed object defines it (a capital type:
# Pg, Dt, Gl); every library object that defines it is reached.
walk_symbols() {
    local lib=()
    while (( $# )) && [[ $1 != -- ]]; do lib+=("$1"); shift; done
    (( $# )) && shift
    awk '
        { sub(/\r$/, "") }
        /^[^ ]/ {
            m = tolower($1); sub(/:$/, "", m)
            if (side == "seed") { m = FILENAME "\t" m; S[m] = 1 } else L[m] = 1
            D[m] = ""; R[m] = ""; next
        }
        NF == 3 && m != "" {
            if ($2 == "Un" || $2 == "Ud") R[m] = R[m] " " $3
            else if ($2 ~ /^[A-Z]/) D[m] = D[m] " " $3
        }
        END {
            for (m in L) { k = split(D[m], s, " "); for (j = 1; j <= k; j++) def[s[j]] = def[s[j]] " " m }
            for (m in S) { k = split(D[m], s, " "); for (j = 1; j <= k; j++) own[s[j]] = 1 }
            q = 0
            for (m in S) { k = split(R[m], s, " "); for (j = 1; j <= k; j++) Q[++q] = s[j] }
            while (q > 0) {
                sym = Q[q--]
                if (sym in seen || sym in own) continue
                seen[sym] = 1
                c = split(def[sym], ms, " ")
                for (a = 1; a <= c; a++) {
                    m = ms[a]
                    if (m in got) continue
                    got[m] = 1; print m
                    k = split(R[m], s, " ")
                    for (j = 1; j <= k; j++) if (!(s[j] in seen)) Q[++q] = s[j]
                }
            }
        }' side=lib "${lib[@]}" side=seed "$@"
}

# A walked library in $WORK/$1 for C flags $2: just the shared modules that
# the binaries "$5"... reach (their own modules compiled already, with their
# symbols in their SYMS.TXT), walked through the full library $WORK/$3 (C
# flags $4).  A module these flags compile the same comes from the full
# library; the others compile here, and their own symbols replace the full
# library's in the walk, again until it reaches nothing new.  Print its
# report; status 0 when every module compiled.
build_walked_library() {
    local name=$1 cflags=$2 full=$WORK/$3 full_cflags=$4; shift 4
    local dir=$WORK/$name report=() failed=0 seeds=() b i m p round=0
    local n=${#SHARED_PATHS[@]}
    rm -rf "$dir"
    mkdir -p "$dir/lib"
    for b; do [[ -f $WORK/$b/SYMS.TXT ]] && seeds+=("$WORK/$b/SYMS.TXT"); done
    local -A index=() reached=() fresh=()
    for i in "${!SHARED_SHORTS[@]}"; do index[${SHARED_SHORTS[i],,}.o]=$i; done
    PART_OF=()
    local syms=("$full/lib/SYMS.TXT") again
    while :; do
        again=()
        while IFS= read -r m; do
            i=${index[$m]:-}
            [[ -n $i && -z ${reached[$i]:-} ]] || continue
            reached[$i]=1
            [[ $(compile_line "${SHARED_PATHS[i]}" "${SHARED_EXTS[i]}" "${SHARED_SHORTS[i]}" "$cflags") == \
               "$(compile_line "${SHARED_PATHS[i]}" "${SHARED_EXTS[i]}" "${SHARED_SHORTS[i]}" "$full_cflags")" ]] ||
                again+=("$i")
        done < <(walk_symbols "${syms[@]}" -- "${seeds[@]}")
        (( ${#again[@]} )) || break
        compile_parts "$dir/round$round" "$cflags" "${again[@]}"
        wait
        for p in "$dir/round$round"/part*; do syms+=("$p/SYMS.TXT"); done
        for i in "${again[@]}"; do fresh[$i]=1; done
        round=$(( round + 1 ))
    done
    local opaths=() oexts=() oshorts=() src
    for i in "${!reached[@]}"; do
        if [[ -n ${fresh[$i]:-} ]]; then
            src=${PART_OF[$i]}
            opaths+=("${SHARED_PATHS[i]}") oexts+=("${SHARED_EXTS[i]}")
            oshorts+=("${SHARED_SHORTS[i]}")
        else
            src=$full/lib
        fi
        [[ -f $src/${SHARED_SHORTS[i]}.O ]] && cp "$src/${SHARED_SHORTS[i]}.O" "$dir/lib/"
        cp "$src/${SHARED_SHORTS[i]}.CC" "$dir/lib/" 2>/dev/null
    done
    check_modules "$dir/lib" opaths oexts oshorts || failed=1
    (( ${#reached[@]} )) && { archive_library "$dir/lib" "$full/lib/ORD.TXT" || failed=1; }
    local what="${#reached[@]} of $n sources reached from $*, ${#fresh[@]} compiled for it"
    if (( failed )); then
        echo "shared ($cflags): FAILED ($what)"
        printf '%s\n' "${report[@]}"
        return 1
    fi
    echo "shared ($cflags): $what"
}

# The library work directory of binary $1 (by its default C flags).
declare -A LIBRARY=()
library_of() { echo "${LIBRARY[$(binary_cflags "$1")]}"; }

# ---- one binary --------------------------------------------------------------

# Build binary $1 in its work directory; print its report; status 0 when its
# output was written with no compile or link error.  Phase $2: compile (only
# compile its modules, their symbols into SYMS.TXT, for a walked library),
# link (link what compile made), or both (the default).
build_one() {
    local binary=$1 phase=${2:-all}
    local rule=${LN_RULE[$binary]} output=${LN_OUTPUT[$binary]}
    local root=${LN_ROOT[$binary]} cflags
    cflags=$(binary_cflags "$binary")
    local work=$WORK/$binary report=() failed=0 lib
    lib=$WORK/$(library_of "$binary")/lib/SHARED.LIB
    local dest=build_out_new/$rule
    if [[ $phase != link ]]; then
        rm -rf "$work"
        mkdir -p "$work"
    fi
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
    stage_modules "$work" paths exts shorts "$cflags" "$rsp" "$phase"
    if [[ $phase == compile ]]; then
        bat+=('cnm -l *.O > SYMS.TXT')
        printf '%s\r\n' "${bat[@]}" > "$work/BUILD.BAT"
        run_dos "$work"
        (( $? == 124 )) && report+=("  DOSBox timed out after ${TIMEOUT}s") && failed=1
        check_modules "$work" paths exts shorts || failed=1
        (( failed )) || return 0
        echo "$binary: FAILED (${#paths[@]} sources)"
        printf '%s\n' "${report[@]}"
        return 1
    fi
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
order=("${roots[@]}")
for binary in "${wanted[@]}"; do
    [[ " ${order[*]} " == *" $binary "* ]] || order+=("$binary")
done

copy_game
mkdir -p "$WORK"
rm -f "$WORK"/*.status
status=0
# One library per default C flags among the binaries built: the first has
# every shared module, the others are walked from their binaries, whose own
# modules compile alongside the first library.
LIBRARIES=()
declare -A LIB_BINARIES=() PHASE=()
for binary in "${order[@]}"; do
    cflags=$(binary_cflags "$binary")
    if [[ -z ${LIBRARY[$cflags]+x} ]]; then
        LIBRARY[$cflags]=shared${#LIBRARY[@]}
        LIBRARIES+=("$cflags")
    fi
    LIB_BINARIES[$cflags]+=" $binary"
done
shared_modules
full=${LIBRARIES[0]}
start_full_library "${LIBRARY[$full]}" "$full"
rm -f "$WORK"/*.compiled
for binary in "${order[@]}"; do
    [[ $(binary_cflags "$binary") == "$full" ]] && continue
    PHASE[$binary]=link
    while (( $(jobs -rp | wc -l) >= JOBS )); do wait -n; done
    ( build_one "$binary" compile > "$WORK/$binary.report" 2>&1
      echo $? > "$WORK/$binary.compiled" ) &
done
wait
finish_full_library "${LIBRARY[$full]}" "$full" || status=1
declare -A SKIP=()
for cflags in "${LIBRARIES[@]:1}"; do
    walked=()
    for binary in ${LIB_BINARIES[$cflags]}; do
        if [[ $(cat "$WORK/$binary.compiled" 2>/dev/null) == 0 ]]; then
            walked+=("$binary")
        else
            cat "$WORK/$binary.report"
            SKIP[$binary]=1 status=1
        fi
        rm -f "$WORK/$binary.compiled" "$WORK/$binary.report"
    done
    (( ${#walked[@]} )) || continue
    build_walked_library "${LIBRARY[$cflags]}" "$cflags" "${LIBRARY[$full]}" \
        "$full" "${walked[@]}" || status=1
done
for binary in "${roots[@]}"; do
    [[ -n ${SKIP[$binary]:-} ]] && continue
    build_one "$binary" "${PHASE[$binary]:-all}" || status=1
done
for binary in "${wanted[@]}"; do
    [[ " ${roots[*]} " == *" $binary "* || -n ${SKIP[$binary]:-} ]] && continue
    while (( $(jobs -rp | wc -l) >= JOBS )); do wait -n; done
    ( build_one "$binary" "${PHASE[$binary]:-all}" > "$WORK/$binary.report" 2>&1
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
