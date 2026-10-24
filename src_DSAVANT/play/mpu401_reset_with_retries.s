; :ts=8
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	mpu401_reset_and_sync_:near
	public	mpu401_reset_with_retries
; retries the MPU-401 reset and sync up to ten times while it keeps failing
reset_attempts	equ	0ah	;attempts before giving up
mpu401_reset_with_retries proc near
	push	cx
	mov	cx,reset_attempts
retry_reset:
	call	mpu401_reset_and_sync_
	cmp	ax,0		;0 = reset and sync succeeded
	loopne	retry_reset	;retry while it failed and attempts remain
	pop	cx
	ret
mpu401_reset_with_retries endp
codeseg	ends
	end
