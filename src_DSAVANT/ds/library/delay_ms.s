; spins [bp+4] milliseconds: each one counts loops_per_ms down to
; delay_loop_target (always 0)
	include	lmacros.h
	assume	cs:codeseg
	extrn	loops_per_ms_:word
	extrn	delay_loop_target_:word
	procdef	delay_ms,<<ms,word>>
	cld
	pushs	ds,si,cs	; ds = cs so [bx] reaches delay_loop_target
	pop	ds
	mov	bx,offset delay_loop_target_
next_ms:	;start one millisecond
	mov	cx,word ptr cs:loops_per_ms_
spin:
	sub	cx,1	;spin loops_per_ms times
	jne	no_pad
	nop	;timing pad on the wrap pass, part of the calibration
no_pad:
	cmp	cx,word ptr [bx]	;memory compare (not jz) keeps the calibrated loop cost
	jne	spin
	dec	ms	;ms done; repeat until the count hits 0
	jne	next_ms
	pops	si,ds
	mov	sp,bp
	pret
	pend	delay_ms
	finish
	end
