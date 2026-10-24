; :ts=8
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	opl_write_:near
	extrn	opl_delay_short_:near
	extrn	opl_delay_long_:near
	public	opl_silent_note_pulse_
; resets PIT 0 to count 65536, keys an OPL note (A0h=8Fh, B0h=2Eh) for 0952h PIT ticks, keys it off, then writes 3Fh to reg 40h directly
opl_silent_note_pulse_ proc near
	pushf
	cli
	mov	al,36h			;PIT ch 0, lo/hi byte, mode 3
	out	43h,al
	xor	ax,ax
	out	40h,al			;count 0 (65536): low byte
	out	40h,al			;high byte
	mov	ax,2021h		;reg 20h = 21h
	call	opl_write_
	mov	ax,60f0h		;reg 60h = F0h: attack/decay
	call	opl_write_
	mov	ax,80f0h		;reg 80h = F0h: sustain/release
	call	opl_write_
	mov	ax,0c001h		;reg C0h = 01h
	call	opl_write_
	mov	ax,0e000h		;reg E0h = 0: waveform
	call	opl_write_
	mov	ax,433fh		;reg 43h = 3Fh: operator 2 level, fully attenuated
	call	opl_write_
	mov	ax,0b000h		;reg B0h = 0: key off
	call	opl_write_
	mov	ax,0a000h		;reg A0h = 0
	call	opl_write_
	mov	bx,028fh		;bl = A0h value, bh + 2Ch = B0h value
	mov	ah,0a0h
	mov	al,bl			;reg A0h = 8Fh: F-number low
	call	opl_write_
	mov	ax,0b02ch
	add	al,bh			;reg B0h = 2Eh: key on, block 3, F-number high 2
	call	opl_write_
	cli
	mov	al,0			;latch PIT ch 0
	out	43h,al
	in	al,40h
	mov	bl,al
	in	al,40h
	mov	bh,al			;bx = start count
	.repeat
		mov	al,0
		out	43h,al
		in	al,40h
		mov	cl,al
		in	al,40h
		mov	ch,al
		neg	cx
		add	cx,bx			;ticks elapsed; PIT counts down
	.until	cx ge 0952h
	mov	ax,0b020h		;reg B0h = 20h: key off
	call	opl_write_
	mov	ax,0a000h		;reg A0h = 0
	call	opl_write_
	outp	388h,40h		;select reg 40h without opl_write's shadow
	call	opl_delay_short_		;4 status-port reads
	mov	al,3fh
	inc	dx
	out	dx,al			;reg 40h = 3Fh
	call	opl_delay_long_		;23 status-port reads
	popf
	ret
opl_silent_note_pulse_ endp
codeseg	ends
	end
