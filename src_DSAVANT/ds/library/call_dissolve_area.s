; Calls the graphics dissolve entry with the caller's stack arguments intact.
	include	lmacros.h
	assume	cs:codeseg
	extrn	drv_slot_dissolve_area:dword
	public	call_dissolve_area_

call_dissolve_area_ proc near
	push	bp
	mov	bp,sp
	cld		; driver string operations advance forward
	call	dword ptr cs:drv_slot_dissolve_area
	mov	sp,bp
	pop	bp
	ret
call_dissolve_area_ endp
	finish
	end
