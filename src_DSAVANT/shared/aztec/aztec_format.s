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

	extrn aztec_format_get_pointer_:near, aztec_format_do_width_:near
	procdef	aztec_format,<<result,fptr>, <fmtstr,ptr>, <args,ptr>>
	sub	sp,autosize
	pushs	di,si
ifdef LONGPTR
	mov	dsvalue,ds
endif
	cld
	ldptr	si,fmtstr
	mov	charcount,0
;
main_loop:
	mov	options,0	;reset all conversion flags
	lodsb		;get next byte of format string
	cmp	al,'%'	;is it a conversion character ?
	je	ispercent	;yes, then perform conversion
default:
	test	al,al
	jz	finishup
	call	loc_NJTI_
	jmp	main_loop
finishup:
	mov	ax,charcount
ifdef LONGPTR
	mov	ds,dsvalue
endif
	pops	si,di
	mov	sp,bp
	pret

ispercent:
	mov	fillc,' '
	mov	pos_sign,0	;default is no sign char for positive #'s
	mov	sign,0		;clear out sign, so %s works right
	mov	precision,-1
next_flag:
	lodsb			;next byte of format string
	cmp	al,'-'		;check for left justify flag
	jne	not_minus
	or	options,LEFTJUST
	jmp	short next_flag
not_minus:
	cmp	al,'+'		;always show sign flag
	jne	not_plus
	mov	pos_sign,'+'
	jmp	short next_flag
not_plus:
	cmp	al,' '		;show positive sign with space
	jne	not_space
	cmp	pos_sign,0
	jne	next_flag
	mov	pos_sign,' '
	jmp	short next_flag
not_space:
	cmp	al,'#'		;print in alternate form
	jne	not_alter
	or	options,ALTFORM
	jmp	short next_flag
not_alter:
	cmp	al,'0'		;check for zero fill flag
	jne	not_zero
	mov	fillc,'0'
	lodsb			;skip over '0'
not_zero:
	call	aztec_format_do_width_
	test	dx,dx
	jns	pos_width
	neg	dx
	or	options,LEFTJUST
pos_width:
	mov	fldwidth,dx
	cmp	al,'.'		;check for precision field
	jne	no_precision
	lodsb			;skip over '.'
	call	aztec_format_do_width_
	mov	precision,dx
no_precision:
	mov	di,cs
	mov	es,di
convert_again:
	mov	di,offset conversions
	mov	cx,CONVCOUNT
repne	scasb
	sub	di,offset conversions+1	;compute index into table
	shl	di,1			;scale for proper addressing
	jmp	word ptr conv_routines[di] ;dispatch handler


ldblopt:
	or	options,LDBLOPT
	lodsb
	jmp	short convert_again
longopt:
	or	options,LONGOPT
shortopt:			;not needed for 8086
NEARopt:	;Aztec promotes near ptrs to far ptrs on varargs calls
	lodsb
	jmp	short convert_again
FARopt:
	or	options,FAROPT
	lodsb
	jmp	short convert_again

octal:
	mov	cx,8		;set base to 8, and unsigned conversion
	jmp	short intconv
upperhex:
	or	options,CASEMAP
hex:
	mov	cx,16		;set base to 16, and unsigned conversion
	jmp	short intconv
unsigned:
	mov	cx,10		;set base to 10, and unsigned conversion
	jmp	short intconv
decimal:
	mov	cx,0ff0aH	;set base (cl) and signed conv flag (ch)
intconv:
	loades	di,args
	mov	ax,es:[di]
	add	di,2
	test	options,LONGOPT
	jz	shortload
	mov	dx,es:[di]
	add	di,2
	jmp	short signcheck
shortload:
	sub	dx,dx
	test	ch,ch
	jz	nosign
	cwd
signcheck:
	test	ch,ch
	jz	nosign
	mov	ch,pos_sign
	mov	sign,ch
	test	dx,dx
	jns	nosign
	mov	sign,'-'
	neg	dx
	neg	ax
	sbb	dx,0
nosign:
	mov	word ptr args,di
	cmp	precision,0	;check for default precision
	jge	prec_ok
	mov	precision,1	;set to default of 1 for integer conversions
prec_ok:

	mov	ch,0
	mov	di,ss
	mov	es,di
	lea	di,buffer+20		;make ES:DI point at end of buffer
digit_loop:
	test	dx,dx
	jnz	notyet
	test	ax,ax
	jz	digits_done
notyet:	sub	bx,bx		;clear high word of quotient
	cmp	cx,dx
	ja	veryeasy
	push	ax
	mov	ax,dx
	sub	dx,dx
	div	cx
	mov	bx,ax		;save high word of quotient
	pop	ax
	div	cx
	jmp	short div_done
veryeasy:
	div	cx
div_done:
	xchg	dx,bx		;ax,dx has quotient, bx has remainder
	mov	bl,cs:digits[bx]
	dec	di
	mov	es:byte ptr [di],bl
	jmp	digit_loop

digits_done:
	test	options,ALTFORM	;check for # form of conversion
	jz	normalform
	cmp	cl,10
	je	normalform	;no effect on decimal conversions
	cmp	cl,16
	jne	nothex
	mov	sign,'x'	;hex: prefixes output with 0x
	jmp	short normalform
nothex:
	dec	di		;octal: prefixes output with 0
	mov	es:byte ptr [di],'0'

normalform:
	lea	cx,buffer+20	;get starting address into cx
	sub	cx,di		;and compute char count into cx
	mov	ax,precision
	sub	ax,cx
	mov	precision,ax
	jle	output_string
	sub	fldwidth,ax	;adjust for precision padding to be done

output_string:
	mov	outsize,cx	;save for later
	cmp	sign,0
	jz	width_ok
	cmp	sign,'x'	;hex prefix instead of sign?
	jne	nothex_prefix
	dec	fldwidth	;adjust for 0x prefix
nothex_prefix:
	dec	fldwidth	;adjust for sign character
width_ok:
	sub	fldwidth,cx	;adjust for characters to be output
	jle	left_justify
	test	options,LEFTJUST
	jnz	left_justify

; emit leading pad characters for right justified field

	cmp	fillc,'0'	;if padding with zeros
	jne	wpad_loop
	call	loc_MRST_	;then we must emit sign chars if required
wpad_loop:
	mov	al,fillc	;emit padding needed to get min field width
	call	loc_NJTI_
	dec	fldwidth
	jg	wpad_loop

left_justify:
	call	loc_MRST_	;emit sign chars if required

zpad_loop:		;emit any padding needed because of precision
	dec	precision
	js	outchars
	mov	al,'0'
	call	loc_NJTI_
	jmp	zpad_loop

outchars:		;emit the characters generated
	dec	outsize
	js	trail_pad
	mov	al,es:byte ptr [di]
	inc	di
	call	loc_NJTI_
	jmp	outchars

trail_pad:		;emit trailing field width padding
	dec	fldwidth
	js	outdone
	mov	al,' '		;trailing pad is always space
	call	loc_NJTI_
	jmp	trail_pad
outdone:
	jmp	main_loop

cap_fltformat:
	or	options,CASEMAP
	add	al,'a'-'A'	;map convert char to lower case
fltformat:
ifndef FLOAT
	add	word ptr args,DBLSIZE
	movseg	es,cs
	mov	di,offset nofltmsg
	sub	fldwidth,10
	jmp	outchars
else

ifdef FARPROC
	extrn	ftoa_:far
else
	extrn	ftoa_:near
endif
ifdef LONGPTR
	push	ds		; save current ds
	mov	ds,dsvalue      ; make sure ds points to dataseg
endif
	sub	al,'e'
	sub	ah,ah
	push	ax
	mov	ax,precision
	test	ax,ax		;check for default precision
	jns	fprec_ok
	mov	ax,6		;set to default of 6 for float conversions
fprec_ok:
	push	ax
	lea	ax,buffer
	pushptr	ax,ss
	loades	bx,args
	add	word ptr args,DBLSIZE
	mov	al,pos_sign
	mov	sign,al
	mov	ax,es:word ptr 6[bx]
	test	ax,ax
	jns	flt_positive
	mov	sign,'-'
	and	ah,7fH		;clear sign bit
flt_positive:
	push	ax
	push	es:word ptr 4[bx]
	push	es:word ptr 2[bx]
	push	es:word ptr [bx]
	call	ftoa_
	ifdef LONGPTR
		add	sp,16
		pop	ds
	else
		add	sp,14
	endif
	mov	di,ss
	mov	es,di
	lea	di,buffer	;make ES:DI point at buffer
	mov	al,0
	mov	cx,0ffffH
repne	scasb
	not	cx		;length counting nul char
	dec	cx		;fix so we have correct length
	jmp	set_buffer
endif

string:
	call	aztec_format_get_pointer_
	push	di		;save for output routine
	mov	al,0
	mov	cx,0ffffH
repne	scasb
	not	cx		;length counting nul char
	dec	cx		;fix so we have correct length
	cmp	cx,precision
	jbe	strlen_ok
	mov	cx,precision	;limit string to precision chars
strlen_ok:
	pop	di		;get buffer address back
	mov	precision,0	;precision already dealt with
	jmp	output_string

char:
	loades	di,args
	mov	al,es:[di]
	add	di,2
	mov	word ptr args,di
	mov	buffer,al
	mov	cx,1
	movseg	es,ss
set_buffer:
	lea	di,buffer	;get buffer address back
	mov	precision,0	;precision already dealt with
	jmp	output_string

pointer:
	jmp	main_loop

numchar:
	call	aztec_format_get_pointer_
	mov	ax,charcount
	mov	es:word ptr [di],ax
	test	options,LONGOPT
	jz	nc_done
	mov	es:word ptr 2[di],0
nc_done:
	jmp	main_loop

loc_MRST_:
	mov	al,sign		;check if sign chars required
	test	al,al
	jz	loc_PLIR_
	cmp	al,'x'		;check for 0x prefix
	jne	normalsign
	mov	al,'0'
	call	loc_NJTI_
	mov	al,'x'
normalsign:
	mov	sign,0		;mark sign as already emitted
			;fall through into emitchar routine and return
loc_NJTI_:
	inc	charcount
	test	options,CASEMAP
	jz	nocasefix
	cmp	al,'a'		;check if lowercase alpha
	jb	nocasefix
	cmp	al,'z'
	ja	nocasefix
	sub	al,'a'-'A'	;map lowercase into uppercase
nocasefix:
	push	es		;save for routines above
ifdef LONGPTR
	mov	ds,dsvalue	;restore normal DS for outside function
endif
	sub	ah,ah
	push	ax
	call	result
	pop	ax		;fix stack
ifdef LONGPTR
	mov	ds,word ptr fmtstr+2	;get internal DS back
endif
	pop	es		;restore
loc_PLIR_:
	ret

	pend aztec_format
	finish
	end
