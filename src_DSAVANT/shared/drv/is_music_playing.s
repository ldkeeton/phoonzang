	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	music_playing_far:dword

	public	is_music_playing_
; Call the driver's far entry point that reports whether music is playing.
is_music_playing_ proc near
	push	bp
	mov	bp,sp
	pushs	ds,es,si,di
	; Preserve the caller's data segment in ES across the far call.
	movseg	es,ds
	call	dword ptr cs:music_playing_far
	pops	di,si,es,ds
	mov	sp,bp
	pop	bp
	ret
is_music_playing_ endp
	codeseg ends
	end
