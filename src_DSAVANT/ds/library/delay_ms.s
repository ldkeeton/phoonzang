; spins [bp+4] milliseconds: each one counts loops_per_ms down to
; delay_loop_target (always 0)
	include	lmacros.h
	assume	cs:codeseg
ms	equ	4
	extrn	loops_per_ms_:word
	extrn	delay_loop_target_:word
	public	delay_ms_
delay_ms_ proc near
	push	bp
	mov	bp,sp
	cld
	push	ds
	push	si
	push	cs
	pop	ds
	mov	bx,offset delay_loop_target_
next_ms:
	mov	cx,word ptr cs:loops_per_ms_
spin:
	sub	cx,1
	jne	no_pad
	nop
no_pad:
	cmp	cx,word ptr [bx]
	jne	spin
	dec	word ptr ms[bp]
	jne	next_ms
	pop	si
	pop	ds
	mov	sp,bp
	pop	bp
	ret
delay_ms_ endp
	finish
	end
