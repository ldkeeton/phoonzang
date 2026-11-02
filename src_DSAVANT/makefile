# auto-generated
all: ds.exe ega.com play.com vbase.ovr vdopt.ovr vga.com vinit.ovr vinstall.exe vmaze.ovr vmele.ovr vmexe.ovr vmext.ovr vmnpc.ovr vpclv.ovr vpcmk.ovr vpcvw.ovr vpops.ovr vtrea.ovr

# Main program: Aztec C runtime, game loop, overlay manager, and driver thunks
# shared by all overlays
ds.exe: ds.lnk
	ln -R +C af00 +D 2100 -o ds.exe -f ds.lnk

# EGA video driver: planar graphics primitives, text, palette, mouse pointer,
# EMS/memory caching, and music slots
ega.com: ega.lnk
	ln -o ega.com -f ega.lnk

# Sound driver: OPL (AdLib) and MPU-401 music player, digitized sample playback
# on the timer interrupt
play.com: play.lnk
	ln -o play.com -f play.lnk

# Base menus overlay: party roster, character import (PC files, Bane party),
# load/save game, configuration menu, copy protection
vbase.ovr: vbase.lnk ds.rsm
	ln -o vbase.ovr -f vbase.lnk ds.rsm

# Do-options overlay: automap view, item use, spellcasting from menu, and floor
# items
vdopt.ovr: vdopt.lnk ds.rsm
	ln -o vdopt.ovr -f vdopt.lnk ds.rsm

# VGA video driver: graphics primitives, text, palette, mouse pointer,
# EMS/memory caching, and music slots
vga.com: vga.lnk
	ln -o vga.com -f vga.lnk

# Startup overlay: loads fonts, palette, startup maze/misc files and initializes
# runtime resources
vinit.ovr: vinit.lnk ds.rsm
	ln -o vinit.ovr -f vinit.lnk ds.rsm

# Installer and setup utility: configures hardware drivers and copies game files
vinstall.exe: vinstall.lnk
	ln -o vinstall.exe -f vinstall.lnk

# Maze overlay: level loading, 3D view rendering, movement, region events, maze
# sounds, and roaming NPC turns
vmaze.ovr: vmaze.lnk ds.rsm
	ln -o vmaze.ovr -f vmaze.lnk ds.rsm

# Melee overlay: combat setup, monster pictures, action slots, and
# combatant/monster group turns
vmele.ovr: vmele.lnk ds.rsm
	ln -o vmele.ovr -f vmele.lnk ds.rsm

# Melee execution overlay: carries out queued combat actions and their overlay
# animations
vmexe.ovr: vmexe.lnk ds.rsm
	ln -o vmexe.ovr -f vmexe.lnk ds.rsm

# Maze side actions, entered from VMAZE and always returning to it: running from
# an NPC encounter (random stumble), drinking from a fountain, picking up a
# floor item, and swapping two party members' order. Carries its own copy of the
# 3D view code to redraw the maze while VMAZE is swapped out.
vmext.ovr: vmext.lnk ds.rsm
	ln -o vmext.ovr -f vmext.lnk ds.rsm

# NPC encounter overlay: talking, trading items, giving quest maps, and NPC
# item/spell menus
vmnpc.ovr: vmnpc.lnk ds.rsm
	ln -o vmnpc.ovr -f vmnpc.lnk ds.rsm

# Level-up overlay: stat and skill point allocation, resistances, and profession
# skill lists
vpclv.ovr: vpclv.lnk ds.rsm
	ln -o vpclv.ovr -f vpclv.lnk ds.rsm

# Character creation overlay: rolling stats, choosing profession and skills, and
# naming new characters
vpcmk.ovr: vpcmk.lnk ds.rsm
	ln -o vpcmk.ovr -f vpcmk.lnk ds.rsm

# Character view overlay: member summary, item pages, spell lists, and
# profession evaluation
vpcvw.ovr: vpcvw.lnk ds.rsm
	ln -o vpcvw.ovr -f vpcvw.lnk ds.rsm

# Party options overlay: spell and item action dialogs outside combat
vpops.ovr: vpops.lnk ds.rsm
	ln -o vpops.ovr -f vpops.lnk ds.rsm

# Treasure overlay: chests and loot division, experience distribution, and
# scripted scene states
vtrea.ovr: vtrea.lnk ds.rsm
	ln -o vtrea.ovr -f vtrea.lnk ds.rsm
