; Calls the fade-in driver entry with the caller's stack arguments intact.
	include	lmacros.h
	assume	cs:codeseg
	extrn	drv_slot_fade_in:dword
	public	call_fade_in_

call_fade_in_ proc near
	push	bp
	mov	bp,sp
	cld		; driver string operations advance forward
	call	dword ptr cs:drv_slot_fade_in
	mov	sp,bp
	pop	bp
	ret
call_fade_in_ endp
	finish
	end
