; :ts=8
;Copyright (C) 1984 by Manx Software Systems
codeseg	segment	para public 'code'
dataseg	segment	para public 'data'
save_si_	dw	0
save_di_	dw	0
save_sp_	dw	0
save_bp_	dw	0
save_ret_ dw	0
	extrn	_Uorg_:word, _Uend_:word
dataseg	ends
	assume	cs:codeseg,ds:dataseg
	extrn	ovmain_:near
	public $ovbgn
$ovbgn proc near
	pop	save_ret_
	pop	cx		;throw away overlay name
	mov	save_sp_,sp
	mov	save_bp_,bp
	mov	save_si_,si
	mov	save_di_,di
	cld
	mov	di,offset _Uorg_	;clear uninitialized data
	mov	cx,offset _Uend_
	sub	cx,di
	shr	cx,1
	jz	nobss
	sub	ax,ax
rep	stosw
nobss:
	call	ovmain_
;
;	fall through into ovexit code
;
ovexit_:
	mov	bp,save_bp_
	mov	sp,save_sp_
	mov	si,save_si_
	mov	di,save_di_
	push	cx		;fake argument to replace overlay name
	jmp	save_ret_
$ovbgn endp
codeseg ends
	end $ovbgn
