	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	opl_register_shadow:byte
	extrn	opl_delay_long_:near
	extrn	opl_delay_short_:near

; Cache an OPL register value, then write its address and value with the
; required status delays while preserving the caller's interrupt flags.
register_index	equ	ah
register_value	equ	al
	procdef	opl_write
	pushs	bx,dx
	xor	bh,bh
	mov	bl,register_index
	mov	byte ptr cs:opl_register_shadow[bx],register_value
	mov	dx,388h		; OPL address/data port pair begins at 388h.
	xchg	register_index,register_value
	pushf
	cli			; Keep the address/data transaction uninterrupted.
	call	opl_delay_long_
	out	dx,al
	call	opl_delay_short_
	inc	dx
	xchg	register_index,register_value
	out	dx,al
	call	opl_delay_long_
	dec	dx
	mov	al,40h		; Leave the level register selected for sample output.
	out	dx,al
	call	opl_delay_long_
	popf
	pops	dx,bx
	ret
	pend	opl_write

codeseg	ends
	end
