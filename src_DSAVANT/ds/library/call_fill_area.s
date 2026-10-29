; Calls the fill-area driver entry with the caller's stack arguments intact.
	include	lmacros.h
	assume	cs:codeseg
	extrn	drv_slot_fill_area:dword
	public	call_fill_area_

call_fill_area_ proc near
	push	bp
	mov	bp,sp
	cld		; driver string operations advance forward
	call	dword ptr cs:drv_slot_fill_area
	mov	sp,bp
	pop	bp
	ret
call_fill_area_ endp
	finish
	end
