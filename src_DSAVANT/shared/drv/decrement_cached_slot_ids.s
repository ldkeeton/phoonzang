	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	ems_slots:byte
	extrn	cache_maze_slot_table:byte
	extrn	screen_ems_slots:byte

released_slot_id	equ	ax	; input register: ID of the released slot

	public	decrement_cached_slot_ids_
; Decrement cached slot IDs greater than the released slot in each table.
decrement_cached_slot_ids_ proc near
	push	ax
	mov	bx, offset ems_slots
	mov	cx, 14h		; EMS slot table has 20 word entries
	.repeat
		cmp	released_slot_id, word ptr cs:[bx]
		.if	b
			dec	word ptr cs:[bx]	; remove the released ID's gap
		.endif
		inc	bx
		inc	bx		; advance to the next word entry
	.untilcxz
	mov	bx, offset cache_maze_slot_table
	mov	cx, 0ah		; maze slot table has 10 word entries
	.repeat
		cmp	released_slot_id, word ptr cs:[bx]
		.if	b
			dec	word ptr cs:[bx]	; remove the released ID's gap
		.endif
		inc	bx
		inc	bx		; advance to the next word entry
	.untilcxz
	mov	bx, offset screen_ems_slots
	mov	cx, 0ah		; screen slot table has 10 word entries
	.repeat
		cmp	released_slot_id, word ptr cs:[bx]
		.if	b
			dec	word ptr cs:[bx]	; remove the released ID's gap
		.endif
		inc	bx
		inc	bx		; advance to the next word entry
	.untilcxz
	pop	ax
	ret
decrement_cached_slot_ids_ endp

codeseg	ends
	end
