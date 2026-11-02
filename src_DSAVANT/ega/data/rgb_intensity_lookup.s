; RGB intensity lookup table used by the EGA palette routines.
codeseg	segment	byte public 'code'
	public	rgb_intensity_lookup
rgb_intensity_lookup	db	05h,00h,08h,0ah,0ah,0aah,11h,2ah,13h,22h,16h,2fh,19h,0ffh,1ah,7fh
	db	1ch,77h
codeseg	ends
	end
