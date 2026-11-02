	; Find the first rectangle containing the current or stored mouse click.
	include	lmacros.h
	codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	mouse_present:byte
	extrn	mouse_click_pending:word
	extrn	mouse_click_x:word
	extrn	mouse_click_y:word

hit_rectangles	equ	word ptr 0ch[bp]
hit_rect_index	equ	word ptr -4[bp]
click_buttons	equ	word ptr -2[bp]

	public	mouse_hit_test
mouse_hit_test proc near
	; Preserve the caller frame and reserve two local words.
	push	bp
	mov	bp,sp
	sub	sp,4
	pushs	ds,si,es
	movseg	es,ds
	mov	hit_rect_index,1
	xor	ax,ax
	cmp	byte ptr cs:mouse_present,0
	; A missing mouse leaves the result at zero.
	je	short mouse_hit_test_done

	; Prefer a pending click and consume it; otherwise query INT 33h.
	mov	bx,word ptr cs:mouse_click_pending
	or	bx,bx
	je	short mouse_hit_test_live
	mov	word ptr cs:mouse_click_pending,0
	mov	click_buttons,bx
	mov	cx,word ptr cs:mouse_click_x
	mov	dx,word ptr cs:mouse_click_y
	jmp	short mouse_hit_test_coordinates

mouse_hit_test_live:
	; INT 33h function 3 reports buttons in BX and position in CX:DX.
	mouse	3
	xor	bx,bx
	mov	click_buttons,bx
	shr	cx,1	; Match the driver's half-column X coordinate units.

mouse_hit_test_coordinates:
	mov	bx,cx
	mov	si,hit_rectangles
mouse_hit_test_scan:
	; A left edge of -1 terminates the rectangle list.
	cmp	word ptr [si],-1
	je	short mouse_hit_test_not_found
	; Reject points left of or above this rectangle.
	cmp	bx,word ptr [si]
	jb	short mouse_hit_test_next
	cmp	dx,word ptr [si+2]
	jb	short mouse_hit_test_next
	; Reject points right of or below this rectangle.
	cmp	word ptr [si+4],bx
	jb	short mouse_hit_test_next
	cmp	word ptr [si+6],dx
	jb	short mouse_hit_test_next

	; Return the 1-based rectangle index, negative for a stored click.
	mov	ax,hit_rect_index
	mov	bx,click_buttons
	or	bx,bx
	je	short mouse_hit_test_done
	neg	ax
	jmp	short mouse_hit_test_done

mouse_hit_test_next:
	add	si,8	; Each rectangle stores four word coordinates.
	inc	hit_rect_index
	jmp	short mouse_hit_test_scan

mouse_hit_test_not_found:
	xor	ax,ax
mouse_hit_test_done:
	pops	es,si,ds
	mov	sp,bp
	pop	bp
	ret
mouse_hit_test endp

	codeseg	ends
	end
