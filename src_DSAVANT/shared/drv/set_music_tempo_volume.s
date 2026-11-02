	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	music_config_far:dword

tempo_value	equ	word ptr 0ch[bp]
volume_value	equ	word ptr 0eh[bp]

	public	set_music_tempo_volume_
; Forward the caller's tempo and volume values to the music configuration entry.
set_music_tempo_volume_ proc near
	push	bp
	mov	bp,sp
	pushs	ds,es,si,di
	movseg	es,ds
	; Push arguments right to left for the far configuration call.
	push	volume_value
	push	tempo_value
	call	far ptr cs:music_config_far
	add	sp,4
	pops	di,si,es,ds
	mov	sp,bp
	pop	bp
	ret
set_music_tempo_volume_ endp
codeseg	ends
	end
