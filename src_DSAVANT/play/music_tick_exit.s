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
	extrn	music_patch_segment:word
	extrn	music_patch_offset:word
	extrn	event_class_flag:byte
	extrn	note_started:byte
	extrn	event_byte_counts:byte
	extrn	channel_last_byte:byte
	extrn	byte_remap_table:byte
	extrn	current_event:byte
	extrn	event_channel:byte
	extrn	event_command:byte
	extrn	mpu_set_volume:near
	extrn	mpu_send_byte:near
	extrn	saved_pic_mask:byte
	extrn	int08_hooked:byte
	extrn	io_delay:near
	extrn	set_int08_vector:near
	extrn	play_device:byte
	extrn	opl_key_on_bit:byte
	extrn	opl_pitch_update:near
	extrn	opl_write:near
	extrn	opl_velocity_scale_table:byte
	extrn	opl_rhythm_register_shadow:byte
	extrn	opl_register_shadow:byte
	extrn	device_load_patch:near
	extrn	device_note_on:near
	extrn	device_note_off:near
	extrn	device_nop:near
	extrn	opl_apply_volume:near
	public	restore_timer_handler,music_loop_event,string_loc_PUTK
	public	store_nibble_event,skip_byte_event,store_word_event,skip_word_event
	public	note_event_high,note_event_low
	public	opl_voice_records,opl_voice_count,opl_note_semitone,opl_note_index
	public	opl_note_velocity,opl_channel_index,opl_pitch_value,opl_pitch_range
	public	music_tick_exit,loc_RTLK,music_player_tick
; music_player_tick's shared exit, stored before its entry: clear the running flag, leave OPL index 40h selected on device 1, and pop the registers the tick pushed.
music_tick_exit proc near
	mov	byte ptr cs:stream_running,0
	cmp	byte ptr cs:play_device,1
	jne	loc_RTLK
	outp	0388h,040h
loc_RTLK:
	pops	dx,es,si,cx,di,ds,ax,bx
	ret
music_tick_exit endp

; one music step: chain the saved INT 08h handler on a countdown, then run the track stream (MPU-401 inline encoding or OPL dispatch)
music_player_tick proc near
	pushs	bx,ax,ds,di,cx,si,es,dx
	cld				;string ops below run forward
	dec	word ptr cs:chain_countdown	;countdown to the saved handler
	.if	zero?
		mov	ax,word ptr cs:chain_period
		mov	word ptr cs:chain_countdown,ax
		pushf
		saved_int08_offset	equ	music_player_tick+1ah	;operand words of the call far below
		saved_int08_segment	equ	music_player_tick+1ch
		db	9ah,0,0,0,0	;call far 0:0, operand patched with the saved vector
	.endif
	mov	ax,word ptr cs:music_tempo
	mov	word ptr cs:tick_divider,ax	;reload the handler tick divider
	cmp	byte ptr cs:music_enabled,0
	je	music_tick_exit		;not loaded: silence and return
	dec	word ptr cs:restart_delay
	jne	music_tick_exit		;restart delay still counting
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
	mov	es,word ptr cs:music_patch_segment
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
	mov	bx,word ptr cs:music_patch_offset
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
		jmp	music_tick_exit	;no handler installed: just stop
	.endif
	call	restore_timer_handler	;remove the installed handler
	jmp	music_tick_exit
restore_timer_handler proc near
	pushs	ax,ds,dx
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
	mov	ds,word ptr cs:[saved_int08_segment]
	mov	dx,word ptr cs:[saved_int08_offset]
	call	set_int08_vector
	mov	byte ptr cs:int08_hooked,0
	pops	dx,ds,ax
	ret
restore_timer_handler endp

music_loop_event proc near
	lodsw
	.if	ax == 0
		jmp	next_event
	.endif
	mov	word ptr cs:restart_delay,ax
	mov	word ptr cs:stream_offset,si
	jmp	music_tick_exit
music_loop_event endp

; OPL channel table and patch lookup records.
channel_patch_index label byte
	db	16 dup (0ffh)
special_note_effect_map label byte
	db	56h,06h,59h,06h,24h,06h,2dh,07h,32h,08h,39h,0ah,3bh,09h,0ffh
special_note_filter_values label byte
	db	07h,0ffh,0ffh,03h,0eh
opl_voice_records label byte
	db	55 dup (0)
opl_voice_count label byte
	db	08h
event_channel_index label byte
	db	0
opl_note_semitone label byte
	db	0
channel_patch_value label byte
	db	0
opl_note_index label byte
	db	0
opl_note_velocity label byte
	db	0
opl_channel_index label byte
	db	0
opl_pitch_value label word
	dw	2000h
opl_pitch_range label word
	dw	0
special_note_flag label byte
	db	0
special_note_effect label byte
	db	0
special_note_match label byte
	db	0
opl_operator_count label byte
	db	0
opl_operator_slot_0 label byte
	db	0
opl_operator_slot_1 label byte
	db	0
opl_operator_slot_2 label byte
	db	0
opl_operator_slot_3 label byte
	db	0
opl_voice_candidate label byte
	db	0
opl_voice_record_ptr label byte
	dw	0

string_loc_PUTK proc near
	pushs	ax,bx,cx,es,si
	and	al,0fh
	mov	byte ptr cs:event_channel_index,al
	mov	bx,offset channel_patch_index
	xlat cs:[bx]
	mov	byte ptr cs:channel_patch_value,al
	mov	byte ptr cs:special_note_match,0ffh
	mov	bx,offset special_note_filter_values
find_patch:
	inc	bx
	cmp	word ptr cs:[bx],0ffh
	je	patch_found
	cmp	al,byte ptr cs:[bx]
	jne	find_patch
	mov	byte ptr cs:special_note_match,0
patch_found:
	mov	byte ptr cs:opl_operator_count,1
	mov	al,byte ptr cs:channel_patch_value
	shl	al,1
	shl	al,1
	mov	byte ptr cs:opl_operator_slot_0,al
	inc	al
	mov	byte ptr cs:opl_operator_slot_1,al
	inc	al
	mov	byte ptr cs:opl_operator_slot_2,al
	inc	al
	mov	byte ptr cs:opl_operator_slot_3,al
	inc	al
	pop	si
	lodsw
	cmp	byte ptr cs:play_device,5
	je	device_pitch_ready
	sub	al,0ch
device_pitch_ready:
	mov	byte ptr cs:opl_note_semitone,al
	mov	al,ah
	cmp	byte ptr cs:play_device,5
	je	midi_pitch_ready
	shr	al,1
	shr	al,1
	add	al,60h
midi_pitch_ready:
	mov	byte ptr cs:opl_note_velocity,al
	mov	byte ptr cs:special_note_flag,0
	mov	ah,byte ptr cs:channel_patch_value
	cmp	ah,3eh
	jne	pitch_done
	mov	bx,offset special_note_effect_map
find_remap:
	cmp	word ptr cs:[bx],0ffh
	je	remap_found
	cmp	byte ptr cs:[bx],al
	je	remap_found
	add	bx,2
	jmp	find_remap
remap_found:
	mov	byte ptr cs:special_note_flag,1
	mov	al,byte ptr cs:[bx+1]
	mov	byte ptr cs:special_note_effect,al
pitch_done:
	pops	es,cx,bx,ax
	ret
string_loc_PUTK endp

store_nibble_event proc near
	mov	bx,offset channel_patch_index
	and	al,0fh
	xor	ah,ah
	add	bx,ax
	lodsb
	mov	byte ptr cs:[bx],al
	jmp	next_event
store_nibble_event endp
skip_byte_event proc near
	lodsb
	jmp	next_event
skip_byte_event endp
store_word_event proc near
	lodsw
	mov	word ptr cs:opl_pitch_value,ax
	jmp	next_event
store_word_event endp
skip_word_event proc near
	lodsw
	jmp	next_event
skip_word_event endp
; Three trailing zero bytes in the original event area.
event_dispatch_padding label byte
	db	0,0,0
; High and low OPL event handlers are dispatched by this player's opcode decoder.
note_event_high proc near
	call	string_loc_PUTK
	cmp	byte ptr cs:channel_patch_value,0ffh
	jne	note_high_have_patch
	jmp	near ptr next_event
note_high_have_patch:
	cmp	byte ptr cs:opl_note_velocity,0
	jne	note_high_have_velocity
	jmp	near ptr note_low_check_special
note_high_have_velocity:
	cmp	byte ptr cs:special_note_flag,0
	jne	note_high_special
	jmp	near ptr note_voice_allocate
note_high_special:
	cmp	byte ptr cs:music_device,1
	jmp	near ptr note_voice_allocate
string_loc_JSPK:
	mov	al,byte ptr cs:opl_note_velocity
	xor	ah,ah
	mov	bx,offset opl_velocity_scale_table
	mov	cl,byte ptr cs:playback_volume
	mul	cl
	mov	al,ah
	mov	cl,3fh
	sub	cl,al
	mov	ah,byte ptr cs:special_note_effect
	mov	al,byte ptr cs:opl_rhythm_register_shadow
	cmp	ah,6
	je	note_effect_6
	cmp	ah,7
	je	note_effect_7
	cmp	ah,8
	jne	note_effect_check_9
	jmp	near ptr note_effect_8
note_effect_check_9:
	cmp	ah,9
	jne	note_effect_check_10
	jmp	near ptr note_effect_9
note_effect_check_10:
	cmp	ah,0ah
	je	note_effect_10
	jmp	near ptr note_voice_allocate
note_effect_10:
	mov	ah,11h
	call	loc_MVUI
	or	al,1
	mov	ah,0bdh
	call	opl_write
	jmp	near ptr next_event
note_effect_6:
	mov	byte ptr cs:opl_key_on_bit,0
	mov	byte ptr cs:opl_note_semitone,28h
	mov	byte ptr cs:opl_channel_index,5
	mov	byte ptr cs:opl_key_on_bit,0
	call	opl_pitch_update
	mov	ah,10h
	call	loc_MVUI
	mov	ah,13h
	call	loc_MVUI
	or	al,10h
	mov	ah,0bdh
	call	opl_write
	jmp	near ptr next_event
note_effect_7:
	mov	ah,14h
	call	loc_MVUI
	or	al,8
	mov	ah,0bdh
	call	opl_write
	jmp	near ptr next_event
note_effect_8:
	mov	ah,12h
	mov	byte ptr cs:opl_note_semitone,1
	mov	byte ptr cs:opl_key_on_bit,0
	mov	byte ptr cs:opl_channel_index,7
	call	opl_pitch_update
	call	loc_MVUI
	or	al,4
	mov	ah,0bdh
	call	opl_write
	jmp	near ptr next_event
note_effect_9:
	mov	ah,15h
	call	loc_MVUI
	or	al,2
	mov	ah,0bdh
	call	opl_write
	jmp	near ptr next_event
loc_MVUI:
	pushs	ax,bx
	add	ah,40h
	mov	al,ch
	mov	bx,offset opl_register_shadow
	xlat cs:[bx]
	and	al,0c0h
	or	al,cl
	call	opl_write
	pops	bx,ax
	ret
note_voice_allocate:
	pushs	si,dx
	mov	bx,offset opl_voice_records
note_advance_voice:
	inc	word ptr cs:[bx+3]
	add	bx,5
	cmp	bx,offset opl_voice_count
	jb	note_advance_voice
	mov	cl,byte ptr cs:opl_operator_count
	xor	ch,ch
	mov	si,offset opl_operator_slot_0
note_process_operator:
	mov	ah,byte ptr cs:[si]
	mov	byte ptr cs:opl_note_index,ah
	cmp	byte ptr cs:special_note_match,0
	jmp	near ptr note_choose_voice
loc_VKUV:
	mov	bx,offset opl_voice_records
	mov	al,byte ptr cs:opl_note_index
note_find_note:
	cmp	al,byte ptr cs:[bx+2]
	jne	note_find_next
	jmp	near ptr note_write_voice
note_find_next:
	inc	al
	add	bx,5
	cmp	bx,offset opl_voice_count
	jb	note_find_note
	jmp	near ptr note_choose_oldest
note_choose_voice:
	mov	bx,offset opl_voice_records
	mov	dx,0
	mov	byte ptr cs:opl_voice_candidate,0ffh
	xor	al,al
note_oldest_loop:
	cmp	byte ptr cs:[bx],0
	jne	note_oldest_next
	cmp	dx,word ptr cs:[bx+3]
	ja	note_oldest_next
	mov	dx,word ptr cs:[bx+3]
	mov	byte ptr cs:opl_voice_candidate,al
	mov	word ptr cs:opl_voice_record_ptr,bx
note_oldest_next:
	add	bx,5
	inc	al
	cmp	al,byte ptr cs:opl_voice_count
	jb	note_oldest_loop
	mov	al,byte ptr cs:opl_voice_candidate
	cmp	al,0ffh
	je	note_find_any
	mov	bx,word ptr cs:opl_voice_record_ptr
	jmp	near ptr note_use_voice
note_find_any:
	mov	bx,offset opl_voice_records
	xor	al,al
	mov	dx,0
	mov	word ptr cs:opl_voice_record_ptr,bx
	mov	ah,byte ptr cs:opl_note_index
	mov	byte ptr cs:opl_voice_candidate,0ffh
note_find_any_loop:
	cmp	ah,byte ptr cs:[bx+2]
	jne	note_find_any_next
	cmp	dx,word ptr cs:[bx+3]
	ja	note_find_any_next
	mov	dx,word ptr cs:[bx+3]
	mov	byte ptr cs:opl_voice_candidate,al
	mov	word ptr cs:opl_voice_record_ptr,bx
note_find_any_next:
	add	bx,5
	inc	al
	cmp	al,byte ptr cs:opl_voice_count
	jb	note_find_any_loop
	mov	bx,word ptr cs:opl_voice_record_ptr
	mov	al,byte ptr cs:opl_voice_candidate
	cmp	al,0ffh
	jne	note_write_voice
note_choose_oldest:
	mov	bx,offset opl_voice_records
	xor	al,al
	mov	dx,0
	mov	byte ptr cs:opl_voice_candidate,al
	mov	word ptr cs:opl_voice_record_ptr,bx
	mov	ah,byte ptr cs:opl_note_index
note_fallback_loop:
	cmp	dx,word ptr cs:[bx+3]
	ja	note_fallback_next
	mov	dx,word ptr cs:[bx+3]
	mov	byte ptr cs:opl_voice_candidate,al
	mov	word ptr cs:opl_voice_record_ptr,bx
note_fallback_next:
	add	bx,5
	inc	al
	cmp	al,byte ptr cs:opl_voice_count
	jb	note_fallback_loop
	mov	bx,word ptr cs:opl_voice_record_ptr
	mov	al,byte ptr cs:opl_voice_candidate
note_use_voice:
	mov	byte ptr cs:opl_channel_index,al
	mov	al,byte ptr cs:[bx+2]
	cmp	al,byte ptr cs:opl_note_index
	je	note_write_voice
	call	device_load_patch
note_write_voice:
	mov	al,byte ptr cs:opl_note_velocity
	mov	byte ptr cs:[bx],al
	mov	word ptr cs:[bx+3],0
	mov	al,byte ptr cs:opl_note_semitone
	mov	byte ptr cs:[bx+1],al
	mov	al,byte ptr cs:[si]
	mov	byte ptr cs:[bx+2],al
	call	device_note_on
	mov	byte ptr cs:note_started,1
	inc	si
	dec	cx
	je	note_done
	jmp	near ptr note_process_operator
note_done:
	pops	dx,si
	jmp	near ptr next_event
note_event_high endp

note_event_low proc near
	call	string_loc_PUTK
	cmp	byte ptr cs:channel_patch_value,0ffh
	jne	note_low_have_patch
	jmp	near ptr next_event
note_low_have_patch:
note_low_check_special:
	cmp	byte ptr cs:special_note_flag,0
	jne	note_low_special
	jmp	near ptr note_low_no_special
note_low_special:
	mov	al,byte ptr cs:music_device
	cmp	al,1
	jmp	near ptr note_low_no_special
	mov	ah,byte ptr cs:special_note_effect
	mov	al,byte ptr cs:opl_rhythm_register_shadow
	cmp	ah,6
	je	note_low_effect_6
	cmp	ah,7
	je	note_low_effect_7
	cmp	ah,8
	je	note_low_effect_8
	cmp	ah,9
	je	note_low_effect_9
	cmp	ah,0ah
	jne	note_low_no_special
	and	al,0feh
	mov	ah,0bdh
	call	opl_write
	jmp	near ptr next_event
note_low_effect_6:
	and	al,0efh
	mov	ah,0bdh
	call	opl_write
	jmp	near ptr next_event
note_low_effect_7:
	and	al,0f7h
	mov	ah,0bdh
	call	opl_write
	jmp	near ptr next_event
note_low_effect_8:
	and	al,0fbh
	mov	ah,0bdh
	call	opl_write
	jmp	near ptr next_event
note_low_effect_9:
	and	al,0fdh
	mov	ah,0bdh
	call	opl_write
	jmp	near ptr next_event
note_low_no_special:
	push	si
	mov	si,offset opl_operator_slot_0
	mov	cl,byte ptr cs:opl_operator_count
	xor	ch,ch
note_clear_operator:
	mov	bx,offset opl_voice_records
	mov	ah,byte ptr cs:opl_note_semitone
	mov	dh,byte ptr cs:[si]
	mov	dl,byte ptr cs:opl_note_velocity
	xor	al,al
note_clear_voice:
	cmp	byte ptr cs:[bx],0
	je	note_clear_next
	cmp	byte ptr cs:[bx+1],ah
	jne	note_clear_next
	cmp	byte ptr cs:[bx+2],dh
	jne	note_clear_next
	mov	byte ptr cs:[bx],0
	mov	word ptr cs:[bx+3],0
	mov	byte ptr cs:opl_channel_index,al
	call	device_note_off
note_clear_next:
	inc	al
	add	bx,5
	cmp	al,byte ptr cs:opl_voice_count
	jb	note_clear_voice
	inc	si
	loop	note_clear_operator
	pop	si
	jmp	near ptr next_event
	push	bx
	mov	bl,byte ptr cs:music_device
	xor	bh,bh
	shl	bx,1
	call	word ptr cs:[bx+opl_note_device_table]
	pop	bx
	ret
opl_note_device_table label word
	dw	offset device_nop,offset opl_apply_volume,offset device_nop
	dw	offset device_nop,offset opl_apply_volume,offset device_nop
note_event_low endp
music_player_tick endp
codeseg	ends
	end
