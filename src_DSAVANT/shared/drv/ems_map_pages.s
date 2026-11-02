; Map two consecutive logical EMS pages to frame pages zero and one.
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	ems_mapping_handle:word

	public	ems_map_pages_
; The caller supplies the first logical page number in AX.
ems_map_pages_ proc near
	push	ax
	; EMS function 44h maps a logical page to a physical frame page.
	mov	ah,44h
	mov	al,0		; Select physical frame page zero.
	pop	bx		; BX receives the first logical page number.
	mov	dx,word ptr cs:ems_mapping_handle
	int	67h
	inc	bx
	mov	ah,44h
	mov	al,1		; Select the second physical frame page.
	int	67h
	ret
ems_map_pages_ endp

codeseg	ends
	end
