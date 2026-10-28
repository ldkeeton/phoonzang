; Release the EMS allocation when a handle has been recorded.
	include	lmacros.h
	assume	cs:codeseg
	extrn	ems_handle:word
	public	release_expanded_memory_
release_expanded_memory_ proc near
	pushs	ds,es
	mov	dx,word ptr cs:ems_handle
	.if	dx	;zero means no allocation to release
		ems	45h	;EMS: deallocate pages for handle DX
	.endif
	pops	es,ds
	ret
release_expanded_memory_ endp
	finish
	end
