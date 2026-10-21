; :ts=8
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	play_device:byte
	extrn	clamp_device_:near
	extrn	play_set_device_:near
	extrn	play_install_handler_:near
request	equ	14h		;stack arg byte: 0ffh = set device
device	equ	15h		;stack arg byte: device number
	public	play_select_device_
; jump-table slot 4: set the device (request 0ffh) or report the current one
play_select_device_ proc near
	push	bp
	mov	bp,sp
	push	di
	push	si
	push	es
	push	ds
	push	dx
	push	bx
	cmp	byte ptr request[bp],0ffh
	jne	current			;not a set request
	jmp	play_set_device_
current:
	mov	al,cs:play_device
	call	clamp_device_		;out-of-range device becomes 0
	mov	byte ptr device[bp],al
	jmp	play_install_handler_
play_select_device_ endp
codeseg	ends
	end
