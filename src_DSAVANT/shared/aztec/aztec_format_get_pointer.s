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
	public aztec_format_get_pointer_
aztec_format_get_pointer_ proc near
	loades	di,args
ifndef LONGPTR
	test	options,FAROPT
	jnz	load_longptr
	mov	di,[di]
	add	word ptr args,2
	ret
load_longptr:
endif
	les	di,es:dword ptr [di]
	add	word ptr args,4
	ret
aztec_format_get_pointer_ endp

; process a field width or precision specifier

	finish
	end
