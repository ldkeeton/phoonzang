; Calls the text-position driver entry with the caller's stack intact.
	include	lmacros.h
	assume	cs:codeseg
	extrn	drv_slot_set_text_pos:dword
	public	call_set_text_pos_

call_set_text_pos_ proc near
	push	bp
	mov	bp,sp
	cld		; driver string operations advance forward
	call	dword ptr cs:drv_slot_set_text_pos
	mov	sp,bp
	pop	bp
	ret
call_set_text_pos_ endp
	finish
	end
