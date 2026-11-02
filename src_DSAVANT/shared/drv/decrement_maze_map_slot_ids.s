	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	maze_map_slots:word

	public	decrement_maze_map_slot_ids_
; Decrement maze-map slot IDs above the released resource ID.
decrement_maze_map_slot_ids_ proc near
	push	ax
	mov	bx,offset maze_map_slots
	mov	cx,10		; Ten maze-map slots.
maze_map_slot_loop:
	cmp	ax,word ptr cs:[bx]
	jae	short maze_map_slot_next
	dec	word ptr cs:[bx]	; Keep each stored ID aligned after removal.
maze_map_slot_next:
	inc	bx
	inc	bx
	loop	maze_map_slot_loop
	pop	ax
	ret
decrement_maze_map_slot_ids_ endp

codeseg	ends
	end
