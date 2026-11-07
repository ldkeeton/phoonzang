; :ts=8
; The INT 08h handlers that drive the music player.
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	tick_divider:word
	extrn	music_player_tick_:near

pic_command	equ	20h	; 8259 master command port
end_of_interrupt	equ	20h	; non-specific EOI

	public	music_timer_interrupt_
; INT 08h handler installed while music plays: one player step per tick.
music_timer_interrupt_ proc far
	pushs	ax,bx,ds
	call	music_player_tick_
	mov	al,end_of_interrupt
	out	pic_command,al
	pops	ds,bx,ax
	iret
music_timer_interrupt_ endp

	public	music_timer_interrupt_divided_
; Unreferenced INT 08h handler: a player step only when tick_divider
; counts down to zero.
music_timer_interrupt_divided_ proc far
	pushs	ax,bx,ds
	dec	word ptr cs:tick_divider
	jg	short send_eoi
	call	music_player_tick_
send_eoi:
	mov	al,end_of_interrupt
	out	pic_command,al
	pops	ds,bx,ax
	iret
music_timer_interrupt_divided_ endp

codeseg	ends
	end
