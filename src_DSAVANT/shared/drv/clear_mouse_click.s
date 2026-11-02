	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	mouse_click_pending:word

	public	clear_mouse_click_
; Clear the one-shot flag for a stored mouse click.
clear_mouse_click_ proc near
	mov	word ptr cs:mouse_click_pending,0
	ret
clear_mouse_click_ endp
codeseg	ends
	end
