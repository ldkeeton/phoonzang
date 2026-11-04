	; :ts=8
	include lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	detect_video_adapter_type_:near
	extrn	detect_mouse_:near
	public	detect_video_and_mouse_

; Runs video and mouse detection and returns the saved local word.
detect_video_and_mouse_ proc near
saved_device_state	equ	word ptr -2[bp]
	push	bp
	mov	bp,sp
	sub	sp,4
	pushs	ds,es,si,di
	call	detect_video_adapter_type_
	call	detect_mouse_
	mov	ax,saved_device_state
	pops	di,si,es,ds
	mov	sp,bp
	pop	bp
	ret
detect_video_and_mouse_ endp
codeseg	ends
	end
