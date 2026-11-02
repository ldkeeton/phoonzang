	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	maze_slots:word

released_maze_slot_id	equ	ax	; input register: released maze-slot ID

	public	decrement_maze_slot_ids_
; Decrement maze-slot IDs greater than the released ID.
decrement_maze_slot_ids_ proc near
	push	ax
	mov	bx, offset maze_slots
	mov	cx, 10h	; The table contains 16 word entries.
	.repeat
		; Close the gap left by the released slot ID.
		.if	released_maze_slot_id lt <word ptr cs:[bx]>
			dec	word ptr cs:[bx]
		.endif
		inc	bx
		inc	bx	; Advance to the next word entry.
	.untilcxz
	pop	ax
	ret
decrement_maze_slot_ids_ endp

codeseg	ends
	end
