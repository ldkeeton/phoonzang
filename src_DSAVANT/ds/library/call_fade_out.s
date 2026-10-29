; Calls the fade-out driver entry with the caller's stack arguments intact.
	include	lmacros.h
	assume	cs:codeseg
	extrn	drv_slot_fade_out:dword
	public	call_fade_out_

call_fade_out_ proc near
	push	bp
	mov	bp,sp
	cld		; driver string operations advance forward
	call	dword ptr cs:drv_slot_fade_out
	mov	sp,bp
	pop	bp
	ret
call_fade_out_ endp
	finish
	end
