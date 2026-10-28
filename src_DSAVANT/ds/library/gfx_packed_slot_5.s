; Supplies five zero words and a packed byte argument to a graphics driver entry.
	include	lmacros.h
	assume	cs:codeseg
	extrn	gfx_drv_slot_5:dword
	public	gfx_packed_slot_5_
driver_value equ 4
packed_high_byte equ 6
gfx_packed_slot_5_ proc near
	push	bp
	mov	bp,sp
	cld
	pushs	ds,es,si,di
	movseg	es,ds
	mov	ax,word ptr [bp+packed_high_byte]
	mov	ah,al
	mov	al,0ffh	;low byte is fixed for this driver call
	push	ax
	push	word ptr [bp+driver_value]
	xor	ax,ax
	pushs	ax,ax,ax,ax,ax
	call	dword ptr cs:gfx_drv_slot_5
	add	sp,14
	pops	di,si,es,ds
	mov	sp,bp
	pop	bp
	ret
gfx_packed_slot_5_ endp
	finish
	end
