; Calls the text driver entry with the caller's stack arguments intact.
	include	lmacros.h
	assume	cs:codeseg
	extrn	drv_slot_draw_text:dword
	public	call_draw_text_

call_draw_text_ proc near
	push	bp
	mov	bp,sp
	cld		; driver string operations advance forward
	call	dword ptr cs:drv_slot_draw_text
	mov	sp,bp
	pop	bp
	ret
call_draw_text_ endp
	finish
	end
