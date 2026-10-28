; Calls the music-stop driver entry with the caller's stack intact.
	include	lmacros.h
	assume	cs:codeseg
	extrn	gfx_drv_stop_music:dword
	public	gfx_stop_music_

gfx_stop_music_ proc near
	push	bp
	mov	bp,sp
	cld		; driver string operations advance forward
	call	dword ptr cs:gfx_drv_stop_music
	mov	sp,bp
	pop	bp
	ret
gfx_stop_music_ endp
	finish
	end
