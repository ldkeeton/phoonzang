	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	sound_slots:byte

released_sound_id	equ	ax	; register input: ID of the released sound slot

	public	decrement_sound_slot_ids_
; Decrement sound-slot IDs above the released ID.
decrement_sound_slot_ids_ proc near
	push	ax
	mov	bx, offset sound_slots
	mov	cx, 14h	; The table has 20 four-byte sound-slot records.
	.repeat
		; Remove the gap from entries above the released slot.
		.if released_sound_id lt <word ptr cs:[bx]>
			dec	word ptr cs:[bx]
		.endif
		add	bx, 4	; Advance to the next sound-slot record.
	.untilcxz
	pop	ax
	ret
decrement_sound_slot_ids_ endp

codeseg	ends
	end
