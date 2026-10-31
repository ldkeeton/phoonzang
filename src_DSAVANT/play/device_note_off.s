	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	music_device:byte
	extrn	device_nop_:near
	extrn	opl_note_off_:near
	extrn	device_note_off_noop_:near

; Dispatch note-off handling to the routine for the current music device.
	procdef	device_note_off
	push	bx
	mov	bl,byte ptr cs:music_device
	xor	bh,bh
	shl	bx,1
	call	word ptr cs:[bx+device_note_off_dispatch_table]
	pop	bx
	ret
	pend	device_note_off

device_note_off_dispatch_table label word
	dw	offset device_nop_
	dw	offset opl_note_off_
	dw	offset device_note_off_noop_
	dw	offset device_note_off_noop_
	dw	offset opl_note_off_
	dw	offset device_nop_

codeseg	ends
	end
