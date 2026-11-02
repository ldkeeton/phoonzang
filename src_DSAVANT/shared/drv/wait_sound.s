	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	sound_wait_far:dword

sound_wait_argument	equ	0ch	; stack slot: value forwarded to the sound wait entry

	public	wait_sound_
; Forward the supplied value to the sound driver's wait entry.
wait_sound_ proc near
	push	bp
	mov	bp,sp
	pushs	ds,es,si,di
	; Keep ES equal to DS while the far entry is called.
	movseg	es,ds
	push	word ptr sound_wait_argument[bp]
	call	dword ptr cs:sound_wait_far
	pop	cx
	pops	di,si,es,ds
	mov	sp,bp
	pop	bp
	ret
wait_sound_ endp
codeseg	ends
	end
