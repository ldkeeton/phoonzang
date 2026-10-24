; :ts=8
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	music_device:byte
	extrn	stream_running:byte
	extrn	restart_delay:word
	extrn	tick_divider:word
	extrn	chain_period:word
	extrn	chain_countdown:word
	extrn	timer_handler_installed:byte
	extrn	music_enabled:byte
	extrn	loop_at_end:byte
	extrn	stream_start_offset:word
	extrn	stream_segment:word
	extrn	stream_offset:word
	extrn	music_tempo:word
	extrn	playback_volume:byte
	extrn	last_playback_volume:byte
	extrn	music_data_segment:word
	extrn	music_data_offset:word
	extrn	event_class_flag:byte
	extrn	note_started:byte
	extrn	event_byte_counts:byte
	extrn	channel_last_byte:byte
	extrn	byte_remap_table:byte
	extrn	current_event:byte
	extrn	event_channel:byte
	extrn	event_command:byte
	extrn	music_stop:near
	extrn	loc_RTLK:near
	extrn	music_loop_event:near
	extrn	mpu_set_volume:near
	extrn	note_event_low:near
	extrn	note_event_high:near
	extrn	skip_word_event:near
	extrn	store_nibble_event:near
	extrn	skip_byte_event:near
	extrn	store_word_event:near
	extrn	mpu_send_byte:near
	extrn	restore_timer_handler:near
	public	music_player_tick
; one music step: chain the saved INT 08h handler on a countdown, then run the track stream (MPU-401 inline encoding or OPL dispatch)
music_player_tick proc near
	pushs	bx,ax,ds,di,cx,si,es,dx
	cld				;string ops below run forward
	dec	word ptr cs:chain_countdown	;countdown to the saved handler
	.if	zero?
		mov	ax,word ptr cs:chain_period
		mov	word ptr cs:chain_countdown,ax
		pushf
		db	9ah,0,0,0,0	;call far 0:0, operand patched with the saved vector
	.endif
	mov	ax,word ptr cs:music_tempo
	mov	word ptr cs:tick_divider,ax	;reload the handler tick divider
	cmp	byte ptr cs:music_enabled,0
	je	music_stop		;not loaded: silence and return
	dec	word ptr cs:restart_delay
	jne	music_stop		;restart delay still counting
	cmp	byte ptr cs:stream_running,1
	je	loc_RTLK		;already running
	mov	byte ptr cs:stream_running,1
	mov	si,word ptr cs:stream_offset	;track offset saved by the loop command
	movseg	ds,<word ptr cs:stream_segment>
next_event:
	lodsb				;next track byte, stream in ds:si
	.if	al == 0feh
		jmp	music_loop_event	;loop/restart command
	.endif
	.if	al == 0ffh
		jmp	end_of_stream	;end of stream
	.endif
	.if	<byte ptr cs:music_device> ne 5
		jmp	dispatch_event	;only device 5 (MPU-401) uses the inline encoding
	.endif
	mov	es,word ptr cs:music_data_segment
	pushs	ax
	mov	al,byte ptr cs:playback_volume
	.if	al ne <byte ptr cs:last_playback_volume>
		mov	byte ptr cs:last_playback_volume,al
		call	mpu_set_volume	;volume changed: resend it to the MPU
	.endif
	pops	ax
	mov	byte ptr cs:current_event,al	;event byte
	mov	bl,al
	and	bl,0fh			;low nibble: channel
	mov	byte ptr cs:event_channel,bl
	mov	bl,al
	shr	bl,1
	shr	bl,1
	shr	bl,1
	shr	bl,1			;high nibble: command
	mov	byte ptr cs:event_command,bl
	.if	<byte ptr cs:event_command> ne 4
		jmp	ss_done		;command 4 carries a table index
	.endif
	mov	al,byte ptr cs:event_channel
	xor	ah,ah
	mov	bx,offset channel_last_byte
	add	bx,ax
	lodsb
	mov	byte ptr cs:[bx],al	;remember the channel's data byte
	.if	al == 3eh
		jmp	next_event	;3eh: no data byte to send
	.endif
	mov	bx,word ptr cs:music_data_offset
	xor	ah,ah
	add	bx,ax
	mov	al,0c0h
	or	al,byte ptr cs:event_channel
	inc	al			;status 0c0h|channel, then +1
	call	mpu_send_byte
	mov	al,byte ptr es:[bx]
	call	mpu_send_byte		;send the table byte for this index
	jmp	next_event
ss_done:
	mov	bl,byte ptr cs:event_channel
	xor	bh,bh
	.if	<byte ptr cs:[bx+channel_last_byte]> == 3eh
		mov	byte ptr cs:event_channel,8
		mov	bx,offset byte_remap_table
		mov	al,byte ptr [si]
dup_scan:
		cmp	al,byte ptr cs:[bx]
		je	dup_found
		add	bx,2
		cmp	word ptr cs:[bx],0ffh
		jne	dup_scan	;table ends with 0ffffh
		lodsw
		jmp	next_event
dup_found:
		mov	al,byte ptr cs:[bx+1]
		mov	byte ptr [si],al	;rewrite byte with its mapped twin
	.endif
	mov	bl,byte ptr cs:event_command
	xor	bh,bh
	mov	cl,byte ptr cs:[bx+event_byte_counts]
	xor	ch,ch			;cl: data bytes for this command
	mov	al,byte ptr cs:event_command
	shl	al,1
	shl	al,1
	shl	al,1
	shl	al,1			;command nibble into the high half
	or	al,byte ptr cs:event_channel
	or	al,80h
	inc	al			;status 80h|event, then +1
	jmp	send_byte
next_byte:
	lodsb
send_byte:
	call	mpu_send_byte
	loop	next_byte		;send cl data bytes
	jmp	next_event
dispatch_event:
	mov	byte ptr cs:event_class_flag,0
	.if	al le 0fh
		jmp	note_event_low	;00h-0fh
	.endif
	.if	al le 1fh
		mov	byte ptr cs:event_class_flag,1
		mov	byte ptr cs:note_started,0
		jmp	note_event_high	;10h-1fh
	.endif
	.if	al le 2fh
		jmp	skip_word_event	;20h-2fh
	.endif
	.if	al le 4fh
		jmp	store_nibble_event	;30h-4fh
	.endif
	.if	al le 5fh
		jmp	skip_byte_event	;50h-5fh
	.endif
	.if	al le 6fh
		jmp	store_word_event	;60h-6fh
	.endif
end_of_stream:
	.if	<byte ptr cs:loop_at_end> ne 0
		mov	si,word ptr cs:stream_start_offset
		jmp	next_event	;loop: restart at the saved start
	.endif
	mov	byte ptr cs:music_enabled,0
	.if	<byte ptr cs:timer_handler_installed> == 0
		jmp	music_stop	;no handler installed: just stop
	.endif
	call	restore_timer_handler	;remove the installed handler
	jmp	music_stop
music_player_tick endp
codeseg	ends
	end
