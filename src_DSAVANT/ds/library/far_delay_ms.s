; Adapts a far call to the near millisecond delay routine.
	include	lmacros.h
	assume	cs:codeseg
	extrn	delay_ms_:near
	public	far_delay_ms_
delay_duration equ 6	;argument follows the far return address
far_delay_ms_ proc far
	push	bp
	mov	bp,sp
	cld
	push	word ptr [bp+delay_duration]
	call	delay_ms_
	add	sp,2
	mov	sp,bp
	pop	bp
	ret
far_delay_ms_ endp
	finish
	end
