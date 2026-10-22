; probes the mouse driver and sets bit 12 of the caller's result word;
; shares the caller's frame
	include	lmacros.h
	assume	cs:codeseg
	extrn	mouse_button_count:byte
	public	detect_mouse
mode	equ	4		;caller's video mode argument
result	equ	-2		;caller's result word (LILQ's local)
found_flag equ	1000h		;mouse driver present in the caller's result
detect_mouse proc near
	mov	ax,word ptr mode[bp]	;mode 4 needs no mouse check
	cmp	ax,4
	je	done
	mov	ax,3533h	;int 21h/35h: get vector 33h (mouse)
	int	21h
	mov	ax,es
	or	ax,bx		;null vector: no driver loaded
	je	done
	cmp	es:byte ptr [bx],0cfh	;first byte cfh: vector is a bare iret stub
	je	done
	mov	ax,0		;int 33h/0: reset and get mouse status
	int	33h
	mov	byte ptr cs:mouse_button_count,al	;save the installed-driver count
	or	al,al		;0: driver reset failed
	je	done
	or	word ptr result[bp],found_flag	;flag mouse support in the caller's result
done:
	ret
detect_mouse endp
	finish
	end
