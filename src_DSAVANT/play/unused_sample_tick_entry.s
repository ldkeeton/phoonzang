; :ts=8
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	music_player_tick_:near
	extrn	sound_stop_and_restore_timer_:near
	extrn	sample_output_table:byte
	extrn	tick_divider:word
	extrn	sample_step_fraction:byte
	extrn	sample_position:byte
	extrn	sample_limit:byte
	extrn	sample_output_port:word
; INT 08h sample tick: advances the sample index, streams table counts, and acknowledges the PIC.
	procdef	unused_sample_tick_entry
	cli
	pushs	ax,ds,dx,bx
sample_increase_step:
	mov	al,byte ptr cs:sample_position
	cmp	al,byte ptr cs:sample_limit
	je	sample_limit_reached
	inc	byte ptr cs:sample_position
	mov	dx,389h		;OPL data port
	mov	bx,offset sample_output_table
	xlat	cs:[bx]
	out	dx,al
	dec	word ptr cs:tick_divider
	je	music_tick_interrupt
	mov	al,20h		;PIC end-of-interrupt
	out	20h,al
	pops	bx,dx,ds,ax
	iret
sample_limit_reached:
	mov	byte ptr cs:play_device_timer_flag,0
	mov	al,20h		;PIC end-of-interrupt
	out	20h,al
	pops	bx,dx,ds,ax
	iret
	db	0b0h
	public	play_device_timer_flag
	play_device_timer_flag label byte
	db	0
	pend	unused_sample_tick_entry

	procdef	io_loc_sample_device_tick
	cli
	pushs	ax,ds,dx,bx
	cmp	byte ptr cs:play_device_timer_flag,0
	js	sample_increase_step
	jne	sample_decrease_step
	public	load_sample_segment_b
load_sample_segment_b:
	movseg	ds,0
	public	load_sample_stream
load_sample_stream:
sample_stream_offset	equ	load_sample_stream+1	;operand word of the load below
	mov	al,byte ptr [0]
	mov	dx,389h
	mov	bx,offset sample_output_table
	xlat	cs:[bx]
	out	dx,al
	public	add_sample_step_b
add_sample_step_b:
	add	byte ptr cs:sample_step_fraction,80h ; advance the fractional pointer by half a byte
	adc	word ptr cs:[sample_stream_offset],0
	jb	sample_stream_wrap
	dec	word ptr cs:tick_divider
	je	music_tick_interrupt
	mov	al,20h
	out	20h,al
	pops	bx,dx,ds,ax
	iret
music_tick_interrupt:
	call	music_player_tick_
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
	mov	byte ptr cs:play_device_timer_flag,1
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
	mov	bx,offset sample_output_table
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
	call	sound_stop_and_restore_timer_
	mov	al,20h
	out	20h,al
	pops	bx,dx,ds,ax
	iret
music_tick_interrupt_exit:
	call	music_player_tick_
	mov	al,20h
	out	20h,al
	pops	bx,dx,ds,ax
	iret
sample_stream_end_exit:
	call	sound_stop_and_restore_timer_
	mov	al,20h
	out	20h,al
	pops	bx,dx,ds,ax
	iret
	pend	io_loc_sample_device_tick

	procdef	sample_fraction_tick
	mov	al,byte ptr [di]
	xlat	cs:[bx]
	out	dx,al
	public	add_sample_step_f
add_sample_step_f:
	add	ah,80h
	adc	di,0
	jb	sample_fraction_overflow_exit
	dec	si
	je	sample_fraction_tick_expired
	mov	al,20h
	out	20h,al
	iret
sample_fraction_tick_expired:
	call	music_player_tick_
	mov	si,word ptr cs:tick_divider
	mov	al,20h
	out	20h,al
	iret
sample_fraction_overflow_exit:
	call	sound_stop_and_restore_timer_
	mov	al,20h
	out	20h,al
	iret
	pend	sample_fraction_tick

	procdef	io_loc_port_sample_tick
	pushs	ax,ds,dx,bx
	public	load_sample_segment_c
load_sample_segment_c:
	movseg	ds,0
	public	load_sample_stream_alt
load_sample_stream_alt:
sample_stream_offset_alt	equ	load_sample_stream_alt+1	;operand word of the load below
	mov	al,byte ptr [0]
	mov	dx,word ptr cs:sample_output_port
	mov	bx,offset sample_output_table
	xlat	cs:[bx]
	out	dx,al
	public	add_sample_step_c
add_sample_step_c:
	add	byte ptr cs:sample_step_fraction,80h ; fractional step advances the stream pointer every other tick
	adc	word ptr cs:[sample_stream_offset_alt],0
	jb	sample_stream_end_exit
	dec	word ptr cs:tick_divider
	je	music_tick_interrupt_exit
	mov	al,20h
	out	20h,al
	pops	bx,dx,ds,ax
	iret
	pend	io_loc_port_sample_tick
codeseg	ends
	end
