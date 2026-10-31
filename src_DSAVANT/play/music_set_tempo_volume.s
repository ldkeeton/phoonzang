	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	music_tempo:word
	extrn	chain_period:word
	extrn	play_sample_mode_flag:byte
	extrn	music_enabled:byte
	extrn	music_pit_divisor:word
	extrn	playback_volume:byte
	extrn	io_delay_:near

; Store the tempo and volume, and update the timer when sample playback is active.
	procdef	music_set_tempo_volume
tempo_value	equ	word ptr 8[bp]
volume_value	equ	word ptr 0ah[bp]
	push	bp
	mov	bp,sp
	pushs	bx,dx
	mov	bx,tempo_value
	mov	word ptr cs:music_tempo,bx
	; 0x038e is the fixed numerator used to derive the chain period.
	mov	ax,038eh
	mov	dx,0
	cmp	bx,0
	; A zero tempo leaves the timer period at the constant numerator.
	je	short tempo_period_ready
	div	bx
tempo_period_ready:
	mov	word ptr cs:chain_period,ax
	cmp	byte ptr cs:play_sample_mode_flag,0
	; Only update the hardware timer while sample playback is enabled.
	je	short volume_update
	cmp	byte ptr cs:music_enabled,0
	; Music must also be active before writing the timer ports.
	je	short volume_update
	; Program timer 0 with tempo scaled by 0x48 for sample playback.
	mov	al,034h
	out	043h,al
	call	io_delay_
	mov	ax,word ptr cs:music_tempo
	mov	bl,048h
	mul	bl
	mov	word ptr cs:music_pit_divisor,ax
	out	040h,al
	call	io_delay_
	mov	al,ah
	out	040h,al
volume_update:
	mov	ax,volume_value
	mov	byte ptr cs:playback_volume,al
	pops	dx,bx,bp
	ret
	pend	music_set_tempo_volume

codeseg	ends
	end
