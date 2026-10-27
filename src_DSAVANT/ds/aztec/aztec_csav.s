; Copyright (C) 1983 by Manx Software Systems
; :ts=8
	include lmacros.h
dataseg segment para public 'data'
	extrn _sbot_:word
	extrn	_lowwater_:word
dataseg ends
	assume ds:dataseg,cs:codeseg
	extrn	$cret:near
	extrn	ds_loc_4676_:near
	public	$csav
$csav	proc
	pop	bx
ifdef FARPROC
	pop	dx
endif
	push	bp
	mov	bp,sp
	add	sp,ax
	cmp	sp,bp			;check for wrap around
	ja	ds_loc_4676_
	cmp	sp,word ptr _sbot_	;or moving into the RED zone
	jb	ds_loc_4676_
	cmp	sp,word ptr _lowwater_
	ja	nodeeper
	mov	word ptr _lowwater_,sp
nodeeper:
	pushs	di,si
ifdef	FARPROC
	push	cs
	mov	ax,offset $cret
	pushs	ax,dx,bx
	ret
else
	call	bx
endif
$csav	endp

	finish
	end
