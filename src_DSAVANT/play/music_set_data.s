	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
extrn	music_patch_offset:word
extrn	music_patch_segment:word
extrn	music_device:byte

patch_offset_arg	equ	8	;word offset of the music patch data
patch_segment_arg	equ	0ah	;segment of the music patch data
device_arg	equ	0ch	;selected music device number

; Store the patch pointer and selected device for later playback.
	procdef	music_set_data
	push	bp
	mov	bp,sp
	mov	ax,word ptr patch_offset_arg[bp]
	mov	word ptr cs:music_patch_offset,ax
	mov	ax,word ptr patch_segment_arg[bp]
	mov	word ptr cs:music_patch_segment,ax
	mov	ax,word ptr device_arg[bp]
	mov	byte ptr cs:music_device,al
	pop	bp
	ret
	pend	music_set_data

codeseg	ends
	end
