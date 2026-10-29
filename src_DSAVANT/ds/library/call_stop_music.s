; Calls the music-stop driver entry with the caller's stack intact.
	include	lmacros.h
	assume	cs:codeseg
	extrn	drv_slot_stop_music:dword
	public	call_stop_music_

call_stop_music_ proc near
	push	bp
	mov	bp,sp
	cld		; driver string operations advance forward
	call	dword ptr cs:drv_slot_stop_music
	mov	sp,bp
	pop	bp
	ret
call_stop_music_ endp
	finish
	end
