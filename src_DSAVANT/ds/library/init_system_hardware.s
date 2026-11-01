; brings up the machine: seeds the random generator from the BIOS tick, detects
; video and mouse, loads the drivers and clears the screen; returns [bp-2]
	include	lmacros.h
	assume	cs:codeseg
	extrn	seed_random_from_timer_:near, calibrate_loops_per_ms_:near
	extrn	detect_video_adapter_:near, allocate_driver_blocks_:near
	extrn	detect_mouse:near, detect_expanded_memory:near
	extrn	load_play_driver_:near, load_video_driver_:near
	extrn	call_fill_screen_buffer_:near
result	equ	-2		;status word: 1 = VGA, 2 = EGA, 1000h = mouse
driver_name equ -4		;video driver file name set by the detector
	procdef	init_system_hardware,<<mode,word>>	;mode: caller's video mode argument
	cld
	sub	sp,4		;reserve result and driver_name for the frame-sharing helpers
	pushs	ds,es,si,di
	movseg	es,ds
	call	seed_random_from_timer_	;seed the random generator from the BIOS tick
	call	calibrate_loops_per_ms_	;calibrate loops_per_ms from the BIOS tick
	call	detect_video_adapter_	;set result and driver_name for the adapter found
	call	allocate_driver_blocks_	;no video driver (result 0): return without allocating
	call	detect_mouse		;set bit 1000h in result if a mouse answers
	call	detect_expanded_memory	;probe EMS and record its page frame
	call	load_play_driver_	;load play.drv and build its segment table
	call	load_video_driver_	;load the driver named in driver_name
	mov	ax,0		;colour 0: clear the screen
	push	ax
	call	call_fill_screen_buffer_
	add	sp,2
	mov	ax,word ptr result[bp]	;return the detector/mouse status word
	pops	di,si,es,ds
	mov	sp,bp
	pret
	pend	init_system_hardware
	finish
	end
