	include lmacros.h
codeseg segment byte public 'code'
	assume cs:codeseg
	public check_frame_index_, frame_too_big_exit_, table_entry_ptr_
frame_count equ -12h
slot_number equ 0ch
; Check the frame index and report an oversized frame with its slot.
check_frame_index_ proc near
	dec ax
	.if ax ge <word ptr [bp+frame_count]> ; frame index exceeds the count
		mov bl,10
		div bl
		or byte ptr cs:frame_tens,al
		or byte ptr cs:frame_ones,dl
		mov ax,word ptr [bp+slot_number]
		mov bl,10
		div bl
		or byte ptr cs:slot_tens,al
		or byte ptr cs:slot_ones,dl
; Print the error and terminate with status 1.
		frame_too_big_exit_ label near
		mov bx,cs
		mov ds,bx
		mov dx,offset frame_message
		dos 9 ; DOS display string
		dosx 4c01h ; DOS exit with status 1
		frame_message db 0dh,0ah,7,'Frame '
		frame_tens db '0'
		frame_ones db '0 too big in slot '
		slot_tens db '0'
		slot_ones db '0.',0,0ah,'$'
	.endif
; Resolve an entry in the four-byte offset/paragraph table at DS:2.
table_entry_ptr_ label near
	mov cl,2
	shl al,cl
	mov bx,2
	add bx,ax
	mov ax,word ptr [bx]
	mov dx,word ptr [bx+2]
	mov bx,ds
	add bx,dx
	mov ds,bx
	mov bx,ax
	ret
check_frame_index_ endp
codeseg ends
	end
