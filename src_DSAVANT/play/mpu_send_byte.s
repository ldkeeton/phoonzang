; :ts=8
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg

mpu_status_port	equ	0331h	; MPU status port polled before each byte
mpu_data_port	equ	0330h	; MPU data port used to send the byte
mpu_busy_bit	equ	040h	; status bit set while the MPU is busy
mpu_poll_limit	equ	0c350h	; maximum number of status reads
mpu_byte_argument	equ	al	; input byte arrives in AL

; Wait briefly for the MPU data port, then send the caller's byte from AL.
	procdef	mpu_send_byte
	pushs	ax,dx,cx
	mov	ah,mpu_byte_argument
	mov	cx,mpu_poll_limit
	mov	dx,mpu_status_port
mpu_wait_ready:
	; Poll the busy bit until it clears or the bounded wait expires.
	in	al,dx
	and	al,mpu_busy_bit
	je	mpu_send_data
	loop	mpu_wait_ready
mpu_send_data:
	outp	mpu_data_port,ah
	pops	cx,dx,ax
	ret
	pend	mpu_send_byte

codeseg	ends
	end
