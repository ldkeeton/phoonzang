; Copyright (C) 1984 by Manx Software Systems
	include lmacros.h
dataseg segment para public 'data'
	extrn ovname_:word
dataseg ends
	assume ds:dataseg
	extrn aztec_impl_ovld_:near
	public aztec_ovloader_
aztec_ovloader_ proc near
	mov bx,sp
	mov ax,word ptr 2[bx]
	mov ovname_,ax
	call aztec_impl_ovld_
	jmp ax
aztec_ovloader_ endp
	finish
	end
