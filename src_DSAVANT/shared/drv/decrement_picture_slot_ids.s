; Adjust cached picture slot IDs after one slot is removed.
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	picture_slots:word

	public	decrement_picture_slot_ids_
decrement_picture_slot_ids_ proc near
	push	ax
	mov	bx, offset picture_slots
	mov	cx, 14h	; There are 20 cached picture slot entries.
	.repeat
		; Decrement entries above the removed slot ID.
		.if ax lt <word ptr cs:[bx]>
			dec	word ptr cs:[bx]
		.endif
		inc	bx
		inc	bx
	.untilcxz
	pop	ax
	ret
decrement_picture_slot_ids_ endp
	codeseg	ends
	end
