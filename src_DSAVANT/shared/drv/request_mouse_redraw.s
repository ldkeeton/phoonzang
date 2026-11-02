	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	mouse_present:byte
	extrn	mouse_redraw_pending:byte

	public	request_mouse_redraw_
; Set the redraw flag only when the mouse is present.
request_mouse_redraw_ proc near
	cmp	byte ptr cs:mouse_present,1
	.if	e
		mov	byte ptr cs:mouse_redraw_pending,1
	.endif
	ret
request_mouse_redraw_ endp

codeseg	ends
	end
