; Copyright (C) 1983 1984 by Manx Software Systems
; :ts=8
	include lmacros.h
codeseg	segment	word public 'code'
	public	$MEMRY
	public	_mbot_, _sbot_, _mtop_,_lowwater_
dataseg	segment	word public 'data'
	extrn	_Uorg_:byte,_Uend_:byte
$MEMRY	dw	offset _Uend_
	public	errno_
errno_	dw	0
	public	_dsval_,_csval_
_dsval_	dw	0
_csval_	dw	0
_mbot_	dw	0
_sbot_	dw	0
_mtop_	dw	0
_lowwater_	dw	-1
	public	_PSP_
_PSP_	dw	0
	extrn	_STKSIZ_:word,_HEAPSIZ_:word
	extrn	_STKLOW_:word,_STKRED_:word
bad8087	db	"8087/80287 is required!",13,10,'$'
dataseg	ends

	extrn aztec_begin_exitad_:word
exitad equ aztec_begin_exitad_
	extrn aztec_begin_exitcs_:word
exitcs equ aztec_begin_exitcs_

	assume	cs:codeseg,ds:dataseg,es:dataseg,ss:dataseg
ifdef FARPROC
	extrn aztec_Croot_:far, $fltinit:far
else
	extrn aztec_Croot_:near, $fltinit:near
endif
	public	aztec_begin_
aztec_begin_	proc	far
	mov	bp,dataseg
	test	bp,bp
	jnz	notcom
	mov	bp,ds
notcom:
	mov	exitcs,ds
	mov	bx,[2]	;get top segment
	sub	bx,bp		;compute size of Data seg
	cmp	bx,4096		;check if greater than 64K
	jbe	smallseg
	lea	bx,[bp+4096]	;end address of segment (paragraphs)
	mov	ax,es
	sub	bx,ax		;compute length of segment
	dos	4aH	; SETBLOCK system call
	mov	bx,4096
smallseg:
	mov	es,bp
	mov	es:_PSP_,ds
	mov	cl,4
	shl	bx,cl
	cmp	es:_STKLOW_,0
	je	setstk 		;stack goes above heap
	mov	ax,es:_STKRED_	;stack goes below heap
	shl	ax,1		;allow at least twice the RED zone size
	mov	bx,es:_STKSIZ_
	shl	bx,cl		;compute requested stack size
	cmp	bx,ax		;but don't allow too little
	ja	sizeok
	mov	bx,ax
sizeok:
	add	bx, offset _Uend_
setstk:
	cli
	mov	ss,bp
	mov	sp,bx
	sti
;
	test	bx,bx
	jnz	oksav
	mov	bx,0ffffh
oksav:
	mov	es:_mtop_,bx
;				now adjust heap size if necessary
	cmp	es:_STKLOW_,0	; can't do it unless heap above stack
	je	heapdone
	mov	si,es:_HEAPSIZ_
	mov	ax,bx
	inc	ax
	mov	es:$MEMRY,ax	; start of heap for later
	shl	si,cl
	add	bx,si
	jnc	heapok
	mov	bx,0ffffh
heapok:
	mov	es:_mtop_,bx	; and save as _mtop_
	add	bx,15
	shr	bx,cl		; convert to paragraph form
	mov	ax,es
	add	bx,ax		; calculate paragraph address of last byte
	mov	ax,ds		; now take the paragrph form and
	sub	bx,ax		;compute length of segment
	mov	bp,es		;save ES
	mov	es,ax
	dos	4aH	; SETBLOCK system call
	jnc	heapdone
	mov	al,254
	jmp	exits
heapdone:
	mov	es,bp		;restore ES
	cld
;		clear uninitialized data
	mov	di,offset _Uorg_
	mov	cx,offset _Uend_
	sub	cx,di
	inc	cx
	shr	cx,1
	jcxz	noclear
	sub	ax,ax
rep	stosw
noclear:
;
	mov	es,[2cH]		;get enviroment segment
	sub	di,di
	mov	cx,7fffH
arglook:
	mov	ah,es:byte ptr [di]
	cmp	ah,'='			;look for null named env. string
	je	found_args
	test	ah,ah
	jz	no_args
repne	scasb				;look for null byte
	jz	arglook
no_args:
	mov	cl,[80H]
	sub	ch,ch
	mov	si,81H
	mov	ax,1
	jmp	short mov_args
;
found_args:
	sub	ax,ax
	stosb			;zap and skip over '='
	mov	si,di
	mov	di,es
	mov	ds,di
mov_args:
	push	ax			;first arg # for Croot
	mov	es,bp			;reload ES with our real dataseg
	mov	di,es:$MEMRY
	push	di			;argp for Croot
	jcxz	cpy_done
cpy_args:				;copy argument string to work buffer
	lodsb
	test	al,al
	jz	cpy_done
	stosb
	loop	cpy_args
cpy_done:
	sub	al,al
	stosb			;null terminate string
	mov	ds,bp		;set DS, now DS, SS, ES are equal
	inc	di
	and	di,0fffeH	;adjust to word boundary
	mov	$MEMRY,di	;save memory allocation info for sbrk()
	mov	_mbot_,di
	mov	_sbot_,offset _Uend_
	cmp	_STKLOW_,0
	jnz	nostk
	mov	_sbot_,di
nostk:
	mov	ax,_sbot_
	add	ax,_STKRED_
	mov	_sbot_,ax
	mov	_dsval_,ds
	mov	_csval_,cs
	call	$fltinit
	jc	no_8087
	call	aztec_Croot_		;Croot(argp, first)
	jmp	short exits
;
no_8087:
	mov	ah,9		;dos print message
	mov	dx,offset bad8087
	int	21h		;tell the user about it
	mov	al,253
	jmp	short exits

	public aztec_impl_exit_
aztec_impl_exit_:
	pops	ax,ax	; fetch return code
ifdef FARPROC
	pop	ax
endif
exits:
	dos	4cH
	jmp	dword ptr exitad
aztec_begin_	endp

retip	dw	0
retcs	dw	0

	public $dbgentry
$dbgentry proc far
	pop	cs:retip
	pop	cs:retcs	; save return address into debugger
	pop	ds		;set DS
	call	near ptr caller
	jmp	dword ptr cs:retip ; return to debugger
$dbgentry endp

caller	proc far
	pushs	di,si	; CS value of local function; IP value call local function
	ret		;far return instruction
caller	endp

codeseg	ends
	end	aztec_begin_
