; :ts=8
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	music_player_tick_:near
	extrn	sound_stop_and_restore_timer_:near
	extrn	saved_pic_mask:byte
	extrn	tick_divider:word
	extrn	sample_output_table:byte
	extrn	sample_step_fraction:byte
pit_control	equ	43h	;8253 mode/command port
pit_ch2_data	equ	42h	;channel 2 count port
pit_ch2_mode0	equ	0b0h	;channel 2, lobyte/hibyte access, mode 0
pic_command	equ	20h	;master 8259 command port (non-specific EOI)
pic_mask	equ	21h	;master 8259 interrupt mask port
eoi		equ	20h	;non-specific end-of-interrupt command
; INT 08h tick: plays one sample byte through PIT channel 2, counts down the music divider, then acks the PIC, steps the player, or restores the timer
	procdef	pit_sample_interrupt
	pushs	ax,ds,bx
mov_sample_segment:
	movseg	ds,0	; sample segment, patched by the installer
	mov	ax,20b0h		;ah = EOI, al = PIT command
	out	pit_control,al
sample_offset	equ	pit_sample_interrupt_+0eh	;operand word of the load below
	mov	al,byte ptr [0]		;sample offset, patched by the installer
	mov	bx,offset sample_output_table
	xlat	cs:[bx]			;count low byte from the code-segment table
	out	pit_ch2_data,al
	xor	al,al
	out	pit_ch2_data,al		;count high byte
	add	byte ptr cs:sample_step_fraction,80h ;advance the sample pointer by one every two ticks
	adc	word ptr cs:[sample_offset],0 ;carry into the high word in the load's operand
	jb	sample_done		;pointer wrapped
	dec	word ptr cs:tick_divider
	je	play_music		;divider expired
	mov	al,ah
	out	pic_command,al
	pops	bx,ds,ax
	iret
play_music:
	mov	al,ah
	out	pic_command,al
	pops	bx,ds,ax
	sti
	call	music_player_tick_
	iret
sample_done:
	call	sound_stop_and_restore_timer_
	mov	al,byte ptr cs:saved_pic_mask
	out	pic_mask,al
	mov	al,eoi
	out	pic_command,al
	pops	bx,ds,ax
	iret
	pend	pit_sample_interrupt
codeseg	ends
	end
