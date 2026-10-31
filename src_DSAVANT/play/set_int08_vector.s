	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg

handler_offset	equ	dx
handler_segment	equ	ds

; Install the supplied handler offset and segment in interrupt vector 08h.
	procdef	set_int08_vector
	pushf
	pushs	di,es
	cli
	cld
	xor	ax,ax
	mov	es,ax
	mov	di,20h		; Vector 08h occupies words at IVT offsets 20h and 22h.
	mov	ax,handler_offset
	stosw
	mov	ax,handler_segment
	stosw
	pops	es,di
	popf
	ret
	pend	set_int08_vector
	db	0			; Preserve the byte present after the routine in the fragment.

codeseg	ends
	end
