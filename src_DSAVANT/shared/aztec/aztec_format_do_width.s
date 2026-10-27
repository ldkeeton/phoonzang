; Copyright (C) Manx Software Systems, Inc.  1987
; All Rights Reserved.
; :ts=8
	include lmacros.h

INTSIZE	equ	2
LONGSIZE equ	4
DBLSIZE equ	8

ifdef	LONGPTR
loades	macro	reg,expr
	les	reg,dword ptr expr
	endm

pushptr	macro	addr,seg
	push	seg
	push	addr
	endm
else

loades	macro	reg,expr
	push	ds
	pop	es
	mov	reg,word ptr expr
	endm

pushptr	macro	addr,seg
	push	addr
	endm
endif

LDBLOPT equ	01H
LONGOPT equ	02H
FAROPT  equ	04H
LEFTJUST equ	08H
ALTFORM	equ	10H
CASEMAP	equ	20H

CONVCOUNT equ 21
	extrn aztec_format_conversions_:byte, aztec_format_conv_routines_:word
	extrn aztec_format_digits_:byte, aztec_format_nofltmsg_:byte
conversions equ aztec_format_conversions_
conv_routines equ aztec_format_conv_routines_
digits equ aztec_format_digits_
nofltmsg equ aztec_format_nofltmsg_
charcount equ	word ptr -2[bp]
fldwidth equ	word ptr -4[bp]
precision equ	word ptr -6[bp]
outsize	equ	word ptr -8[bp]
dsvalue	equ	word ptr -10[bp]
options	equ	byte ptr -11[bp]
fillc	equ	byte ptr -12[bp]
sign	equ	byte ptr -13[bp]
pos_sign equ	byte ptr -14[bp]
buffer	equ	byte ptr -340[bp]
autosize equ	340

args equ word ptr 8[bp]
	public aztec_format_do_width_
aztec_format_do_width_	proc	near
	cmp	al,'*'		;variable field width indicator
	jne	fixed_width
	loades	di,args
	mov	dx,es:[di]
	add	di,INTSIZE	;bump to next argument
	mov	word ptr args,di
	lodsb			;skip over '*'
	ret

fixed_width:
	sub	dx,dx
	mov	ah,0
pack_digits:
	cmp	al,'0'		;is character a digit ?
	jb	pack_done	;no, then we are done.
	cmp	al,'9'
	ja	pack_done
	sub	al,'0'		;put into absolute range 0-9
	shl	dx,1
	mov	cx,dx		;CX = DX*2
	shl	dx,1		;DX*4
	shl	dx,1		;DX*8
	add	dx,cx		;DX*10
	add	dx,ax		;accumulate value given
	lodsb			;fetch next byte of format string
	jmp	pack_digits
pack_done:
	ret
aztec_format_do_width_	endp

	finish
	end
