; :ts=8
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	sound_stop_and_restore_timer:near
	extrn	saved_pic_mask:byte
	public	speaker_sample_interrupt
pit_control	equ	43h	;8253 mode/command port
pit_ch2_mode0	equ	0b0h	;channel 2, lobyte/hibyte access, mode 0
pic_command	equ	20h	;master 8259 command port (non-specific EOI)
pic_mask	equ	21h	;master 8259 interrupt mask port
eoi		equ	20h	;non-specific end-of-interrupt command
; INT 08h tick: reloads PIT channel 2 from a cs table, then acknowledges or stops through sound_stop_and_restore_timer
speaker_sample_interrupt proc near
	cli				;no interrupt between the PIT writes
	mov	al,byte ptr [di]	;table index (bx holds the cs table base)
	xlat	cs:[bx]			;count low byte from the code-segment table
	mov	cl,al
	mov	al,pit_ch2_mode0
	out	pit_control,al
	mov	al,cl
	out	dx,al			;count low byte
	xor	al,al
	out	dx,al			;count high byte
	add	ah,80h			;advance di:ax by 8000h, al preserved
	adc	di,0			;carry into the high word
	jb	wrapped			;di overflowed
	mov	al,eoi
	out	pic_command,al
	iret
wrapped:
	call	sound_stop_and_restore_timer
	mov	al,byte ptr cs:saved_pic_mask	;PIC mask value in the code segment
	out	pic_mask,al
	mov	al,eoi
	out	pic_command,al
	iret
speaker_sample_interrupt endp
codeseg	ends
	end
