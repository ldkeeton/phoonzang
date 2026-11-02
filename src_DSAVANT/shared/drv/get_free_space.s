; Return free-space information for the requested memory or disk source.
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	maze_paras_used:word
	extrn	ems_para_limit:word
	extrn	ems_paras_used:word

; Parameters passed on the caller's stack.
space_kind	equ	0ch	; selects DOS memory, EMS, disk, or game memory
drive_number	equ	0eh	; DOS drive number used by disk query

	public	get_free_space_
get_free_space_ proc near
	push	bp
	mov	bp,sp
	sub	sp,0ah
	pushs	ds,es,si,di
	movseg	es,ds

	; Dispatch the selector to the corresponding available-space query.
	cmp	word ptr space_kind[bp],0
	je	short get_free_space_dos_memory
	cmp	word ptr space_kind[bp],1
	je	short get_free_space_ems
	cmp	word ptr space_kind[bp],3
	je	short get_free_space_disk

	; Game memory is measured in paragraphs, then converted to bytes.
	mov	ax,4180h
	sub	ax,word ptr cs:maze_paras_used
	mov	bx,10h
	mul	bx
	jmp	short get_free_space_return

get_free_space_disk:
	; DOS reports invalid drives with AX=FFFFh; return zero in that case.
	mov	ah,36h
	mov	dx,word ptr drive_number[bp]
	int	21h
	cmp	ax,0ffffh
	jne	short get_free_space_disk_valid
	xor	ax,ax
	xor	dx,dx
	jmp	short get_free_space_return
get_free_space_disk_valid:
	; Convert available clusters to bytes using sectors/cluster and bytes/sector.
	mul	cx
	mul	bx
	jmp	short get_free_space_return

get_free_space_dos_memory:
	; DOS function 48h with BX=FFFFh reports the largest available block.
	mov	ah,48h
	mov	bx,0ffffh
	int	21h
	mov	ax,10h
	mul	bx
	jmp	short get_free_space_return

get_free_space_ems:
	; EMS free space is the difference between its paragraph limit and usage.
	mov	ax,word ptr cs:ems_para_limit
	sub	ax,word ptr cs:ems_paras_used
	mov	bx,10h
	mul	bx

get_free_space_return:
	pops	di,si,es,ds
	mov	sp,bp
	pop	bp
	ret
get_free_space_ endp
codeseg	ends
	end
