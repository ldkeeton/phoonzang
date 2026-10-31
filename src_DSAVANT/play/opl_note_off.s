	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	opl_channel_index:byte
	extrn	opl_register_shadow:byte
	extrn	opl_write_:near

; Clear the OPL channel's key-on bit in its B0h register shadow and write it.
	procdef	opl_note_off
	pushs	ax,bx
	mov	al,byte ptr cs:opl_channel_index
	add	al,0b1h		; B0h channel registers start at B1h.
	mov	ah,al			; Keep the register number while xlat loads its shadow.
	mov	bx,offset opl_register_shadow
	xlat	cs:[bx]
	and	al,0dfh		; Clear bit 5, the key-on flag.
	call	opl_write_
	pops	bx,ax
	ret
	db	0,90h			; Preserve the two bytes following the routine.
	pend	opl_note_off

codeseg	ends
	end
