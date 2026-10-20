/* clears the key queue word, drains the BIOS keyboard buffer, then calls the far vector */
#asm
	include	lmacros.h
	assume	cs:codeseg
	extrn	cseg_3c7f_:word
	extrn	cseg_2faf_:dword
	public	flush_keyboard_
flush_keyboard_ proc near
	push	bp
	mov	bp,sp
	cld
	push	di
	push	si
	push	es
	mov	ax,ds
	mov	es,ax
	mov	ax,0
	mov	word ptr cs:cseg_3c7f_,ax
drain:
	mov	ah,1
	int	16h
	jz	drained
	mov	ah,0
	int	16h
	jmp	drain
drained:
	call	dword ptr cs:cseg_2faf_
	pop	es
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	ret
flush_keyboard_ endp
	finish
	end
#endasm
