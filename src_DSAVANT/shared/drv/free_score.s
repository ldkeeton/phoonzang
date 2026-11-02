; Clear a score-map entry and release its block when occupied.
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	score_slots:word
	extrn	maze_block_count:word
	extrn	renumber_and_release_block_:near

score_number	equ	0ch	; stack argument: score number, limited to 0 through 4

	public	free_score_
free_score_ proc near
	push	bp
	mov	bp,sp
	sub	sp,0ah
	pushs	ds,es,si,di
	movseg	es,ds
	mov	ax,word ptr score_number[bp]
	cmp	ax,5
	jb	short free_score_valid_number
	jmp	near ptr free_score_return
free_score_valid_number:
	; Each score slot occupies four bytes.
	shl	ax,1
	shl	ax,1
	mov	bx,offset score_slots
	add	bx,ax
	mov	ax,word ptr cs:[bx]
	or	ax,ax
	jne	short free_score_entry_occupied
	jmp	near ptr free_score_return
free_score_entry_occupied:
	; Only an occupied entry is cleared and decrements the shared block count.
	mov	word ptr cs:[bx],0
	mov	cx,word ptr cs:maze_block_count
	dec	cx
	mov	word ptr cs:maze_block_count,cx
	call	renumber_and_release_block_
free_score_return:
	pops	di,si,es,ds
	mov	sp,bp
	pop	bp
	ret
free_score_ endp
codeseg	ends
	end
