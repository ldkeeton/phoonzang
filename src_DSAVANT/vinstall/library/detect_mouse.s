; Set the caller's mouse flag when the BIOS mouse handler is installed.
	include lmacros.h

install_flags	equ word ptr -2[bp]

	procdef detect_mouse, <>
	dosx	3533h	; DOS AH=35h returns the INT 33h vector in ES:BX.
	mov ax,es
	or ax,bx
	je short .return	; A null vector means there is no mouse handler.
	cmp byte ptr es:[bx],0cfh
	je short .return	; The IRET opcode marks an uninstalled handler.
	mouse	0	; Query the BIOS mouse; AL reports whether one exists.
	or al,al
	je short .return	; Leave the caller's flag unchanged when absent.
	or install_flags,1000h	; Record the detected mouse in the caller's flags.
.return:
	ret
	pend detect_mouse
	finish
	end
