; clears key_queue, drains the BIOS keyboard buffer, then calls the graphics
; driver slot 10
	include	lmacros.h
	assume	cs:codeseg
	extrn	key_queue_:word
	extrn	gfx_drv_slot_10_:dword
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
	mov	word ptr cs:key_queue_,ax
drain:
	mov	ah,1
	int	16h
	jz	drained
	mov	ah,0
	int	16h
	jmp	drain
drained:
	call	dword ptr cs:gfx_drv_slot_10_
	pop	es
	pop	si
	pop	di
	mov	sp,bp
	pop	bp
	ret
flush_keyboard_ endp
	finish
	end
