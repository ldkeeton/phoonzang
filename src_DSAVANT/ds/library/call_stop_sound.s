; Calls the sound-stop driver entry with the caller's stack intact.
	include	lmacros.h
	assume	cs:codeseg
	extrn	drv_slot_stop_sound:dword
	public	call_stop_sound_

call_stop_sound_ proc near
	push	bp
	mov	bp,sp
	cld		; driver string operations advance forward
	call	dword ptr cs:drv_slot_stop_sound
	mov	sp,bp
	pop	bp
	ret
call_stop_sound_ endp
	finish
	end
