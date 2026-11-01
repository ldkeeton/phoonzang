; :ts=8
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	mpu401_reset_and_sync_:near
; retries the MPU-401 reset and sync up to ten times while it keeps failing
reset_attempts	equ	0ah	;attempts before giving up
	procdef	mpu401_reset_with_retries
	push	cx
	mov	cx,reset_attempts
retry_reset:
	call	mpu401_reset_and_sync_
	cmp	ax,0		;0 = reset and sync succeeded
	loopne	retry_reset	;retry while it failed and attempts remain
	pop	cx
	ret
	pend	mpu401_reset_with_retries
codeseg	ends
	end
