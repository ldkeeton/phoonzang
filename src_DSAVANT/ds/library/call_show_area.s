; Calls the area-display driver entry with the caller's stack intact.
	include	lmacros.h
	assume	cs:codeseg
	extrn	drv_slot_show_area:dword
	public	call_show_area_

call_show_area_ proc near
	push	bp
	mov	bp,sp
	cld		; driver string operations advance forward
	call	dword ptr cs:drv_slot_show_area
	mov	sp,bp
	pop	bp
	ret
call_show_area_ endp
	finish
	end
