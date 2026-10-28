; Calls the sound-stop driver entry with the caller's stack intact.
	include	lmacros.h
	assume	cs:codeseg
	extrn	gfx_drv_stop_sound:dword
	public	gfx_stop_sound_

gfx_stop_sound_ proc near
	push	bp
	mov	bp,sp
	cld		; driver string operations advance forward
	call	dword ptr cs:gfx_drv_stop_sound
	mov	sp,bp
	pop	bp
	ret
gfx_stop_sound_ endp
	finish
	end
