; empty near procedure: returns immediately, leaving every register untouched
	include	lmacros.h
	assume	cs:codeseg
	public	no_operation_
no_operation_ proc near
	ret
no_operation_ endp
	finish
	end
