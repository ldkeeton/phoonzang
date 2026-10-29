; clears key_queue, drains the BIOS keyboard buffer, then calls the graphics
; driver slot 10
	include	lmacros.h
	assume	cs:codeseg
	extrn	key_queue_:word
	extrn	drv_slot_clear_mouse_click_:dword
	public	flush_keyboard_
flush_keyboard_ proc near
	push	bp
	mov	bp,sp
	cld
	pushs	di,si,es
	movseg	es,ds
	mov	ax,0	;empty key_queue (count = 0)
	mov	word ptr cs:key_queue_,ax
drain:
	kbd	1	; int 16h/1: is a key waiting?
	jz	drained	;ZF set: BIOS buffer empty
	kbd	0	; int 16h/0: read and discard it
	jmp	drain
drained:
	call	dword ptr cs:drv_slot_clear_mouse_click_
	pops	es,si,di
	mov	sp,bp
	pop	bp
	ret
flush_keyboard_ endp
	finish
	end
