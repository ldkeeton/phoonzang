	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	sample_idle:byte
	extrn	music_tempo:word
	extrn	music_enabled:byte
	extrn	saved_pic_mask:byte
	extrn	saved_int08_segment:word
	extrn	saved_int08_offset:word
	extrn	int08_hooked:byte
	extrn	set_int08_vector_:near
	extrn	io_delay_:near

; Stop the speaker, restore the timer interrupt when music is disabled, and
; program the timer divisor for either the active player or the saved handler.
	procdef	sound_stop_and_restore_timer
	push	dx
	in	al,61h
	and	al,0feh		; Clear the speaker gate bit.
	out	61h,al
	mov	byte ptr cs:sample_idle,0ffh
	mov	ax,word ptr cs:music_tempo
	mov	bl,48h		; Scale tempo by the observed timer divisor factor.
	mul	bl
	mov	bx,ax		; Keep the active timer divisor for PIT programming.
	movseg	ds,cs
	mov	dx,0bb4h		; Active timer handler offset in the code segment.
	cmp	byte ptr cs:music_enabled,0
	jne	short active_handler

	; With playback disabled, restore the saved mask and interrupt vector.
	mov	al,byte ptr cs:saved_pic_mask
	out	21h,al
	mov	bx,0
	mov	ds,word ptr cs:saved_int08_segment
	mov	dx,word ptr cs:saved_int08_offset
	mov	byte ptr cs:int08_hooked,0
active_handler:
	call	set_int08_vector_
	mov	al,36h		; PIT channel 0, low/high byte, mode 3.
	out	43h,al
	call	io_delay_
	mov	ax,bx
	out	40h,al		; Send low divisor byte.
	call	io_delay_
	mov	al,ah
	out	40h,al		; Then send high divisor byte.
	pop	dx
	ret
	pend	sound_stop_and_restore_timer

codeseg	ends
	end
