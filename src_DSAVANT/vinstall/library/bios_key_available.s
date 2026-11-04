; Report whether the BIOS keyboard buffer has a waiting keystroke.
	include	lmacros.h
	procdef	bios_key_available
	push	bp
	mov	bp,sp
	pushs	di,si
	; INT 16h AH=1 checks for a key without consuming it.
	kbd	1
	; Return one when the BIOS reports a waiting key, otherwise zero.
	mov	ax,0
	je	short no_key_waiting
	mov	ax,1
no_key_waiting:
	pops	si,di
	mov	sp,bp
	pop	bp
	pret
	pend	bios_key_available
	finish
	end
