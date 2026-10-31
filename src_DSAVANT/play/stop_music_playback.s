	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	music_enabled:byte
	extrn	sample_idle:byte
	extrn	music_device:byte
	extrn	restore_timer_handler_:near
	extrn	device_nop_:near
	extrn	opl_keys_off_:near
	extrn	mpu_all_notes_off_:near

; Stop playback, restore the timer handler when no sample is playing, and silence the device.
	procdef	stop_music_playback
	push	bx
	.if	<byte ptr cs:music_enabled> ne 0
		; Clear the playback flag before restoring timer state.
		mov	byte ptr cs:music_enabled,0
		.if	<byte ptr cs:sample_idle> ne 0
			call	restore_timer_handler_
		.endif
		; Dispatch to the stop routine for the selected device.
		mov	bl,byte ptr cs:music_device
		xor	bh,bh
		shl	bx,1
		call	word ptr cs:[bx+stop_music_playback_dispatch_table]
	.endif
	pop	bx
	ret
	pend	stop_music_playback

stop_music_playback_dispatch_table label word
	dw	offset device_nop_
	dw	offset opl_keys_off_
	dw	offset device_nop_
	dw	offset device_nop_
	dw	offset opl_keys_off_
	dw	offset mpu_all_notes_off_

codeseg	ends
	end
