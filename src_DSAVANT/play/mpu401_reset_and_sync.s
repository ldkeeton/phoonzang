; :ts=8
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	public	mpu401_reset_and_sync_
; reset the MPU-401 at ports 330h/331h and wait for MIDI active sensing (0feh);
; returns 0 when seen, 0fffh after the retries time out
mpu_status	equ	331h	;MPU-401 status/command port
mpu_data	equ	330h	;MPU-401 data port
mpu401_reset_and_sync_ proc near
	pushs	bx,cx,dx
mpu401_write_ready_flag db	0	;set when status bit 6 clears within the timeout
mpu401_read_ready_flag	db	0	;set when status bit 7 clears within the timeout
	mov	dx,mpu_status
	in	al,dx
	and	al,80h		;status bit 7
	jne	first_status_done
	mov	dx,mpu_data	;status bit 7 clear: read the data port
	in	al,dx
first_status_done:
	mov	cx,1388h	;5000-poll timeout
wait_write_ready:
	mov	dx,mpu_status
	in	al,dx
	and	al,40h		;bit 6: still busy
	jne	write_ready_poll
	mov	byte ptr cs:mpu401_write_ready_flag,1
	jmp	near ptr check_write_ready
write_ready_poll:
	loop	wait_write_ready
check_write_ready:
	cmp	byte ptr cs:mpu401_write_ready_flag,0
	je	no_write_ready
	outp	mpu_status,0ffh	; MPU-401 reset command
	jmp	near ptr try_read
no_write_ready:
	jmp	near ptr fail
try_read:
	mov	cx,3		;three attempts to see active sensing
read_attempt:
	mov	bx,1388h	;5000-poll timeout per attempt
wait_read_ready:
	mov	dx,mpu_status
	in	al,dx
	and	al,80h		;status bit 7
	jne	read_ready_poll
	mov	byte ptr cs:mpu401_read_ready_flag,1
	jmp	near ptr check_read_ready
read_ready_poll:
	dec	bx
	jne	wait_read_ready
check_read_ready:
	cmp	byte ptr cs:mpu401_read_ready_flag,0
	je	next_attempt
	mov	dx,mpu_data
	in	al,dx
	cmp	al,0feh		;MIDI active sensing
	je	got_active_sense
	mov	byte ptr cs:mpu401_read_ready_flag,0
next_attempt:
	loop	read_attempt
fail:
	mov	ax,0fffh	;no active sensing: report failure
	jmp	near ptr done
got_active_sense:
	mov	dx,mpu_status
wait_write_ready_again:
	in	al,dx
	and	al,40h		;bit 6: still busy
	jne	wait_write_ready_again
	outp	mpu_status,3fh	; MPU-401 enter UART mode
read_until_active_sense:
	mov	dx,mpu_status
	in	al,dx
	and	al,80h		;status bit 7
	jne	read_until_active_sense
	mov	dx,mpu_data
	in	al,dx
	cmp	al,0feh		;MIDI active sensing
	jne	read_until_active_sense
	mov	ax,0		;success
done:
	pops	dx,cx,bx
	ret
mpu401_reset_and_sync_ endp
codeseg	ends
	end
