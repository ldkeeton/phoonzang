; Prints the font memory error and terminates with failure status.
	include	lmacros.h
	assume	cs:codeseg
	public	font_memory_error_

font_memory_error_ proc near
	fatal	font_memory_error_msg	; DOS 9 prints the string; DOS 4Ch exits with status 1
font_memory_error_msg:
	db	7,13,10	; ring the bell and start a new line
	db	'Memory error loading font',13,10,'$'
font_memory_error_ endp
	finish
	end
