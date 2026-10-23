; brings up the machine: seeds the random generator from the BIOS tick, detects
; video and mouse, loads the drivers and clears the screen; returns [bp-2]
	include	lmacros.h
	include	hlmacros.h
	assume	cs:codeseg
	extrn	seed_random_from_timer:near, calibrate_loops_per_ms:near
	extrn	detect_video_adapter:near, allocate_driver_blocks:near
	extrn	detect_mouse:near, detect_expanded_memory:near
	extrn	load_play_driver:near, load_video_driver:near
	extrn	gfx_fill_screen_buffer:near
	public	init_system_hardware_
mode	equ	4		;caller's video mode argument
result	equ	-2		;status word: 1 = VGA, 2 = EGA, 1000h = mouse
driver_name equ -4		;video driver file name set by the detector
init_system_hardware_ proc near
	frame
	cld
	sub	sp,4		;reserve result and driver_name for the frame-sharing helpers
	pushs	ds,es,si,di
	movseg	es,ds
	call	seed_random_from_timer	;seed the random generator from the BIOS tick
	call	calibrate_loops_per_ms	;calibrate loops_per_ms from the BIOS tick
	call	detect_video_adapter	;set result and driver_name for the adapter found
	call	allocate_driver_blocks	;no video driver (result 0): return without allocating
	call	detect_mouse		;set bit 1000h in result if a mouse answers
	call	detect_expanded_memory	;probe EMS and record its page frame
	call	load_play_driver	;load play.drv and build its segment table
	call	load_video_driver	;load the driver named in driver_name
	mov	ax,0		;colour 0: clear the screen
	push	ax
	call	gfx_fill_screen_buffer
	add	sp,2
	mov	ax,word ptr result[bp]	;return the detector/mouse status word
	pops	di,si,es,ds
	unframe
init_system_hardware_ endp
	finish
	end
