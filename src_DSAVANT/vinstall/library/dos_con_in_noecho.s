; Read one console character without echo and return it in AL.
	include lmacros.h

	procdef dos_con_in_noecho, <>
	push bp
	mov bp,sp
	dos 7	; DOS AH=7 reads one character without echo.
	mov ah,0	; The routine returns the character in AL only.
	mov sp,bp	; Restore the caller's stack frame.
	pop bp
	ret
	pend dos_con_in_noecho
	finish
	end
