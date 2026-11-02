	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	music_stop_far:dword

	public	stop_music_
; Call the driver's far entry point that stops music playback.
stop_music_ proc near
	push	bp
	mov	bp,sp
	pushs	ds,es,si,di
	; Preserve the caller's data segment in ES across the far call.
	movseg	es,ds
	call	dword ptr cs:music_stop_far
	pops	di,si,es,ds
	mov	sp,bp
	pop	bp
	ret
stop_music_ endp
codeseg	ends
	end
