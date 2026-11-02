	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg

	extrn	score_slots:byte

	public	decrement_score_slot_values_
; Decrement score-slot entries above the supplied value and report each move.
decrement_score_slot_values_ proc near
	push	ax
	mov	bx,offset score_slots
	mov	cx,5		; Five score slots are checked.
score_slot_scan:
	; Leave entries at or below the supplied AX value unchanged.
	cmp	ax,word ptr cs:[bx]
	jae	short score_slot_next
	dec	word ptr cs:[bx]
	; Preserve the scan state while DOS prints the relocation notice.
	pushs	ds,ax,bx,cx,dx
	movseg	ds,cs
	mov	dx,offset score_slot_moved_message
	dos	9		; DOS function 9 prints the '$'-terminated message.
	pops	dx,cx,bx,ax,ds
score_slot_next:
	; Move to the next four-byte entry and scan the remaining slots.
	add	bx,4
	loop	score_slot_scan
	pop	ax
	ret
decrement_score_slot_values_ endp

score_slot_moved_message db 0dh,0ah,07h,'Score slot moved.',0,0ah,24h

	finish
	end
