	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	sound_play_far:dword

	public	stop_sound_
; Call the sound driver's play entry with seven zero-valued words.
stop_sound_ proc near
	push	bp
	mov	bp,sp
	sub	sp,0ah		; Reserve the original local frame.
	pushs	ds,es,si,di
	; Preserve the caller's data segment in ES across the far call.
	movseg	es,ds
	xor	ax,ax
	; Supply fourteen bytes of zero-valued arguments to the sound entry.
	pushs	ax,ax,ax,ax,ax,ax,ax
	call	dword ptr cs:sound_play_far
	add	sp,0eh
	pops	di,si,es,ds
	mov	sp,bp
	pop	bp
	ret
stop_sound_ endp
codeseg	ends
	end
