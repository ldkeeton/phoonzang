	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg

	extrn	music_enabled:byte
	extrn	stream_offset:word
	extrn	stream_start_offset:word
	extrn	stream_segment:word
	extrn	stream_start_segment:word
	extrn	loop_at_end:byte
	extrn	tick_divider:word
	extrn	restart_delay:word
	extrn	opl_voice_records:byte
	extrn	opl_voice_count:byte
	extrn	music_device:byte
	extrn	chain_period:word
	extrn	chain_countdown:word
	extrn	hook_int08_and_configure_pit_:near
	extrn	device_nop_:near
	extrn	opl_init_:near
	extrn	mpu401_reset_with_retries_:near

stream_offset_arg	equ	8	; caller stream start offset
stream_segment_arg	equ	0ah	; caller stream segment
loop_flag_arg	equ	0ch	; caller loop-at-end flag

; Set up stream state, clear OPL voice records, then enable playback on success.
	procdef	music_start
	push	bp
	mov	bp,sp
	push	bx
	mov	byte ptr cs:music_enabled,0
	mov	ax,word ptr stream_offset_arg[bp]
	mov	word ptr cs:stream_offset,ax
	mov	word ptr cs:stream_start_offset,ax
	mov	ax,word ptr stream_segment_arg[bp]
	mov	word ptr cs:stream_segment,ax
	mov	word ptr cs:stream_start_segment,ax
	mov	ax,word ptr loop_flag_arg[bp]
	mov	byte ptr cs:loop_at_end,al
	mov	word ptr cs:tick_divider,1
	mov	word ptr cs:restart_delay,1
	mov	bx,offset opl_voice_records
; Clear each five-byte voice record, including its disabled marker.
	.repeat
		mov	byte ptr cs:[bx],0
		mov	byte ptr cs:[bx+1],0
		mov	byte ptr cs:[bx+2],0ffh
		mov	word ptr cs:[bx+3],0
		add	bx,5
	.until	bx ge <offset opl_voice_count>
	mov	al,byte ptr cs:music_device
	mov	ax,word ptr cs:chain_period
	mov	word ptr cs:chain_countdown,ax
	call	loc_HPIL
	cmp	ax,0
	jne	music_start_done
	call	hook_int08_and_configure_pit_
	mov	byte ptr cs:music_enabled,1
music_start_done:
	pops	bx,bp
	ret
	pend	music_start

; Dispatch initialization by the current music device.
loc_HPIL:
	mov	bl,byte ptr cs:music_device
	xor	bh,bh
	shl	bx,1
	mov	ax,0
	call	word ptr cs:[bx+music_start_device_dispatch_table]
	ret

music_start_device_dispatch_table label word
	dw	offset device_nop_
	dw	offset opl_init_
	dw	offset device_nop_
	dw	offset device_nop_
	dw	offset opl_init_
	dw	offset mpu401_reset_with_retries_

codeseg	ends
	end
