; Return zero planes for the transparent marker; otherwise use the shared expansion body.
; :ts=8
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	public	expand_transparent_px_to_planes_
	public	expand_pixel_to_planes_
transparent_marker	equ	0ffh		; AL value that selects the transparent case
; These masks select each bit of the lookup result for the plane pairs.
expand_bit_0	equ	1
expand_bit_1	equ	2
expand_bit_2	equ	4
expand_bit_3	equ	8
expand_bit_4	equ	10h
expand_bit_5	equ	20h
expand_bit_6	equ	40h
expand_bit_7	equ	80h
bit_3_shift	equ	3
bit_4_shift	equ	3
bit_5_shift	equ	4
bit_6_shift	equ	5
bit_7_shift	equ	6
plane_pair_mask	equ	3
; AL holds the pixel and AH holds the destination plane shift.
expand_transparent_px_to_planes_	proc	near
	push	bx
	cmp	al,transparent_marker
	jne	short expand_pixel_to_planes_body_
	; The transparent marker returns zero in all four plane results.
	xor	cx,cx
	xor	ax,ax
	xor	dx,dx
	pop	bx
	ret
expand_transparent_px_to_planes_	endp

; Expand one pixel through the nibble lookup table for the graphics caller.
expand_pixel_to_planes_	proc	near
	push	bx
expand_pixel_to_planes_body_:
	push	ax
	db	02eh			; CS override for the lookup through BX
	xlatb
	mov	ah,al
	and	al,expand_bit_0
	mov	dl,al
	mov	al,ah
	and	al,expand_bit_1
	shr	al,1
	mov	dh,al
	mov	al,ah
	and	al,expand_bit_2
	shr	al,1
	shr	al,1
	mov	bl,al
	mov	al,ah
	and	al,expand_bit_3
	mov	cl,bit_3_shift
	shr	al,cl
	mov	bh,al
	mov	al,ah
	and	al,expand_bit_4
	mov	cl,bit_4_shift
	shr	al,cl
	or	dl,al
	mov	al,ah
	and	al,expand_bit_5
	mov	cl,bit_5_shift
	shr	al,cl
	or	dh,al
	mov	al,ah
	and	al,expand_bit_6
	mov	cl,bit_6_shift
	shr	al,cl
	or	bl,al
	mov	al,ah
	and	al,expand_bit_7
	mov	cl,bit_7_shift
	shr	al,cl
	or	bh,al
	pop	ax
	mov	cl,ah
	mov	ch,plane_pair_mask
	shl	ch,cl
	shl	dl,cl
	shl	dh,cl
	shl	bl,cl
	shl	bh,cl
	mov	ax,bx
	pop	bx
	ret
expand_pixel_to_planes_	endp
codeseg	ends
	end
