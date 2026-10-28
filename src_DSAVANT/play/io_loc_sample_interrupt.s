; :ts=8
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	music_player_tick:near
	extrn	sound_stop_and_restore_timer:near
	extrn	sample_count_table:byte
	extrn	tick_divider:word
	extrn	sample_step_fraction:byte
	extrn	sample_position:byte
	extrn	sample_limit:byte
	extrn	sample_stream_offset:word
	extrn	sample_stream_offset_alt:word
	extrn	sample_output_port:word
	public	io_loc_sample_interrupt,io_loc_sample_device_tick,sample_fraction_tick,io_loc_port_sample_tick
; INT 08h sample tick: advances the sample index, streams table counts, and acknowledges the PIC.
io_loc_sample_interrupt proc near
	cli
	pushs	ax,ds,dx,bx
sample_increase_step:
	mov	al,byte ptr cs:sample_position
	cmp	al,byte ptr cs:sample_limit
	je	sample_limit_reached
	inc	byte ptr cs:sample_position
	mov	dx,389h		;OPL data port
	mov	bx,offset sample_count_table
	xlat	cs:[bx]
	out	dx,al
	dec	word ptr cs:tick_divider
	je	music_tick_interrupt
	mov	al,20h		;PIC end-of-interrupt
	out	20h,al
	pops	bx,dx,ds,ax
	iret
sample_limit_reached:
	mov	byte ptr cs:sample_direction_state,0
	mov	al,20h		;PIC end-of-interrupt
	out	20h,al
	pops	bx,dx,ds,ax
	iret
	db	0b0h
	sample_direction_state label byte
	db	0
io_loc_sample_interrupt endp

io_loc_sample_device_tick proc near
	cli
	pushs	ax,ds,dx,bx
	cmp	byte ptr cs:sample_direction_state,0
	js	sample_increase_step
	jne	sample_decrease_step
	movseg	ds,0
	mov	al,byte ptr [0]
	mov	dx,389h
	mov	bx,offset sample_count_table
	xlat	cs:[bx]
	out	dx,al
	add	byte ptr cs:sample_step_fraction,80h ; advance the fractional pointer by half a byte
	adc	word ptr cs:sample_stream_offset,0
	jb	sample_stream_wrap
	dec	word ptr cs:tick_divider
	je	music_tick_interrupt
	mov	al,20h
	out	20h,al
	pops	bx,dx,ds,ax
	iret
music_tick_interrupt:
	call	music_player_tick
	outp	388h,40h
	mov	al,20h
	out	20h,al
	pops	bx,dx,ds,ax
	iret
sample_stream_wrap:
	mov	bx,word ptr cs:sample_stream_offset
	dec	bx
	mov	al,byte ptr [bx]
	mov	byte ptr cs:sample_position,al
	mov	byte ptr cs:sample_direction_state,1
	mov	al,20h
	out	20h,al
	pops	bx,dx,ds,ax
	iret
	db	0fah,050h,01eh,052h,053h ; embedded alternate-entry interrupt prologue
sample_decrease_step:
	mov	al,byte ptr cs:sample_position
	cmp	al,0
	je	sample_playback_finished
	dec	byte ptr cs:sample_position
	mov	dx,389h
	mov	bx,offset sample_count_table
	xlat	cs:[bx]
	out	dx,al
	dec	word ptr cs:tick_divider
	je	music_tick_interrupt
	mov	al,20h
	out	20h,al
	pops	bx,dx,ds,ax
	iret
sample_playback_finished:
	mov	byte ptr cs:sample_position,0
	mov	al,3fh		; OPL register address written to port 388h
	mov	dx,388h
	out	dx,al
	call	sound_stop_and_restore_timer
	mov	al,20h
	out	20h,al
	pops	bx,dx,ds,ax
	iret
music_tick_interrupt_exit:
	call	music_player_tick
	mov	al,20h
	out	20h,al
	pops	bx,dx,ds,ax
	iret
sample_stream_end_exit:
	call	sound_stop_and_restore_timer
	mov	al,20h
	out	20h,al
	pops	bx,dx,ds,ax
	iret
io_loc_sample_device_tick endp

sample_fraction_tick proc near
	mov	al,byte ptr [di]
	xlat	cs:[bx]
	out	dx,al
	add	ah,80h
	adc	di,0
	jb	sample_fraction_overflow_exit
	dec	si
	je	sample_fraction_tick_expired
	mov	al,20h
	out	20h,al
	iret
sample_fraction_tick_expired:
	call	music_player_tick
	mov	si,word ptr cs:tick_divider
	mov	al,20h
	out	20h,al
	iret
sample_fraction_overflow_exit:
	call	sound_stop_and_restore_timer
	mov	al,20h
	out	20h,al
	iret
sample_fraction_tick endp

io_loc_port_sample_tick proc near
	pushs	ax,ds,dx,bx
	movseg	ds,0
	mov	al,byte ptr [0]
	mov	dx,word ptr cs:sample_output_port
	mov	bx,offset sample_count_table
	xlat	cs:[bx]
	out	dx,al
	add	byte ptr cs:sample_step_fraction,80h ; fractional step advances the stream pointer every other tick
	adc	word ptr cs:sample_stream_offset_alt,0
	jb	sample_stream_end_exit
	dec	word ptr cs:tick_divider
	je	music_tick_interrupt_exit
	mov	al,20h
	out	20h,al
	pops	bx,dx,ds,ax
	iret
io_loc_port_sample_tick endp
codeseg	ends
	end
