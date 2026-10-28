	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	stop_music_playback:near
	extrn	build_sample_count_table:near
	extrn	pit_sample_interrupt:near
	extrn	io_loc_sample_device_tick:near
	extrn	io_loc_port_sample_tick:near
	extrn	speaker_sample_interrupt:near
	extrn	sample_fraction_interrupt:near
	extrn	sample_fraction_tick:near
	extrn	mark_timer_handler_installed:near
	extrn	timer_handler_installed:byte
	extrn	int08_hooked:byte
	extrn	saved_pic_mask:byte
	extrn	saved_int08_offset:word
	extrn	saved_int08_segment:word
	extrn	play_sample_mode_flag:byte
	extrn	play_device:byte
	extrn	play_device_timer_flag:byte
	extrn	sample_data_segment_a:word
	extrn	sample_data_segment_b:word
	extrn	sample_data_segment_c:word
	extrn	sample_offset:word
	extrn	sample_stream_offset:word
	extrn	sample_stream_offset_alt:word
	extrn	sample_limit:byte
	extrn	sample_position:byte
	extrn	sample_counter_seed_a:byte
	extrn	sample_counter_seed_b:byte
	extrn	sample_counter_seed_c:byte
	extrn	sample_counter_seed_d:byte
	extrn	sample_counter_seed_e:byte
	extrn	sample_counter_seed_f:byte
	extrn	sample_count_table:byte
	extrn	sample_output_port:word
	extrn	tick_divider:word
	extrn	music_enabled:byte
	extrn	music_tempo:word
	public	play_configure_timer_handler
install_mode_byte	equ	12h	;caller byte tested before playback setup
install_flags	equ	14h	;bit 1 selects the early return; bit 0 waits for the timer
sample_count_arg	equ	12h	;caller byte passed to the table builder
segment_arg_low	equ	8	;word used to compute the playback segment
segment_arg_add	equ	0eh	;word added before shifting by four
segment_arg_high	equ	0ah	;word added after shifting
sample_start_arg	equ	0ch	;word subtracted from the sample end
sample_end_arg	equ	0eh	;word used for segment and stream-offset setup
sample_extent_arg	equ	10h	;byte inverted for the playback counters

; Switches the timer vector and sample stream using the caller's saved frame.
play_configure_timer_handler proc near
	.if	<byte ptr install_mode_byte[bp]> == 0
		call	stop_music_playback
		.repeat
		.until	<byte ptr cs:timer_handler_installed> and 0ffh ;wait until the timer flag is set
		jmp	near ptr install_restore_timer
	.endif
	test	byte ptr install_flags[bp],2
	je	install_continue
	test	byte ptr cs:timer_handler_installed,0ffh
	jne	install_continue
	jmp	near ptr install_return
install_continue:
	cli
	test	byte ptr cs:timer_handler_installed,0ffh
	jne	install_timer_active
	jmp	near ptr install_prepare_player
install_timer_active:
	xor	ax,ax
	mov	es,ax
	mov	di,20h
	cli
	cmp	byte ptr cs:int08_hooked,0
	jne	install_vector_saved
	mov	byte ptr cs:int08_hooked,1
	in	al,21h		;PIC mask port
	mov	byte ptr cs:saved_pic_mask,al
	mov	ax,word ptr es:[di]
	mov	word ptr cs:saved_int08_offset,ax
	mov	ax,word ptr es:2[di]
	mov	word ptr cs:saved_int08_segment,ax
install_vector_saved:
	mov	al,34h
	out	43h,al		;PIT command port
	call	io_delay
	mov	ax,48h
	out	40h,al		;PIT channel 0 data port
	call	io_delay
	mov	al,ah
	out	40h,al		;PIT channel 0 data port
	cmp	byte ptr cs:play_sample_mode_flag,0
	je	install_choose_standard
	mov	bl,byte ptr cs:play_device
	shl	bl,1
	xor	bh,bh
	mov	dx,word ptr cs:install_tick_table+10h[bx]
	cmp	byte ptr cs:timer_handler_installed,0
	je	install_write_vector
	mov	dx,word ptr cs:install_tick_table+18h[bx]
	jmp	near ptr install_write_vector
install_choose_standard:
	mov	bl,byte ptr cs:play_device
	shl	bl,1
	xor	bh,bh
	mov	dx,word ptr cs:install_tick_table[bx]
	cmp	byte ptr cs:timer_handler_installed,0
	je	install_write_vector
	mov	dx,word ptr cs:install_tick_table+8[bx]
	jmp	near ptr install_write_vector
install_tick_table label word
	dw	offset pit_sample_interrupt
	dw	offset io_loc_sample_device_tick
	dw	offset io_loc_port_sample_tick
	dw	offset io_loc_port_sample_tick
	dw	offset pit_sample_interrupt
	dw	offset io_loc_sample_device_tick
	dw	offset io_loc_port_sample_tick
	dw	offset io_loc_port_sample_tick
	dw	offset speaker_sample_interrupt
	dw	offset sample_fraction_interrupt
	dw	offset sample_fraction_tick
	dw	offset sample_fraction_tick
	dw	offset speaker_sample_interrupt
	dw	offset sample_fraction_interrupt
	dw	offset sample_fraction_tick
	dw	offset sample_fraction_tick
install_write_vector:
	cld
	xor	ax,ax
	mov	es,ax
	mov	di,20h
	mov	ax,dx
	stosw
	mov	ax,cs
	stosw
install_prepare_player:
	cli
	cmp	byte ptr cs:play_device,1
	jne	install_not_device_one
	mov	al,0
	cmp	byte ptr cs:timer_handler_installed,0
	je	install_store_device_flag
	mov	al,0ffh
install_store_device_flag:
	mov	byte ptr cs:play_device_timer_flag,al
install_not_device_one:
	cmp	byte ptr cs:play_device,0
	jne	install_device_ready
	in	al,61h		;speaker control port
	or	al,3
	out	61h,al		;speaker control port
install_device_ready:
	call	build_sample_count_table
	mov	al,0feh
	out	21h,al		;PIC mask port
	mov	ax,word ptr segment_arg_low[bp]
	add	ax,word ptr segment_arg_add[bp]
	mov	cl,4
	shr	ax,cl		;convert the combined offset to paragraphs
	add	ax,word ptr segment_arg_high[bp]
	sub	ax,1000h	;adjust the segment for the loaded image
	mov	es,ax
	mov	ds,ax
	mov	word ptr cs:sample_data_segment_a,ax
	mov	word ptr cs:sample_data_segment_b,ax
	mov	word ptr cs:sample_data_segment_c,ax
	mov	ax,word ptr segment_arg_add[bp]
	sub	ax,word ptr sample_start_arg[bp]
	neg	ax
	and	al,0feh
	add	ax,10h
	mov	di,ax
	mov	bx,ax
	mov	word ptr cs:sample_offset,ax
	mov	word ptr cs:sample_stream_offset,ax
	mov	word ptr cs:sample_stream_offset_alt,ax
	mov	al,byte ptr [bx]
	mov	byte ptr cs:sample_limit,al
	mov	byte ptr cs:sample_position,0
	mov	al,0ffh
	sub	al,byte ptr sample_extent_arg[bp]
	mov	byte ptr cs:sample_counter_seed_a,al
	mov	byte ptr cs:sample_counter_seed_b,al
	mov	byte ptr cs:sample_counter_seed_c,al
	mov	byte ptr cs:sample_counter_seed_d,al
	mov	byte ptr cs:sample_counter_seed_e,al
	mov	byte ptr cs:sample_counter_seed_f,al
	cmp	byte ptr cs:play_device,1
	je	install_opl_reset
	cmp	byte ptr cs:play_device,4
	jne	install_clear_timer_flag
install_opl_reset:
	outp	388h,40h
install_clear_timer_flag:
	mov	byte ptr cs:timer_handler_installed,0
	cmp	byte ptr cs:play_sample_mode_flag,0
	jne	install_music_timer
	mov	al,byte ptr cs:saved_pic_mask
	and	al,0feh
	out	21h,al		;PIC mask port
	sti
	test	byte ptr install_flags[bp],1
	je	install_return
	.repeat
	.until	<byte ptr cs:timer_handler_installed> and 0ffh ;wait until the timer flag is set
install_return:
	pops	bx,dx,ds,es,si,di,bp
	sti
	ret
install_music_timer:
	mov	al,34h
	out	43h,al		;PIT command port
	mov	ax,48h
	out	40h,al		;PIT channel 0 data port
	call	io_delay
	mov	al,ah
	out	40h,al		;PIT channel 0 data port
	mov	al,0feh
	out	21h,al		;PIC mask port
	movseg	ds,es
	mov	cx,20b0h
	mov	bx,offset sample_count_table
	mov	dx,42h
	cmp	byte ptr cs:play_device,1
	jne	install_choose_port
	mov	dx,389h
install_choose_port:
	cmp	byte ptr cs:play_device,3
	je	install_use_sample_port
	cmp	byte ptr cs:play_device,2
	jne	install_start_music_timer
install_use_sample_port:
	mov	dx,word ptr cs:sample_output_port
install_start_music_timer:
	mov	si,word ptr cs:tick_divider
	sti
	.repeat
		sti
	.until	<byte ptr cs:timer_handler_installed> and 0ffh ;wait for timer installation to complete
	cmp	byte ptr cs:music_enabled,0
	je	install_restore_mask
	mov	al,34h
	out	43h,al		;PIT command port
	mov	ax,word ptr cs:music_tempo
	mov	bl,48h
	mul	bl
	out	40h,al		;PIT channel 0 data port
	call	io_delay
	mov	al,ah
	out	40h,al		;PIT channel 0 data port
install_restore_mask:
	mov	al,byte ptr cs:saved_pic_mask
	out	21h,al		;PIC mask port
	jmp	short install_return
play_configure_timer_handler endp

io_delay proc near
	jmp	near ptr install_delay_return
install_delay_return:
	ret
io_delay endp

install_restore_timer:
	cmp	byte ptr cs:int08_hooked,0
	jne	install_restore_vector
	jmp	near ptr install_return
install_restore_vector:
	cld
	cli
	xor	ax,ax
	mov	es,ax
	mov	di,20h
	mov	ax,word ptr cs:saved_int08_offset
	stosw
	mov	ax,word ptr cs:saved_int08_segment
	stosw
	mov	byte ptr cs:int08_hooked,0
	call	mark_timer_handler_installed
	mov	al,36h
	out	43h,al
	call	io_delay
	mov	ax,0
	out	40h,al
	call	io_delay
	mov	al,ah
	out	40h,al
	mov	al,byte ptr cs:saved_pic_mask
	out	21h,al
	sti
	jmp	near ptr install_return
cseg_0658 label byte
	db	0,0
jumptable_0789_case_1 label near
	codeseg	ends
	end
