; Copy a rectangular image area into the EGA screen, using a temporary buffer when needed.
; The arguments are inclusive source coordinates in pixels.
; :ts=8
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	request_mouse_redraw:near
	extrn	refresh_mouse_overlay:near
	extrn	screen_buf_seg:word
	extrn	maze_paras_used:word
	extrn	maze_mem_seg:word
	extrn	pixel_plane_lookup:byte
	extrn	restore_mouse_background:near
	extrn	update_mouse_pointer:near
	public	show_area_
left_x	equ	0ch		; stack argument
top_y	equ	0eh		; stack argument
right_x	equ	10h		; stack argument
bottom_y	equ	12h		; stack argument
screen_byte_offset	equ	-2h		; local stack slot
horizontal_span	equ	-4h		; local stack slot
source_pixel_offset	equ	-12h		; local stack slot
plane_mask	equ	-14h		; local stack slot
row_count	equ	-16h		; local stack slot
plane_offset_step	equ	-24h		; local stack slot
plane_row_width	equ	-26h		; local stack slot
leading_plane_bytes	equ	-28h		; local stack slot
trailing_plane_bits	equ	-2ah		; local stack slot
remaining_pixels	equ	-2ch		; local stack slot
full_plane_bytes	equ	-2eh		; local stack slot
bits_in_byte	equ	-30h		; local stack slot
plane_two_offset	equ	-32h		; local stack slot
plane_three_offset	equ	-34h		; local stack slot
needs_temporary_buffer	equ	-36h		; local stack slot

; Pixel offsets use 80-byte visible rows and 320-byte four-plane rows.
show_area_	proc	near
	push bp
	mov bp,sp
	sub sp,36h
	pushs	ds,es,di,si
	xor ax,ax
	mov word ptr full_plane_bytes[bp],ax
	mov word ptr trailing_plane_bits[bp],ax
	mov word ptr needs_temporary_buffer[bp],ax
	movseg	es,ds
	call request_mouse_redraw
	call refresh_mouse_overlay
	movseg	ds,<word ptr cs:screen_buf_seg>
	movseg	es,0a000h	; EGA port, plane size, or buffer limit
	mov ax,word ptr top_y[bp]
	mov bx,50h	; EGA port, plane size, or buffer limit
	mul bx
	mov bx,word ptr left_x[bp]
	mov cl,2
	shr bx,cl
	add ax,bx
	mov word ptr screen_byte_offset[bp],ax
	mov cx,word ptr left_x[bp]
	and cl,3
	shl cl,1
	mov al,80h
	shr al,cl
	mov byte ptr plane_mask[bp],al
	mov ax,word ptr top_y[bp]
	mov bx,140h	; EGA port, plane size, or buffer limit
	mul bx
	add ax,word ptr left_x[bp]
	mov word ptr source_pixel_offset[bp],ax
	mov ax,word ptr right_x[bp]
	sub ax,word ptr left_x[bp]
	inc ax
	mov word ptr horizontal_span[bp],ax
	mov ax,word ptr bottom_y[bp]
	sub ax,word ptr top_y[bp]
	inc ax
	mov word ptr row_count[bp],ax
	xor ax,ax
	mov word ptr plane_row_width[bp],ax
	mov ax,word ptr right_x[bp]
	mov bx,word ptr left_x[bp]
	mov dx,bx
	sub ax,bx
	inc ax
	and dx,3
	je short forward1
	inc word ptr plane_row_width[bp]
forward1:
	; Continue through the clipping or plane-selection branch.
	mov bx,4
	sub bx,dx
	and bl,3
	mov dx,bx
	mov word ptr leading_plane_bytes[bp],dx
	sub ax,dx
	jae short forward2
	add ax,dx
	mov word ptr leading_plane_bytes[bp],ax
	mov byte ptr needs_temporary_buffer[bp],1
	jmp near ptr forward4
forward2:
	; Continue through the clipping or plane-selection branch.
	mov dx,ax
	shr ax,1
	shr ax,1
	add word ptr plane_row_width[bp],ax
	mov word ptr full_plane_bytes[bp],ax
	and dx,3
	je short forward3
	inc word ptr plane_row_width[bp]
forward3:
	; Continue through the clipping or plane-selection branch.
	shl dx,1
	mov word ptr trailing_plane_bits[bp],dx
forward4:
	; Continue through the clipping or plane-selection branch.
	mov ax,word ptr row_count[bp]
	mov bx,word ptr plane_row_width[bp]
	mul bx
	mov word ptr plane_offset_step[bp],ax
	shl ax,1
	mov word ptr plane_two_offset[bp],ax
	add ax,word ptr plane_offset_step[bp]
	mov word ptr plane_three_offset[bp],ax
	add ax,word ptr plane_offset_step[bp]
	add ax,0fh
	mov cl,4
	shr ax,cl
	add ax,word ptr cs:maze_paras_used
	cmp ax,4180h	; EGA port, plane size, or buffer limit
	jae short forward5
	cmp byte ptr needs_temporary_buffer[bp],0
	jne short forward5
	jmp near ptr forward9
forward5:
	; Continue through the clipping or plane-selection branch.
	jmp near ptr forward6
forward6:
	; Continue through the clipping or plane-selection branch.
	shl word ptr horizontal_span[bp],1
	outp	3ceh,5,2	; EGA port, plane size, or buffer limit
	mov dx,3ceh	; EGA port, plane size, or buffer limit
	mov al,8
	out dx,al
	inc dx
back1:
	; Process the next row, plane, or pixel group in this pass.
	mov di,word ptr screen_byte_offset[bp]
	mov si,word ptr source_pixel_offset[bp]
	mov bx,offset pixel_plane_lookup
	mov cl,4
	test byte ptr plane_mask[bp],0aah
	jne short forward7
	xor cl,cl
	inc word ptr source_pixel_offset[bp]
forward7:
	; Continue through the clipping or plane-selection branch.
	outp	3cfh,<byte ptr plane_mask[bp]>	; EGA port, plane size, or buffer limit
	ror byte ptr plane_mask[bp],1
	cmp byte ptr plane_mask[bp],80h
	jne short forward8
	inc word ptr screen_byte_offset[bp]
forward8:
	; Continue through the clipping or plane-selection branch.
	mov dx,word ptr row_count[bp]
back2:
	; Process the next row, plane, or pixel group in this pass.
	lodsb
	add si,13fh
	db 02eh
	xlatb
	shr al,cl
	mov ch,byte ptr es:[di]
	mov byte ptr es:[di],al
	add di,50h	; EGA port, plane size, or buffer limit
	dec dx
	jne short back2
	dec word ptr horizontal_span[bp]
	jne short back1
	mov al,0ffh
	mov dx,3cfh	; EGA port, plane size, or buffer limit
	out dx,al
	outp	3ceh,5,0	; EGA port, plane size, or buffer limit
	call restore_mouse_background
	call update_mouse_pointer
	pops	si,di,es,ds
	mov sp,bp
	pop bp
	ret
forward9:
	; Continue through the clipping or plane-selection branch.
	mov ax,word ptr cs:maze_paras_used
	add ax,word ptr cs:maze_mem_seg
	mov es,ax
	movseg	ds,0a000h	; EGA port, plane size, or buffer limit
	xor di,di
	mov cx,word ptr plane_two_offset[bp]
	xor ax,ax
	rep stosw
	outp	3ceh,5,0	; EGA port, plane size, or buffer limit
	mov cx,word ptr leading_plane_bytes[bp]
	or cx,cx
	jne short forward10
	jmp near ptr forward11
forward10:
	; Continue through the clipping or plane-selection branch.
	shl cx,1
	outp	3ceh,4,0	; EGA port, plane size, or buffer limit
	xor di,di
	mov si,word ptr screen_byte_offset[bp]
	mov bx,word ptr row_count[bp]
back3:
	; Process the next row, plane, or pixel group in this pass.
	mov al,byte ptr [si]
	shr al,cl
	mov byte ptr es:[di],al
	add si,50h	; EGA port, plane size, or buffer limit
	add di,word ptr plane_row_width[bp]
	dec bx
	jne short back3
	outp	3ceh,4,1	; EGA port, plane size, or buffer limit
	mov di,word ptr plane_offset_step[bp]
	mov si,word ptr screen_byte_offset[bp]
	mov bx,word ptr row_count[bp]
back4:
	; Process the next row, plane, or pixel group in this pass.
	mov al,byte ptr [si]
	shr al,cl
	mov byte ptr es:[di],al
	add si,50h	; EGA port, plane size, or buffer limit
	add di,word ptr plane_row_width[bp]
	dec bx
	jne short back4
	outp	3ceh,4,2	; EGA port, plane size, or buffer limit
	mov di,word ptr plane_two_offset[bp]
	mov si,word ptr screen_byte_offset[bp]
	mov bx,word ptr row_count[bp]
back5:
	; Process the next row, plane, or pixel group in this pass.
	mov al,byte ptr [si]
	shr al,cl
	mov byte ptr es:[di],al
	add si,50h	; EGA port, plane size, or buffer limit
	add di,word ptr plane_row_width[bp]
	dec bx
	jne short back5
	outp	3ceh,4,3	; EGA port, plane size, or buffer limit
	mov di,word ptr plane_three_offset[bp]
	mov si,word ptr screen_byte_offset[bp]
	mov bx,word ptr row_count[bp]
back6:
	; Process the next row, plane, or pixel group in this pass.
	mov al,byte ptr [si]
	shr al,cl
	mov byte ptr es:[di],al
	add si,50h	; EGA port, plane size, or buffer limit
	add di,word ptr plane_row_width[bp]
	dec bx
	jne short back6
forward11:
	; Continue through the clipping or plane-selection branch.
	mov cx,word ptr trailing_plane_bits[bp]
	or cx,cx
	jne short forward12
	jmp near ptr forward13
forward12:
	; Continue through the clipping or plane-selection branch.
	mov di,word ptr plane_row_width[bp]
	dec di
	mov si,word ptr screen_byte_offset[bp]
	add si,di
	push si
	outp	3ceh,4,0	; EGA port, plane size, or buffer limit
	pop si
	push si
	mov bx,word ptr row_count[bp]
back7:
	; Process the next row, plane, or pixel group in this pass.
	mov al,byte ptr [si]
	shl al,cl
	mov byte ptr es:[di],al
	add si,50h	; EGA port, plane size, or buffer limit
	add di,word ptr plane_row_width[bp]
	dec bx
	jne short back7
	outp	3ceh,4,1	; EGA port, plane size, or buffer limit
	mov di,word ptr plane_row_width[bp]
	dec di
	add di,word ptr plane_offset_step[bp]
	pop si
	push si
	mov bx,word ptr row_count[bp]
back8:
	; Process the next row, plane, or pixel group in this pass.
	mov al,byte ptr [si]
	shl al,cl
	mov byte ptr es:[di],al
	add si,50h	; EGA port, plane size, or buffer limit
	add di,word ptr plane_row_width[bp]
	dec bx
	jne short back8
	outp	3ceh,4,2	; EGA port, plane size, or buffer limit
	mov di,word ptr plane_row_width[bp]
	dec di
	add di,word ptr plane_two_offset[bp]
	pop si
	push si
	mov bx,word ptr row_count[bp]
back9:
	; Process the next row, plane, or pixel group in this pass.
	mov al,byte ptr [si]
	shl al,cl
	mov byte ptr es:[di],al
	add si,50h	; EGA port, plane size, or buffer limit
	add di,word ptr plane_row_width[bp]
	dec bx
	jne short back9
	outp	3ceh,4,3	; EGA port, plane size, or buffer limit
	mov di,word ptr plane_row_width[bp]
	dec di
	add di,word ptr plane_three_offset[bp]
	pop si
	mov bx,word ptr row_count[bp]
back10:
	; Process the next row, plane, or pixel group in this pass.
	mov al,byte ptr [si]
	shl al,cl
	mov byte ptr es:[di],al
	add si,50h	; EGA port, plane size, or buffer limit
	add di,word ptr plane_row_width[bp]
	dec bx
	jne short back10
forward13:
	; Continue through the clipping or plane-selection branch.
	movseg	ds,<word ptr cs:screen_buf_seg>
	xor di,di
	mov cx,word ptr row_count[bp]
back11:
	; Process the next row, plane, or pixel group in this pass.
	push cx
	mov si,word ptr source_pixel_offset[bp]
	add word ptr source_pixel_offset[bp],140h	; EGA port, plane size, or buffer limit
	mov cx,word ptr leading_plane_bytes[bp]
	or cx,cx
	je short forward14
	mov byte ptr remaining_pixels[bp],cl
	mov cl,byte ptr es:[di]
	mov bx,word ptr plane_offset_step[bp]
	mov ch,byte ptr es:[bx+di]
	add bx,word ptr plane_offset_step[bp]
	mov dl,byte ptr es:[bx+di]
	add bx,word ptr plane_offset_step[bp]
	mov dh,byte ptr es:[bx+di]
back12:
	; Process the next row, plane, or pixel group in this pass.
	mov bx,offset pixel_plane_lookup
	lodsb
	db 02eh
	xlatb
	rcl al,1
	rcl dh,1
	rcl al,1
	rcl dl,1
	rcl al,1
	rcl ch,1
	rcl al,1
	rcl cl,1
	rcl al,1
	rcl dh,1
	rcl al,1
	rcl dl,1
	rcl al,1
	rcl ch,1
	rcl al,1
	rcl cl,1
	dec byte ptr remaining_pixels[bp]
	jne short back12
	mov byte ptr es:[di],cl
	mov bx,word ptr plane_offset_step[bp]
	mov byte ptr es:[bx+di],ch
	add bx,word ptr plane_offset_step[bp]
	mov byte ptr es:[bx+di],dl
	add bx,word ptr plane_offset_step[bp]
	mov byte ptr es:[bx+di],dh
	inc di
forward14:
	; Continue through the clipping or plane-selection branch.
	mov ax,word ptr full_plane_bytes[bp]
	or ax,ax
	je short forward15
	mov word ptr remaining_pixels[bp],ax
back13:
	; Process the next row, plane, or pixel group in this pass.
	xor cx,cx
	xor dx,dx
	mov byte ptr bits_in_byte[bp],4
back14:
	; Process the next row, plane, or pixel group in this pass.
	mov bx,offset pixel_plane_lookup
	lodsb
	db 02eh
	xlatb
	rcl al,1
	rcl dh,1
	rcl al,1
	rcl dl,1
	rcl al,1
	rcl ch,1
	rcl al,1
	rcl cl,1
	rcl al,1
	rcl dh,1
	rcl al,1
	rcl dl,1
	rcl al,1
	rcl ch,1
	rcl al,1
	rcl cl,1
	dec byte ptr bits_in_byte[bp]
	jne short back14
	mov byte ptr es:[di],cl
	mov bx,word ptr plane_offset_step[bp]
	mov byte ptr es:[bx+di],ch
	add bx,word ptr plane_offset_step[bp]
	mov byte ptr es:[bx+di],dl
	add bx,word ptr plane_offset_step[bp]
	mov byte ptr es:[bx+di],dh
	inc di
	dec word ptr remaining_pixels[bp]
	jne short back13
forward15:
	; Continue through the clipping or plane-selection branch.
	mov ax,word ptr trailing_plane_bits[bp]
	mov byte ptr remaining_pixels[bp],al
	or al,al
	je short forward16
	xor ah,ah
	shr ax,1
	dec ax
	add si,ax
	mov cl,byte ptr es:[di]
	mov bx,word ptr plane_offset_step[bp]
	mov ch,byte ptr es:[bx+di]
	add bx,word ptr plane_offset_step[bp]
	mov dl,byte ptr es:[bx+di]
	add bx,word ptr plane_offset_step[bp]
	mov dh,byte ptr es:[bx+di]
back15:
	; Process the next row, plane, or pixel group in this pass.
	mov bx,offset pixel_plane_lookup
	mov al,byte ptr [si]
	dec si
	db 02eh
	xlatb
	rcr al,1
	rcr cl,1
	rcr al,1
	rcr ch,1
	rcr al,1
	rcr dl,1
	rcr al,1
	rcr dh,1
	rcr al,1
	rcr cl,1
	rcr al,1
	rcr ch,1
	rcr al,1
	rcr dl,1
	rcr al,1
	rcr dh,1
	sub byte ptr remaining_pixels[bp],2
	jne short back15
	mov byte ptr es:[di],cl
	mov bx,word ptr plane_offset_step[bp]
	mov byte ptr es:[bx+di],ch
	add bx,word ptr plane_offset_step[bp]
	mov byte ptr es:[bx+di],dl
	add bx,word ptr plane_offset_step[bp]
	mov byte ptr es:[bx+di],dh
	inc di
forward16:
	; Continue through the clipping or plane-selection branch.
	pop cx
	dec cx
	je short forward17
	jmp near ptr back11
forward17:
	; Continue through the clipping or plane-selection branch.
	movseg	es,0a000h	; EGA port, plane size, or buffer limit
	mov ax,word ptr cs:maze_mem_seg
	add ax,word ptr cs:maze_paras_used
	mov ds,ax
	xor si,si
	mov di,word ptr screen_byte_offset[bp]
	mov cx,word ptr row_count[bp]
back16:
	; Process the next row, plane, or pixel group in this pass.
	push cx
	outp	3c4h,2,1	; EGA port, plane size, or buffer limit
	pushs	si,di
	mov cx,word ptr plane_row_width[bp]
	rep movsb
	pops	di,si
	outp	3c4h,2,2	; EGA port, plane size, or buffer limit
	pushs	si,di
	add si,word ptr plane_offset_step[bp]
	mov cx,word ptr plane_row_width[bp]
	rep movsb
	pops	di,si
	outp	3c4h,2,4	; EGA port, plane size, or buffer limit
	pushs	si,di
	add si,word ptr plane_two_offset[bp]
	mov cx,word ptr plane_row_width[bp]
	rep movsb
	pops	di,si
	outp	3c4h,2,8	; EGA port, plane size, or buffer limit
	pushs	si,di
	add si,word ptr plane_three_offset[bp]
	mov cx,word ptr plane_row_width[bp]
	rep movsb
	pops	di,si
	add di,50h	; EGA port, plane size, or buffer limit
	add si,word ptr plane_row_width[bp]
	pop cx
	loop back16
	outp	3c4h,2,0fh	; EGA port, plane size, or buffer limit
	call restore_mouse_background
	call update_mouse_pointer
	pops	si,di,es,ds
	mov sp,bp
	pop bp
	ret
show_area_	endp
codeseg	ends
	end
