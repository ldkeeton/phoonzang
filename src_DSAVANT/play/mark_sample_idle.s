	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	sample_idle:byte

; Clear speaker bit 0 and record that no sample is playing.
	procdef	mark_sample_idle
	in	al,61h
	and	al,0feh		;clear speaker gate bit 0
	out	61h,al
	mov	byte ptr cs:sample_idle,0ffh
	ret
	pend	mark_sample_idle

	db	0,0			;preserve the two trailing bytes in the span

codeseg	ends
	end
