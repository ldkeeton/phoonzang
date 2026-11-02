; Random number generator seeds.
codeseg	segment	byte public 'code'
	public	random_seed_a
random_seed_a	db	0b8h,0bh
	public	random_seed_b
random_seed_b	db	01h,00h
	public	random_seed_c
random_seed_c	db	2fh,75h
codeseg	ends
	end
