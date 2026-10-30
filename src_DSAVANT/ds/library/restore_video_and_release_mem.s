; Restore video state and release driver, font, and expanded memory.
	include	lmacros.h
	assume	cs:codeseg
	extrn	restore_saved_video_state_:near
	extrn	free_driver_and_font_memory_:near
	extrn	release_expanded_memory_:near
	public	restore_video_and_release_mem_
restore_video_and_release_mem_ proc near
	push	bp
	mov	bp,sp
	cld
	sub	sp,2	; Reserve the unused frame word.
	pushs	ds,es,si,di
	movseg	es,ds
	call	restore_saved_video_state_
	call	free_driver_and_font_memory_
	call	release_expanded_memory_
	pops	di,si,es,ds
	mov	sp,bp
	pop	bp
	ret
restore_video_and_release_mem_ endp
	finish
	end
