; Default mouse pointer image.
codeseg	segment	byte public 'code'
	public	default_pointer_bitmap
default_pointer_bitmap	db	7 dup (0),0ffh,0ffh,0ffh,00h,0b3h,0b6h,0b6h,0b6h,0b6h,00h,0ffh,0ffh,0ffh,00h,0b3h
	db	13h,15h,0b6h,00h,0ffh,0ffh,0ffh,0ffh,00h,0b3h,15h,16h,0b6h,00h,0ffh,0ffh
	db	0ffh,0ffh,00h,0b3h,0b6h,0b3h,0b6h,0c1h,00h,0ffh,0ffh,0ffh,00h,0b3h,00h,00h
	db	0b3h,0b6h,0c1h,00h,0ffh,0ffh,00h,00h,0ffh,0ffh,00h,0b3h,0b6h,0c1h,00h,0ffh
	db	0ffh,0ffh,0ffh,0ffh,0ffh,00h,0b3h,0b6h,0c1h,00h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	db	00h,0b3h,0c3h,00h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,00h,00h,0ffh
codeseg	ends
	end
