# auto-generated
# Every module a .lnk lists is MODULE.o, made from MODULE.s or else
# MODULE.c.  cc and as search INCLUDE, which Aztec reads from the
# environment.
CFLAGS = -n +b +m +c
AFLAGS = -dMODEL=0 -l
export INCLUDE = include

.SUFFIXES:
.SUFFIXES: .o .s .c

.s.o:
	as $(AFLAGS) -o $@ $<

# -B: never stop after five errors to ask whether to go on.
.c.o:
	cc -B $(CFLAGS) -o $@ $<

all: DS.EXE EGA.DRV PLAY.DRV VBASE.OVR VDOPT.OVR VGA.DRV VINIT.OVR VINSTALL.EXE VMAZE.OVR VMELE.OVR VMEXE.OVR VMEXT.OVR VMNPC.OVR VPCLV.OVR VPCMK.OVR VPCVW.OVR VPOPS.OVR VTREA.OVR

# Main program: Aztec C runtime, game loop, overlay manager, and driver thunks
# shared by all overlays
DS.EXE: ds.lnk
	ln -R +C af00 +D 2100 -o DS.EXE -f ds.lnk

# ln -R also writes the symbols the overlays link against.
ds.rsm: DS.EXE

# EGA video driver: planar graphics primitives, text, palette, mouse pointer,
# EMS/memory caching, and music slots
EGA.DRV: ega.lnk
	ln -o EGA.COM -f ega.lnk
	ren EGA.COM EGA.DRV

# Sound driver: OPL (AdLib) and MPU-401 music player, digitized sample playback
# on the timer interrupt
PLAY.DRV: play.lnk
	ln -o PLAY.COM -f play.lnk
	ren PLAY.COM PLAY.DRV

# Base menus overlay: party roster, character import (PC files, Bane party),
# load/save game, configuration menu, copy protection
VBASE.OVR: vbase.lnk ds.rsm
	ln -o VBASE.OVR -f vbase.lnk ds.rsm

# Do-options overlay: automap view, item use, spellcasting from menu, and floor
# items
VDOPT.OVR: vdopt.lnk ds.rsm
	ln -o VDOPT.OVR -f vdopt.lnk ds.rsm

# VGA video driver: graphics primitives, text, palette, mouse pointer,
# EMS/memory caching, and music slots
VGA.DRV: vga.lnk
	ln -o VGA.COM -f vga.lnk
	ren VGA.COM VGA.DRV

# Startup overlay: loads fonts, palette, startup maze/misc files and initializes
# runtime resources
VINIT.OVR: vinit.lnk ds.rsm
	ln -o VINIT.OVR -f vinit.lnk ds.rsm

# Installer and setup utility: configures hardware drivers and copies game files
VINSTALL.EXE: vinstall.lnk
	ln -o VINSTALL.EXE -f vinstall.lnk

# Maze overlay: level loading, 3D view rendering, movement, region events, maze
# sounds, and roaming NPC turns
VMAZE.OVR: vmaze.lnk ds.rsm
	ln -o VMAZE.OVR -f vmaze.lnk ds.rsm

# Melee overlay: combat setup, monster pictures, action slots, and
# combatant/monster group turns
VMELE.OVR: vmele.lnk ds.rsm
	ln -o VMELE.OVR -f vmele.lnk ds.rsm

# Melee execution overlay: carries out queued combat actions and their overlay
# animations
VMEXE.OVR: vmexe.lnk ds.rsm
	ln -o VMEXE.OVR -f vmexe.lnk ds.rsm

# Maze side actions, entered from VMAZE and always returning to it: running from
# an NPC encounter (random stumble), drinking from a fountain, picking up a
# floor item, and swapping two party members' order. Carries its own copy of the
# 3D view code to redraw the maze while VMAZE is swapped out.
VMEXT.OVR: vmext.lnk ds.rsm
	ln -o VMEXT.OVR -f vmext.lnk ds.rsm

# NPC encounter overlay: talking, trading items, giving quest maps, and NPC
# item/spell menus
VMNPC.OVR: vmnpc.lnk ds.rsm
	ln -o VMNPC.OVR -f vmnpc.lnk ds.rsm

# Level-up overlay: stat and skill point allocation, resistances, and profession
# skill lists
VPCLV.OVR: vpclv.lnk ds.rsm
	ln -o VPCLV.OVR -f vpclv.lnk ds.rsm

# Character creation overlay: rolling stats, choosing profession and skills, and
# naming new characters
VPCMK.OVR: vpcmk.lnk ds.rsm
	ln -o VPCMK.OVR -f vpcmk.lnk ds.rsm

# Character view overlay: member summary, item pages, spell lists, and
# profession evaluation
VPCVW.OVR: vpcvw.lnk ds.rsm
	ln -o VPCVW.OVR -f vpcvw.lnk ds.rsm

# Party options overlay: spell and item action dialogs outside combat
VPOPS.OVR: vpops.lnk ds.rsm
	ln -o VPOPS.OVR -f vpops.lnk ds.rsm

# Treasure overlay: chests and loot division, experience distribution, and
# scripted scene states
VTREA.OVR: vtrea.lnk ds.rsm
	ln -o VTREA.OVR -f vtrea.lnk ds.rsm

# Compiled with other flags than CFLAGS: a binary's line covers each
# of its objects; an object's own line beats it.
VINSTALL.EXE: CFLAGS = -n
ds/aztec/aztec_ovloader.o: CFLAGS = -n
ds/aztec/aztec_bdos.o: CFLAGS = -n
ds/aztec/aztec_impl_csread.o: CFLAGS = -n
ds/aztec/aztec_sprintf.o: CFLAGS = -n
ds/aztec/aztec_movblock.o: CFLAGS = -n
ds/aztec/aztec_setmem.o: CFLAGS = -n
shared/aztec/aztec_strcat.o: CFLAGS = -n
shared/aztec/aztec_strcpy.o: CFLAGS = -n
ds/aztec/aztec_lmalloc.o: CFLAGS = -n
ds/aztec/aztec_lfree.o: CFLAGS = -n
ds/aztec/aztec_lrealloc.o: CFLAGS = -n
ds/data/aztec_csav_begin.o: CFLAGS = -n
ds/aztec/aztec_csav.o: CFLAGS = -n
shared/aztec/aztec_malloc.o: CFLAGS = -n
shared/aztec/aztec_format.o: CFLAGS = -n
shared/aztec/aztec_format_get_pointer.o: CFLAGS = -n
shared/aztec/aztec_format_do_width.o: CFLAGS = -n
shared/aztec/aztec_open.o: CFLAGS = -n
shared/aztec/aztec_lsubs.o: CFLAGS = -n
shared/aztec/aztec_strlen.o: CFLAGS = -n
shared/aztec/aztec_impl_sys.o: CFLAGS = -n
shared/data/aztec_begin_exitad.o: CFLAGS = -n
shared/data/aztec_begin_exitcs.o: CFLAGS = -n
shared/aztec/aztec_begin.o: CFLAGS = -n
shared/aztec/aztec_Croot.o: CFLAGS = -n
shared/aztec/aztec_fltinit.o: CFLAGS = -n
ds/aztec/aztec_impl_stkover.o: CFLAGS = -n
shared/aztec/aztec_io.o: CFLAGS = -n
shared/aztec/aztec_ttyio.o: CFLAGS = -n
shared/aztec/aztec_movmem.o: CFLAGS = -n
shared/aztec/aztec_isatty.o: CFLAGS = -n
shared/aztec/aztec_sbrk.o: CFLAGS = -n
shared/aztec/aztec_brk.o: CFLAGS = -n
shared/aztec/aztec_rsvstk.o: CFLAGS = -n
shared/ovr/aztec_ovbgn.o: CFLAGS = -n
shared/ovr/aztec_cswt.o: CFLAGS = -n
shared/aztec/aztec_strcmp.o: CFLAGS = -n
vinstall/data/install_tables.o: CFLAGS = -n -Z4000
shared/ovr/aztec_swapmem.o: CFLAGS = -n
shared/aztec/aztec_strncpy.o: CFLAGS = -n
