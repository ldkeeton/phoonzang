	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	screen_maze_slots:word

	public	decrement_screen_slot_ids_
; Decrement screen MAZE slot IDs that are above the released slot.
decrement_screen_slot_ids_ proc near
	; AX is the released slot ID; preserve it across the scan.
	push	ax
	mov	bx,offset screen_maze_slots
	mov	cx,5
screen_slot_scan:
	; Slot IDs above AX shift down after a slot is released.
	cmp	ax,word ptr cs:[bx]
	jae	short screen_slot_next
	dec	word ptr cs:[bx]
screen_slot_next:
	inc	bx
	inc	bx
	loop	screen_slot_scan
	pop	ax
	ret
decrement_screen_slot_ids_ endp

codeseg	ends
	end
