	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	score_info:word
	extrn	score_slots:word
	extrn	maze_blocks:word
	extrn	maze_mem_seg:word
	extrn	music_load_far:dword
	extrn	music_config_far:dword
	extrn	music_start_far:dword

score_index		equ	word ptr 0ch[bp]	; stack argument: score slot index
configuration_a	equ	word ptr 0eh[bp]	; first value passed to music_config
configuration_b	equ	word ptr 10h[bp]	; second value passed to music_config
playback_value		equ	word ptr 12h[bp]	; value passed to music_start
score_slot_address	equ	word ptr -2[bp]	; selected four-byte score slot
maze_block_address	equ	word ptr -4[bp]	; selected maze block record
score_data_offset	equ	word ptr -6[bp]	; payload offset saved in the score slot
score_info_value	equ	word ptr -8[bp]	; value from score_info for the selected slot

	public	play_score_
; Start playback for an occupied score slot and pass its configuration values.
play_score_ proc near
	push	bp
	mov	bp,sp
	sub	sp,0ah
	pushs	ds,es,si,di
	movseg	es,ds
	; Read this score's info word and the address of its four-byte slot.
	mov	bx,score_index
	shl	bx,1
	add	bx,offset score_info
	mov	ax,word ptr cs:[bx]
	mov	score_info_value,ax
	mov	bx,score_index
	shl	bx,1
	shl	bx,1
	add	bx,offset score_slots
	mov	score_slot_address,bx
	mov	ax,word ptr cs:[bx+2]
	mov	score_data_offset,ax
	mov	ax,word ptr cs:[bx]
	or	ax,ax
	je	short play_score_done
	; An occupied slot points to its maze block record.
	dec	ax
	shl	ax,1
	shl	ax,1
	mov	bx,offset maze_blocks
	add	bx,ax
	mov	maze_block_address,bx
	; Load the score source using its stored segment when a payload exists.
	push	score_info_value
	xor	ax,ax
	cmp	score_data_offset,0
	je	short play_score_no_payload_segment
	mov	ax,word ptr cs:[bx]
	add	ax,word ptr cs:maze_mem_seg
play_score_no_payload_segment:
	push	ax
	xor	ax,ax
	push	ax
	call	far ptr cs:music_load_far
	add	sp,6
	; Apply the two caller-supplied playback configuration values.
	push	configuration_b
	push	configuration_a
	call	far ptr cs:music_config_far
	add	sp,4
	; Start the selected score at its stored data offset and requested value.
	push	playback_value
	mov	bx,maze_block_address
	mov	ax,word ptr cs:[bx]
	add	ax,word ptr cs:maze_mem_seg
	push	ax
	push	score_data_offset
	call	far ptr cs:music_start_far
	add	sp,6
play_score_done:
	pops	di,si,es,ds
	mov	sp,bp
	pop	bp
	ret
play_score_ endp
codeseg	ends
	end
