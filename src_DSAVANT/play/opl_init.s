; :ts=8
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	play_device:byte
	extrn	opl_voice_count:byte
	extrn	opl_keys_off_:near
	extrn	opl_write_:near
	public	opl_init_
; silence all OPL channels and reset its control registers; returns 0
opl_init_ proc near
	mov	al,8			;channels 0-8
	cmp	byte ptr cs:play_device,1
	je	devok			;both outcomes store 8
	cmp	byte ptr cs:play_device,4
	je	devok
devok:
	mov	cs:opl_voice_count,al
	call	opl_keys_off_
	pushf
	cli				;no timer interrupt between OPL writes
	mov	ax,0120h		;reg 01h = 20h: waveform select enable
	call	opl_write_
	mov	ax,0bd00h		;reg BDh = 0: rhythm mode and depth off
	call	opl_write_
	mov	ax,0406h		;reg 04h = 06h: mask timers 1 and 2
	call	opl_write_
	popf
	push	dx
	mov	dx,388h			;OPL address port
	mov	al,40h			;select register 40h, as opl_write leaves it
	out	dx,al
	pop	dx
	mov	ax,0
	ret
opl_init_ endp
codeseg	ends
	end
