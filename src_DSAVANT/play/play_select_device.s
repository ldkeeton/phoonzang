; :ts=8
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	play_device:byte
request	equ	14h		;stack arg byte: 0ffh = set device
device	equ	15h		;stack arg byte: device number
	public	play_select_device_
; jump-table slot 5: set the device (request 0ffh) or report the current one
play_select_device_ proc near
	push	bp
	mov	bp,sp
	pushs	di,si,es,ds,dx,bx
	cmp	byte ptr request[bp],0ffh
	jne	current			;not a set request
	jmp	play_set_device_
current:
	mov	al,cs:play_device
	call	clamp_device_		;out-of-range device becomes 0
	mov	byte ptr device[bp],al
	jmp	play_configure_timer_handler_
play_select_device_ endp
; The contiguous executable bytes after the dispatch wrapper share one fragment.
; Helper and dispatch labels mirror the generated play.asm names.
	extrn	io_delay:near
	extrn	opl_silent_note_pulse:near
	extrn	play_configure_timer_handler_:near
	extrn	saved_pic_mask:byte
	extrn	saved_int08_offset:word
	extrn	saved_int08_segment:word
	extrn	music_tempo:word
	extrn	cseg_0a96:word
	extrn	cseg_0a98:word
	extrn	cseg_0a89:word
	extrn	cseg_0a8b:word
	extrn	tick_divider:word
	extrn	play_sample_mode_flag:byte
	extrn	sample_output_port:word
	extrn	play_set_device_return_:near
	public	clamp_device_
clamp_device_ proc near
	cmp	al,6
	jb	clamp_device_done
	mov	al,0
clamp_device_done:
	ret
clamp_device_ endp

	public	hook_int08_and_configure_pit
	public	int08_hooked
hook_int08_and_configure_pit proc near
	pushs	di,es
	cld
	cmp	byte ptr cs:int08_hooked,0
	jne	hook_int08_and_configure_pit_forward1
	in	al,21h
	mov	byte ptr cs:saved_pic_mask,al
	cli
	xor	ax,ax
	mov	es,ax
	mov	di,20h
	mov	ax,word ptr es:[di]
	mov	word ptr cs:saved_int08_offset,ax
	mov	ax,0BB4h
	stosw
	mov	ax,word ptr es:[di]
	mov	word ptr cs:saved_int08_segment,ax
	mov	ax,cs
	stosw
	sti
	mov	al,34h
	out	43h,al
	call	io_delay
	in	al,40h
	mov	ah,al
	call	io_delay
	in	al,40h
	xchg	al,ah
	mov	word ptr cs:cseg_0a96,ax
	mov	al,34h
	out	43h,al
	mov	ax,word ptr cs:music_tempo
	mov	bl,48h
	mul	bl
	mov	word ptr cs:cseg_0a98,ax
	out	40h,al
	call	io_delay
	mov	al,ah
	out	40h,al
hook_int08_and_configure_pit_forward1:
	mov	byte ptr cs:int08_hooked,0FFh
	pops	es,di
	ret
hook_int08_and_configure_pit endp

int08_hooked db 0

play_set_device_ proc near
	mov	ah,0
	int	13h
	cmp	byte ptr 15h[bp],4
	jne	play_set_device_forward1
	mov	byte ptr 15h[bp],1
play_set_device_forward1:
	mov	ax,64h
	mov	word ptr cs:tick_divider,ax
	mov	al,byte ptr 15h[bp]
	mov	byte ptr cs:play_device,al
	mov	byte ptr cs:play_sample_mode_flag,0
	pushf
	pop	ax
	test	ah,80h
	je	play_set_device_forward2
	inc	byte ptr cs:play_sample_mode_flag
play_set_device_forward2:
	mov	bl,byte ptr cs:play_device
	shl	bl,1
	xor	bh,bh
	jmp	word ptr cs:[bx+play_device_setup_dispatch_table]
play_device_setup_dispatch_table label word
	dw	offset play_set_device_return_
	dw	offset play_device_setup_opl_pulse_case
	dw	offset play_device_setup_port_case
	dw	offset play_device_setup_port_case
	dw	offset play_device_setup_noop_case
play_device_setup_port_case:
	mov	ax,word ptr 10h[bp]
	mov	word ptr cs:cseg_0a89,ax
	inc	ax
	mov	word ptr cs:cseg_0a8b,ax
	inc	ax
	cmp	byte ptr 15h[bp],2
	je	play_set_device_forward3
	add	ax,0Dh
	dec	byte ptr 15h[bp]
play_set_device_forward3:
	mov	word ptr cs:sample_output_port,ax
	outp	<word ptr cs:cseg_0a89>,7
	mov	dx,word ptr cs:cseg_0a8b
	in	al,dx
	or	al,0C0h
	out	dx,al
	outp	<word ptr cs:cseg_0a89>,0Ah
	mov	dx,word ptr cs:cseg_0a8b
	in	al,dx
	or	al,10h
	out	dx,al
	outp	<word ptr cs:cseg_0a89>,0Fh
	outp	<word ptr cs:cseg_0a8b>,70h
	outp	<word ptr cs:cseg_0a89>,0Eh
	outp	<word ptr cs:cseg_0a8b>,80h
	jmp	near ptr play_set_device_return_
play_device_setup_noop_case:
	jmp	near ptr play_set_device_return_
	db	15 dup (0)
play_device_setup_opl_pulse_case:
	call	opl_silent_note_pulse
	jmp	near ptr play_set_device_return_
play_set_device_ endp
codeseg	ends
	end
