; RGB to palette index map; 0ffh means no entry.
codeseg	segment	byte public 'code'
	public	rgb_to_palette
rgb_to_palette	db	0efh,9fh,9dh,9ch,9bh,0ffh,9ah,99h,48h,8eh,8dh,8ch,0ffh,0ffh,0ffh,0ffh
	db	38h,0ffh,4fh,0ffh,8bh,0ffh,0ffh,0ffh,37h,0ffh,0ffh,4eh,0ffh,89h,88h,0ffh
	db	36h,0ffh,0ffh,4dh,0ffh,0ffh,0ffh,87h,35h,0ffh,0ffh,0ffh,4ch,0ffh,0ffh,86h
	db	34h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,33h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	db	0eeh,0afh,0feh,0fdh,0ffh,0ffh,0ffh,0ffh,5ch,7eh,7dh,0ffh,0bfh,0ffh,0ffh,0ffh
	db	46h,0ffh,7bh,0ffh,0beh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	db	0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,85h
	db	0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,4bh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	db	0cbh,0ffh,0aeh,0ffh,0fch,0fbh,0ffh,0ffh,0edh,0ech,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	db	5bh,0e1h,70h,7ah,0ffh,0bdh,0ffh,98h,45h,0ffh,0ffh,78h,0ffh,0ffh,0ffh,0ffh
	db	0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,84h
	db	0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	db	0f5h,0ffh,0ffh,0adh,0ffh,0ffh,0fah,0f9h,0c8h,0a2h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	db	0c7h,0ebh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,6dh,0ffh,0bch,0ffh,97h
	db	44h,0ffh,0ffh,0ffh,0ffh,0ffh,0bbh,0ffh,43h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	db	0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,83h,0ffh,0ffh,0ffh,31h,0ffh,0ffh,0ffh,0ffh
	db	1ch,0ffh,0a6h,0ffh,0ach,0ffh,0ffh,0f8h,0ffh,0f3h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	db	0c6h,0eah,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0c5h,0d5h,0e6h,0ffh,0ffh,0ffh,0ffh,0ffh
	db	0ffh,0ffh,0ffh,0ffh,6ah,67h,0bah,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0b9h,0ffh
	db	42h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,82h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	db	1ah,0ffh,0ffh,0ffh,0ffh,0abh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	db	29h,0ffh,0f2h,0ffh,0ffh,0ffh,0ffh,0ffh,3ch,0d4h,0e8h,0ffh,0ffh,0ffh,0ffh,0f7h
	db	0c3h,0ffh,0e5h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,66h,64h,0b8h
	db	0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,81h,41h,0ffh,0ffh,0ffh,0ffh,30h,0ffh,80h
	db	19h,0ffh,0ffh,0a5h,0ffh,0ffh,0aah,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	db	0ffh,0ffh,0f1h,0ffh,0ffh,0ffh,0ffh,0ffh,28h,0ffh,0ffh,0f0h,0ffh,0ffh,0ffh,0ffh
	db	2fh,0ffh,0dfh,0ffh,0ffh,0ffh,0ffh,0ffh,0c0h,0ffh,0d1h,0e4h,0ffh,0ffh,0ffh,0f6h
	db	0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,62h,60h,0ffh,0ffh,0ffh,40h,0ffh,0ffh,0ffh,0ffh
	db	17h,0ffh,0ffh,0ffh,0a4h,0ffh,0ffh,0a9h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	db	0ffh,0ffh,15h,0ffh,0ffh,96h,0ffh,0ffh,27h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0a8h
	db	0ffh,26h,0ffh,0deh,13h,0ffh,95h,0ffh,0b6h,2dh,25h,0dch,0dah,12h,94h,0a7h
	db	56h,0b5h,0b2h,0ffh,0e3h,0d7h,11h,0ffh,55h,0ffh,0b1h,0b0h,0ffh,52h,50h,10h
	db	00h
codeseg	ends
	end
