; Calls the sound-wait driver entry with the caller's stack intact.
	include	lmacros.h
	assume	cs:codeseg
	extrn	drv_slot_wait_sound:dword
	public	call_wait_sound_

call_wait_sound_ proc near
	push	bp
	mov	bp,sp
	cld		; driver string operations advance forward
	call	dword ptr cs:drv_slot_wait_sound
	mov	sp,bp
	pop	bp
	ret
call_wait_sound_ endp
	finish
	end
