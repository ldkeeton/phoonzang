	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	music_device:byte
	extrn	device_nop_:near
	extrn	opl_note_on_:near

; Dispatch note-on events according to the selected music device.
	procdef	device_note_on
	push	bx
	mov	bl,byte ptr cs:music_device
	xor	bh,bh
	shl	bx,1
	call	word ptr cs:[bx+device_note_on_dispatch_table]
	pop	bx
	ret
	pend	device_note_on

; Device IDs 1 and 4 select the OPL handler; other IDs use the no-op handler.
device_note_on_dispatch_table label word
	dw	offset device_nop_
	dw	offset opl_note_on_
	dw	offset device_nop_
	dw	offset device_nop_
	dw	offset opl_note_on_
	dw	offset device_nop_

codeseg	ends
	end
