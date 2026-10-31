	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	music_device:byte
	extrn	device_nop_:near
	extrn	opl_load_patch_:near

; Dispatch to the current device's patch loader.
	procdef	device_load_patch
	push	bx
	mov	bl,byte ptr cs:music_device
	xor	bh,bh
	shl	bx,1
	call	word ptr cs:[bx+device_load_patch_dispatch_table]
	pop	bx
	ret
	pend	device_load_patch

device_load_patch_dispatch_table label word
	dw	offset device_nop_
	dw	offset opl_load_patch_
	dw	offset device_nop_
	dw	offset device_nop_
	dw	offset opl_load_patch_
	dw	offset device_nop_

codeseg	ends
	end
