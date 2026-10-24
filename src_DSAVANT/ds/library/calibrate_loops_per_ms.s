; calibrates loops_per_ms from the 18.2 Hz BIOS tick: counts loop iterations
; over one tick and scales the 55-tick count; shares the caller's frame
	include	lmacros.h
	assume	cs:codeseg
	extrn	loops_per_ms_:word
	public	calibrate_loops_per_ms_
bios_tick	equ	46ch	;0040:006c, BIOS timer tick counter
ticks_per_ms	equ	55	;18.2 Hz / 1000, ticks in one millisecond
half_tick	equ	27	;round up a remainder of this or more
scale_shift	equ	3	;divide by 8 for the 15/16 scale
calibrate_loops_per_ms_ proc near
	pushs	ds,si,ax,bx,cx,dx
	mov	cx,0
	mov	ds,cx		;ds = 0 to reach the BIOS data area
	mov	bx,bios_tick
	mov	si,cx		;si:cx counts the loops
	mov	dx,word ptr [bx]
wait_tick:
	cmp	dx,word ptr [bx]
	je	wait_tick	;wait for the counter to change
	mov	dx,word ptr [bx]	;start counting at the tick edge
count_loop:
	add	cx,1
	jae	count_low
	inc	si		;carry: bump the high word
count_low:
	cmp	dx,word ptr [bx]
	je	count_loop
	mov	dx,si		;dx:ax = loop count
	mov	ax,cx
	mov	cx,ticks_per_ms
	div	cx
	cmp	dx,half_tick
	jl	no_round
	inc	ax
no_round:
	mov	dx,ax
	mov	cl,scale_shift
	shr	dx,cl
	sub	ax,dx
	shr	dx,1
	add	ax,dx		;ax = ax - ax/8 + ax/16 = 15/16
	mov	word ptr cs:loops_per_ms_,ax
	pops	dx,cx,bx,ax,si,ds
	ret
calibrate_loops_per_ms_ endp
	finish
	end
