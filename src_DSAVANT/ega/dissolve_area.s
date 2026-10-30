; Forward the rectangle arguments to the EGA area display routine.
; :ts=8
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	show_area_:near
	public	dissolve_area_
x1	equ	0ch		;left column
y1	equ	0eh		;top row
x2	equ	10h		;right column
y2	equ	12h		;bottom row
dissolve_area_	proc	near
	jmp	near ptr show_area_
dissolve_area_	endp
codeseg	ends
	end
