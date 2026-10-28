; Frees preceding block segments until a zero table entry is reached.
	include	lmacros.h
	assume	cs:codeseg
	public	free_driver_blocks_

free_driver_blocks_ proc near
	push	es
previous_entry:
	sub	si,4	; SI starts just past the last allocated four-byte entry
	mov	bx,word ptr cs:[si]
	.if	bx	; zero size marks the beginning of the entries
		mov	bx,word ptr cs:2[si]
		mov	es,bx
		mov	ah,49h	; DOS free memory at ES
		push	si
		int	21h
		pop	si
		jmp	short previous_entry	; repeat the pre-test decrement and load
	.endif
		pop	es
		ret
		free_driver_blocks_ endp
		finish
		end
