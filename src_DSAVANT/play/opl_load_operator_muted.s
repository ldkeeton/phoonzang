	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	opl_write_:near

; Write five patch bytes at ds:si to operator BH's 20h, 40h, 60h, 80h and E0h
; registers, forcing the level to 3Fh (silent).  No caller.
	procdef	opl_load_operator_muted
	pushs	ax,bx
	mov	ah,20h			; tremolo/vibrato/sustain/KSR/multiplier
	add	ah,bh
	lodsb
	call	opl_write_
	mov	ah,40h			; key-scale level and attenuation
	add	ah,bh
	lodsb
	or	al,3fh			; full attenuation
	call	opl_write_
	mov	ah,60h			; attack/decay
	add	ah,bh
	lodsb
	call	opl_write_
	mov	ah,80h			; sustain/release
	add	ah,bh
	lodsb
	call	opl_write_
	mov	ah,0e0h			; waveform
	add	ah,bh
	lodsb
	call	opl_write_
	pops	bx,ax
	ret
	pend	opl_load_operator_muted

codeseg	ends
	end
