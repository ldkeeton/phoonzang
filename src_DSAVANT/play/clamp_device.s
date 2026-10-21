; :ts=8
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	public	clamp_device_
; device number in al: values 6 and up become 0
clamp_device_ proc near
	cmp	al,6
	jb	ok			;devices 0-5 are valid
	mov	al,0
ok:
	ret
clamp_device_ endp
codeseg	ends
	end
