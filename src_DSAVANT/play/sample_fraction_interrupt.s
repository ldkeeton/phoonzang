	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	music_player_tick_:near
	extrn	sound_stop_and_restore_timer_:near
	extrn	tick_divider:word

pic_command		equ	20h	; master PIC command port
pic_end_of_interrupt	equ	20h	; non-specific end-of-interrupt command
; Advance the fractional sample position and acknowledge each interrupt.
	procdef	sample_fraction_interrupt
	; Translate the next sample through the caller's table and send it to the device.
	mov	al,byte ptr [di]
	xlat	cs:[bx]
	out	dx,al
__zinsn_0846:
	; Carry out of DI means the sample ran past the end of its segment.
	add	ah,80h		; immediate patched through sample_step_imm_e
	adc	di,0
	jc	sample_segment_end
	dec	si
	; A zero count advances the music player; otherwise playback stays active.
	je	music_tick_due
	; A nonzero count sends the PIC end-of-interrupt command before returning.
	mov	al,pic_end_of_interrupt
	out	pic_command,al
	iret
music_tick_due:
	call	music_player_tick_
	mov	si,word ptr cs:tick_divider
	; Acknowledge the PIC after the music tick.
	mov	al,pic_end_of_interrupt
	out	pic_command,al
	iret
sample_segment_end:
	call	sound_stop_and_restore_timer_
	; Stop path also acknowledges the PIC before returning.
	mov	al,pic_end_of_interrupt
	out	pic_command,al
	iret
	pend	sample_fraction_interrupt

codeseg	ends
	end
