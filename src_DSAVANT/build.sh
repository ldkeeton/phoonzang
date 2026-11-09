#!/usr/bin/env bash
# Build every binary of this tree with Manx Aztec C86, running the DOS tools
# under DOSBox-X.
#
#   ./build.sh [binary ...]      e.g. ./build.sh vmnpc   (default: all)
#   ./build.sh init              only download the compiler
#
# What goes into a binary
#
#   Binary NAME is every NAME/**/MODULE.s and NAME/**/MODULE.c (when both
#   exist, the .s wins; .asm files are not sources).  There is no list of
#   modules and no fixed order: add, delete or convert a file and the next
#   build picks it up.  So the binaries are not laid out exactly like the
#   originals, which is the point: code that only works in the original
#   layout shows up as a bug.
#
#   Every source under LIBDIRS (shared/) is compiled once into SHARED.LIB,
#   and ln takes from it just the modules a binary calls.  A shared module
#   compiles with OBJ_CFLAGS[MODULE], else CFLAGS, the same for every binary
#   (the generator keeps a module that one binary compiles differently in
#   that binary's own directory).
#
#   A few modules have a fixed place:
#     FIRST[NAME]        opens the binary: a driver's dispatch table, which
#                        DS calls at fixed offsets.
#     NAME/data/globals  comes right after FIRST.  It declares every
#                        uninitialized C global, ln lays those out in the
#                        order it first sees them, and the code relies on that
#                        order (a loop runs from one array into the next).
#     ENTRY[NAME]        startup modules nothing calls, so ln would never take
#                        them from the library: they are linked in directly.
#
# Compile flags
#
#   cc gets OBJ_CFLAGS[MODULE], else BIN_CFLAGS[NAME], else CFLAGS; as gets
#   AFLAGS.  Both search INCLUDE.
#
# DOS file names
#
#   DOS sees only 8.3 names, so each binary, and the library, is built in its
#   own work directory under .cache/build/, with every module copied in under
#   a short name (upper case, cut to 8 characters, a number added on a clash).
#   ln reads the list of objects from a response file.
#
# The compiler
#
#   `Manx Aztec C86 v42b` from github.com/ldkeeton/dos_compilers (main).  The first
#   run clones just that folder into dos_compilers/ beside this script; later
#   runs reuse it.  `./build.sh init` downloads it afresh.
#
# Output
#
#   Each binary goes into build_out_new/ under the game's own file name
#   (DS.EXE, VBASE.OVR, VGA.DRV, ...).  ln picks the format from the
#   extension, so a driver links as VGA.COM and is renamed VGA.DRV.  Every
#   other file of the original game (data, pictures, ...) is copied in first,
#   unless build_out_new/ has it already, so saves there survive.  Delete
#   build_out_new/ and the next run makes it a fresh, runnable game.  The work
#   directories, with every log, stay in .cache/build/.
#
# Environment
#
#   DOSBOX    the DOSBox-X to run (default dosbox-x)
#   JOBS      DOSBox sessions at once (default: the number of CPUs)
#   TIMEOUT   seconds one session may take (default 600)
#   SHOW=1    show the DOSBox window instead of running headless
#   LN_EXTRA  more ln flags for every link (-t keeps ln's symbol table,
#             BINARY.SYM, in the binary's work directory)
#   GAME      the original game's directory (default ../apps/DSAVANT)

# ---- what this tree builds ---------------------------------------------------

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

# ---- the compiler ------------------------------------------------------------

# Clone just $FOLDER of the compiler repository into dos_compilers/.  The
# clone goes into a temporary directory and is moved in only when complete,
# so an interrupted download leaves nothing half-done.
download_compiler() {
    command -v git >/dev/null || die "no git on PATH (needed to download $FOLDER)"
    local tmp=$here/dos_compilers.new
    rm -rf "$tmp"
    echo "downloading $FOLDER from github.com/$REPO ($REF)"
    if ! git clone --quiet --depth 1 --filter=blob:none --sparse --branch "$REF" \
            "https://github.com/$REPO.git" "$tmp" ||
       ! git -C "$tmp" sparse-checkout set "$FOLDER"; then
        rm -rf "$tmp"
        die "cannot download $FOLDER"
    fi
    if [[ ! -f $tmp/$FOLDER/BIN/CC.EXE ]]; then
        rm -rf "$tmp"
        die "no $FOLDER/BIN/CC.EXE in github.com/$REPO"
    fi
    rm -rf "$here/dos_compilers"
    mv "$tmp" "$here/dos_compilers"
}

if [[ ${1:-} == init ]]; then
    download_compiler
    exit 0
fi
[[ -f $AZTEC/BIN/CC.EXE ]] || download_compiler
command -v "$DOSBOX" >/dev/null || die "no $DOSBOX on PATH (set DOSBOX)"

# ---- the binaries ------------------------------------------------------------

declare -A LN_RULE=() LN_OUTPUT=() LN_FLAGS=() LN_ROOT=()
TARGETS=()
for line in "${BINARIES[@]}"; do
    read -ra words <<< "$line"
    (( ${#words[@]} >= 4 )) || die "BINARIES: need NAME FILE LN_WRITES ROOT [LN_FLAGS]: $line"
    binary=${words[0]}
    LN_RULE[$binary]=${words[1]}
    LN_OUTPUT[$binary]=${words[2]}
    LN_ROOT[$binary]=${words[3]#-}
    LN_FLAGS[$binary]="${words[*]:4}"
    TARGETS+=("$binary")
done
(( ${#TARGETS[@]} )) || die "BINARIES is empty"
for binary in "${TARGETS[@]}"; do
    root=${LN_ROOT[$binary]}
    [[ -z $root || -n ${LN_RULE[$root]:-} ]] || die "BINARIES: $binary: no root $root"
done
INCLUDE_DIR=$here/$INCLUDE
[[ -d $INCLUDE_DIR ]] || die "no include directory $INCLUDE_DIR"

# ---- the game's other files --------------------------------------------------

# Copy every file of $GAME into build_out_new/, except the binaries this
# script builds and anything build_out_new/ already has.
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

# ---- 8.3 names ---------------------------------------------------------------

declare -A RESERVED=([CON]=1 [PRN]=1 [AUX]=1 [NUL]=1 [CLOCK\$]=1 [BUILD]=1)
for n in 1 2 3 4 5 6 7 8 9; do RESERVED[COM$n]=1 RESERVED[LPT$n]=1; done

# Give each argument a DOS file name stem, all different, in the array SHORT
# (in the same order).
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

# The DOS extension for a source suffix: as reads .ASM, cc reads .C.
dos_ext() { [[ $1 == .s ]] && echo ASM || { local e=${1#.}; echo "${e^^}"; }; }

# ---- sources and compile lines -----------------------------------------------

# Every source under the given directories, sorted, one per line as
# "MODULE<tab>.s" or "MODULE<tab>.c".  A MODULE.s beats a MODULE.c.
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

# The source suffix of one module (.s or .c), or nothing when it has none.
module_ext() {
    if [[ -f $1.s ]]; then echo .s; elif [[ -f $1.c ]]; then echo .c; fi
}

# The C flags of a binary's modules that have none of their own.
binary_cflags() { printf '%s\n' "${BIN_CFLAGS[$1]-$CFLAGS}"; }

# The DOS command that compiles one module.
compile_line() {
    local module=$1 ext=$2 short=$3 default_cflags=$4
    if [[ $ext == .s ]]; then
        echo "as $AFLAGS -o $short.O $short.ASM"
    else
        echo "cc -B ${OBJ_CFLAGS[$module]-$default_cflags} -o $short.O $short.C"
    fi
}

# ---- DOSBox ------------------------------------------------------------------

# Run the BUILD.BAT in a work directory under DOSBox, headless unless SHOW=1.
# Drive C: is the compiler, D: the work directory, E: the include directory.
# Status 124 means it timed out.
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

# Copy modules into a work directory under their short names, and add to the
# caller's array `bat` (the lines of its BUILD.BAT) a compile line for each.
# The modules come as three arrays, passed by name: paths, suffixes, short
# names.  With a response file name, each object that comes out is also listed
# in it, for ln.
stage_modules() {
    local work=$1 cflags=$5 rsp=${6:-} i src
    local -n _paths=$2 _exts=$3 _shorts=$4
    for i in "${!_paths[@]}"; do
        src=${_shorts[i]}.$(dos_ext "${_exts[i]}")
        cp "${_paths[i]}${_exts[i]}" "$work/$src"
        bat+=("$(compile_line "${_paths[i]}" "${_exts[i]}" "${_shorts[i]}" "$cflags") > ${_shorts[i]}.CC")
        [[ -n $rsp ]] && bat+=("if exist ${_shorts[i]}.O echo ${_shorts[i]}.O>> $rsp")
    done
}

# Add a line to the caller's array `report` for each module (the same three
# arrays as stage_modules) that did not compile in a work directory, with the
# errors from its log.  Status 1 if any failed.
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

LIB=$WORK/shared/lib/SHARED.LIB

# Compile every source under LIBDIRS and archive the objects into $LIB.  The
# modules are dealt out to JOBS parts, each compiled in its own DOSBox session,
# all at once.  Prints a line (and any errors); status 0 when all compiled.
build_library() {
    local dir=$WORK/shared report=() failed=0 line
    local dirs=() paths=() exts=() stems=() module ext
    rm -rf "$dir"
    mkdir -p "$dir/lib"
    for module in "${LIBDIRS[@]}"; do [[ -d $module ]] && dirs+=("$module"); done
    if (( ${#dirs[@]} )); then
        while IFS=$'\t' read -r module ext; do
            paths+=("$module") exts+=("$ext") stems+=("${module##*/}")
        done < <(module_sources "${dirs[@]}")
    fi
    local n=${#paths[@]}
    if (( n == 0 )); then
        echo "shared: no sources in ${LIBDIRS[*]}"
        return 0
    fi
    short_names "${stems[@]}"
    local shorts=("${SHORT[@]}")

    # Module i goes to part i % parts.
    local parts=$(( JOBS < n ? JOBS : n )) p i
    for (( p = 0; p < parts; p++ )); do
        local part=$dir/part$p bat=() ppaths=() pexts=() pshorts=()
        mkdir -p "$part"
        for (( i = p; i < n; i += parts )); do
            ppaths+=("${paths[i]}") pexts+=("${exts[i]}") pshorts+=("${shorts[i]}")
        done
        stage_modules "$part" ppaths pexts pshorts "$CFLAGS"
        printf '%s\r\n' "${bat[@]}" > "$part/BUILD.BAT"
        run_dos "$part" &
    done
    wait

    # Gather the objects and logs, then archive.  ord sorts the objects so
    # that ln's one pass over the library finds every member it needs.
    cp "$dir"/part*/*.O "$dir"/part*/*.CC "$dir/lib/" 2>/dev/null
    check_modules "$dir/lib" paths exts shorts || failed=1
    ( cd "$dir/lib" && ls | grep '\.O$' | LC_ALL=C sort ) | sed 's/$/\r/' > "$dir/lib/OBJS.TXT"
    printf '%s\r\n' 'ord OBJS.TXT ORD.TXT > ORD.LOG' \
        'lb SHARED.LIB -f ORD.TXT > LB.LOG' > "$dir/lib/BUILD.BAT"
    run_dos "$dir/lib"
    if [[ ! -s $LIB ]]; then
        failed=1
        report+=("  lb wrote no SHARED.LIB")
        while IFS= read -r line; do report+=("    $line"); done \
            < <(cat "$dir/lib/ORD.LOG" "$dir/lib/LB.LOG" 2>/dev/null | tr -d '\r')
    fi

    if (( failed )); then
        echo "shared: FAILED ($n sources)"
        printf '%s\n' "${report[@]}"
        return 1
    fi
    echo "shared: $n sources"
}

# ---- one binary --------------------------------------------------------------

# Compile and link one binary in its own work directory and copy it into
# build_out_new/.  Prints a line (and any errors); status 0 when it was
# written with no compile or link error.
build_one() {
    local binary=$1
    local rule=${LN_RULE[$binary]} output=${LN_OUTPUT[$binary]} root=${LN_ROOT[$binary]}
    local work=$WORK/$binary dest=build_out_new/${LN_RULE[$binary]}
    local cflags report=() failed=0
    cflags=$(binary_cflags "$binary")
    rm -rf "$work"
    mkdir -p "$work"
    [[ -d $binary ]] || { echo "$binary: FAILED: no directory $binary/"; return 1; }

    # The modules in link order: FIRST, then NAME/data/globals, then the
    # binary's other sources, then ENTRY.
    local paths=() exts=() stems=() module ext entry
    local first=${FIRST[$binary]:-} globals=$binary/data/globals
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
    local shorts=("${SHORT[@]}") bat=() rsp
    rsp=${binary^^}; rsp=${rsp:0:8}.LNK
    stage_modules "$work" paths exts shorts "$cflags" "$rsp"

    # ln reads the objects, then the root's symbols (an overlay links against
    # DS.RSM), then the library, twice: ord sorted it for one pass, and the
    # second catches a member that needs one listed before it.
    local ln_line="ln $LN_EXTRA ${LN_FLAGS[$binary]} -o ${output^^} -f $rsp"
    if [[ -n $root ]]; then
        if [[ ! -f $WORK/$root.rsm ]]; then
            echo "$binary: FAILED: $root.rsm was not built"
            return 1
        fi
        cp "$WORK/$root.rsm" "$work/${root^^}.RSM"
        ln_line+=" ${root^^}.RSM"
    fi
    if [[ -f $LIB ]]; then
        cp "$LIB" "$work/SHARED.LIB"
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
    [[ -n ${LN_RULE[$binary]:-} ]] || die "no binary $binary (has: ${TARGETS[*]})"
done
# The roots of the binaries asked for link first: their overlays need their .rsm.
roots=()
for binary in "${wanted[@]}"; do
    root=${LN_ROOT[$binary]}
    [[ -n $root && " ${roots[*]} " != *" $root "* ]] && roots+=("$root")
done

copy_game
mkdir -p "$WORK"
rm -f "$WORK"/*.status
status=0
build_library || status=1
for binary in "${roots[@]}"; do
    build_one "$binary" || status=1
done
# The rest, JOBS at a time.  Each writes its report to a file, printed in
# order once all are done.
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
