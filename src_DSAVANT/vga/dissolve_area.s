; dissolve_area(x1, y1, x2, y2, delay): advance one step of a per-pixel
; dissolve from the off-screen screen buffer to the VGA display.  Each pixel
; whose video colour differs moves one step toward it along its largest RGB
; component, then the buffer pixel becomes the nearest palette entry.  Passes
; repeat while any pixel changed, calling the delay hook between passes.
; :ts=8
	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	screen_buf_seg:word	;segment of the off-screen screen buffer
	extrn	palette_ptr:dword		;far pointer to the 256-entry 3-byte palette
	extrn	delay_hook:dword		;far pointer to the inter-pass delay hook
	extrn	rgb_to_palette:byte		;512-byte RGB->palette index map, 0ffh = no entry
	extrn	request_mouse_redraw:near	;note the pending mouse redraw
	extrn	clip_mouse_pointer_to_area:near	;save the cursor from the rectangle's path
	extrn	redraw_mouse_pointer:near	;redraw the cursor from the buffer
	extrn	update_mouse_pointer:near ;reinstall the mouse pointer

; stack arguments (past the stub's far return and call_dissolve_area's frame)
x1		equ	0ch		;left column
y1		equ	0eh		;top row
x2		equ	10h		;right column
y2		equ	12h		;bottom row
delay		equ	14h		;hook argument; 0 = no delay between passes

; locals (compiler frame)
row_offset	equ	-2		;first row's byte offset into the screen buffer
row_width	equ	-4		;pixels per row
rows		equ	-6		;rows left in this pass
sr		equ	-8		;buffer colour, red component (0..7)
sg		equ	-0ah		;buffer colour, green
sb		equ	-0ch		;buffer colour, blue
vr		equ	-0eh		;video colour, red component (0..7)
vg		equ	-10h		;video colour, green
vb		equ	-12h		;video colour, blue
old		equ	-14h		;buffer pixel's palette index
ar		equ	-16h		;|vr-sr|
ag		equ	-18h		;|vg-sg|
ab		equ	-1ah		;|vb-sb|
dr		equ	-1ch		;vr-sr
dg		equ	-1eh		;vg-sg
delta_b		equ	-20h		;vb-sb
changed		equ	-22h		;pixels changed in this pass
cur		equ	-24h		;video pixel's palette index

screen_width	equ	140h		;bytes per row, 320
	vga_segment	equ	0a000h	;VGA graphics memory
	palette_shift	equ	3		;6-bit palette component -> top 3 bits
	map_shift_red	equ	6		;red bits in the RGB->index key
	map_shift_green	equ	3		;green bits in the RGB->index key
	no_entry	equ	0ffh		;empty slot in the RGB->index map
	map_offset	equ	2427h		;image offset of the RGB->index map

	public	dissolve_area_
dissolve_area_	proc	near
	push	bp
	mov	bp,sp
	sub	sp,24h	; eleven words of locals plus two temporaries
	pushs	ds,es,si,di
	movseg	es,ds
	call	request_mouse_redraw		;cursor must be redrawn when we finish
	call	clip_mouse_pointer_to_area	;hide it if the area crosses it

pass_restart:				;start another dissolve pass
	xor	ax,ax
	mov	word ptr changed[bp],ax
	mov	ax,word ptr y1[bp]
	mov	bx,screen_width
	mul	bx			;row * 320
	add	ax,word ptr x1[bp]
	mov	word ptr row_offset[bp],ax
	mov	ax,word ptr x2[bp]
	sub	ax,word ptr x1[bp]
	inc	ax
	mov	word ptr row_width[bp],ax
	mov	ax,word ptr y2[bp]
	sub	ax,word ptr y1[bp]
	inc	ax
	mov	word ptr rows[bp],ax
	mov	si,word ptr row_offset[bp]

row_loop:
	mov	cx,word ptr row_width[bp]

pixel_loop:
	push	cx			;keep the pixel count across the shifts
	les	di,cs:dword ptr palette_ptr ;palette base
	mov	cl,palette_shift
	mov	dx,word ptr cs:screen_buf_seg
	mov	ds,dx			;read the buffer pixel
	xor	ax,ax
	mov	al,byte ptr [si]
	mov	word ptr old[bp],ax
	mov	bx,ax
	shl	ax,1
	add	bx,ax			;palette entry is 3 bytes
	xor	ax,ax
	mov	al,es:byte ptr [bx+di]
	shr	ax,cl			;keep the top 3 bits
	mov	word ptr sr[bp],ax
	mov	al,es:byte ptr 1[bx+di]
	shr	ax,cl
	mov	word ptr sg[bp],ax
	mov	al,es:byte ptr 2[bx+di]
	shr	ax,cl
	mov	word ptr sb[bp],ax
	mov	dx,vga_segment
	mov	ds,dx			;read the same pixel on the display
	mov	al,byte ptr [si]
	mov	word ptr cur[bp],ax
	cmp	ax,word ptr old[bp]
	jne	short color_changed
	jmp	near ptr next_pixel		;already equal, leave the buffer byte

color_changed:
	mov	bx,ax
	shl	ax,1
	add	bx,ax			;display colour's palette entry
	xor	ax,ax
	mov	al,es:byte ptr [bx+di]
	shr	ax,cl
	mov	word ptr vr[bp],ax
	mov	al,es:byte ptr 1[bx+di]
	shr	ax,cl
	mov	word ptr vg[bp],ax
	mov	al,es:byte ptr 2[bx+di]
	shr	ax,cl
	mov	word ptr vb[bp],ax

nearer:					;walk the buffer colour toward the video colour
	mov	ax,word ptr vr[bp]
	sub	ax,word ptr sr[bp]
	jne	short red_diff
	mov	word ptr dr[bp],ax
	mov	word ptr ar[bp],ax
	mov	ax,word ptr vg[bp]
	sub	ax,word ptr sg[bp]
	jne	short green_diff
	mov	word ptr dg[bp],ax
	mov	word ptr ag[bp],ax
	mov	ax,word ptr vb[bp]
	sub	ax,word ptr sb[bp]
	jne	short blue_diff
	mov	ax,word ptr old[bp]	;same RGB, different index: snap to video
	mov	byte ptr [si],al
	inc	word ptr changed[bp]
	jmp	near ptr next_pixel

red_diff:
	mov	word ptr dr[bp],ax
	or	ax,ax
	jns	short red_abs
	neg	ax
red_abs:
	mov	word ptr ar[bp],ax
	mov	ax,word ptr vg[bp]
	sub	ax,word ptr sg[bp]
green_diff:
	mov	word ptr dg[bp],ax
	or	ax,ax
	jns	short green_abs
	neg	ax
green_abs:
	mov	word ptr ag[bp],ax
	mov	ax,word ptr vb[bp]
	sub	ax,word ptr sb[bp]
blue_diff:
	mov	word ptr delta_b[bp],ax
	or	ax,ax
	jns	short blue_abs
	neg	ax
blue_abs:
	mov	word ptr ab[bp],ax

; pick the component with the largest difference and step it by one; a smaller
; component also steps when twice its difference still reaches the largest
	mov	ax,word ptr ab[bp]
	cmp	ax,word ptr ag[bp]
	jae	short blue_dominant
	jmp	near ptr green_dominant	;blue is smallest, so green and red lead
blue_dominant:
	cmp	ax,word ptr ar[bp]
	jb	short red_dominant
	mov	bx,-1
	mov	ax,word ptr delta_b[bp]
	or	ax,ax
	jns	short blue_step
	neg	bx			;step toward a lower component
blue_step:
	add	word ptr vb[bp],bx
	mov	bx,-1
	mov	ax,word ptr ar[bp]
	shl	ax,1
	cmp	ax,word ptr ab[bp]
	jb	short blue_red_done
	mov	ax,word ptr dr[bp]
	or	ax,ax
	jns	short blue_red_step
	neg	bx
blue_red_step:
	add	word ptr vr[bp],bx
blue_red_done:
	mov	bx,-1
	mov	ax,word ptr ag[bp]
	shl	ax,1
	cmp	ax,word ptr ab[bp]
	jb	short blue_green_done
	mov	bx,-1
	mov	ax,word ptr dg[bp]
	or	ax,ax
	jns	short blue_green_step
	neg	bx
blue_green_step:
	add	word ptr vg[bp],bx
blue_green_done:
	jmp	near ptr map_lookup

red_dominant:
	mov	bx,-1
	mov	ax,word ptr dr[bp]
	or	ax,ax
	jns	short red_step
	neg	bx
red_step:
	add	word ptr vr[bp],bx
	mov	bx,-1
	mov	ax,word ptr ab[bp]
	shl	ax,1
	cmp	ax,word ptr ar[bp]
	jb	short red_blue_done
	mov	ax,word ptr delta_b[bp]
	or	ax,ax
	jns	short red_blue_step
	neg	bx
red_blue_step:
	add	word ptr vb[bp],bx
red_blue_done:
	mov	bx,-1
	mov	ax,word ptr ag[bp]
	shl	ax,1
	cmp	ax,word ptr ar[bp]
	jb	short red_green_done
	mov	ax,word ptr dg[bp]
	or	ax,ax
	jns	short red_green_step
	neg	bx
red_green_step:
	add	word ptr vg[bp],bx
red_green_done:
	jmp	near ptr map_lookup

green_dominant:
	mov	ax,word ptr ar[bp]
	cmp	ax,word ptr ag[bp]
	jb	short green_larger
	jmp	short red_dominant	;red leads after all
green_larger:
	mov	bx,-1
	mov	ax,word ptr dg[bp]
	or	ax,ax
	jns	short green_step
	neg	bx
green_step:
	add	word ptr vg[bp],bx
	mov	bx,-1
	mov	ax,word ptr ab[bp]
	shl	ax,1
	cmp	ax,word ptr ag[bp]
	jb	short green_blue_done
	mov	ax,word ptr delta_b[bp]
	or	ax,ax
	jns	short green_blue_step
	neg	bx
green_blue_step:
	add	word ptr vb[bp],bx
green_blue_done:
	mov	bx,-1
	mov	ax,word ptr ar[bp]
	shl	ax,1
	cmp	ax,word ptr ag[bp]
	jb	short map_lookup
	mov	ax,word ptr dr[bp]
	or	ax,ax
	jns	short green_red_step
	neg	bx
green_red_step:
	add	word ptr vr[bp],bx

map_lookup:				;nearest palette colour for the stepped RGB
	mov	bx,word ptr vr[bp]
	mov	cl,map_shift_red
	shl	bx,cl			;red bits 8..6
	mov	ax,word ptr vg[bp]
	mov	cl,map_shift_green
	shl	ax,cl			;green bits 5..3
	add	bx,ax
	add	bx,word ptr vb[bp]	;blue bits 2..0
	add	bx,map_offset
	mov	al,byte ptr cs:[bx]
	cmp	al,no_entry
	je	short retry_nearer	;no match: step again on the next pass
	mov	byte ptr [si],al
	inc	word ptr changed[bp]

next_pixel:
	inc	si
	pop	cx
	loop	pixel_loop_back
	add	word ptr row_offset[bp],screen_width
	mov	si,word ptr row_offset[bp]
	dec	word ptr rows[bp]
	je	short pass_done
	jmp	near ptr row_loop

pixel_loop_back:
	jmp	near ptr pixel_loop
retry_nearer:
	jmp	near ptr nearer

pass_done:
	mov	ax,word ptr changed[bp]
	or	ax,ax
	je	short dissolve_done	;nothing moved: the dissolve is complete
	mov	ax,word ptr delay[bp]
	or	ax,ax
	je	short restart_pass
	push	word ptr delay[bp]
	call	dword ptr cs:delay_hook	;let the caller pace the animation
	pop	ax
restart_pass:
	jmp	near ptr pass_restart

dissolve_done:
	call	redraw_mouse_pointer
	call	update_mouse_pointer
	pops	di,si,es,ds
	mov	sp,bp
	pop	bp
	ret
dissolve_area_	endp
codeseg	ends
	end
