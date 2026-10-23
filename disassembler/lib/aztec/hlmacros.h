; hlmacros.h: shorthand for hand-written Manx assembly (.s), Aztec as v4.10d.
;
; A .s takes it with `include hlmacros.h` (after lmacros.h).  The build puts
; this file beside the module, where `as` finds it; editing it recompiles every
; .s that includes it.  Each macro expands to exactly the instructions listed
; here, so a routine stays byte-exact; anything irregular stays a plain
; instruction.  Write macros and their arguments in lower case (`as` compares
; them case-sensitively).  An operand with spaces or commas goes in <>:
;	umin	cx,<word ptr cs:limit>
;
; Structured flow follows MASM 6.0 (.if/.elseif/.else/.endif, .while/.endw,
; .repeat/.until/.untilcxz, .break/.continue), nestable.  Differences from
; MASM, all forced by `as` macro arguments: `!` and `<` `>` cannot be passed,
; so negation is `not` and the relational operators are the words MASM uses
; in conditional assembly; `.else short` asks for an eb jmp; and no jump is
; lengthened (a body too far for a short jcc is an `as` error).
;
; Conditions (cond), and the code they emit before the jump:
;	a == b, a eq b	cmp a,b		equal
;	a ne b		cmp a,b		not equal (`!=` cannot be passed)
;	a lt b, a le b, a gt b, a ge b	cmp a,b	unsigned, as MASM's default
;	a slt b, a sle b, a sgt b, a sge b	cmp a,b	signed (MASM: sword ptr)
;	zero? carry? sign? overflow? parity?	(nothing: the flags as they are)
;	a and b		test a,b	true when nonzero (MASM .if a & b)
;	reg		or reg,reg	true when reg is nonzero (MASM .if reg)
;	cc		(nothing)	a jcc suffix: z nz e ne c nc b ae a be s
;					ns l ge g le o no p np and their n-forms
;	not cond	any cond above, inverted (MASM .if !cond, .if !(a == b))
;
; Blocks (j<not cond> is the jump taken when cond is false):
;	.if cond	j<not cond> next
;	.elseif cond	jmp end / next: / j<not cond> next'
;	.else [short]	jmp [short] end / next:
;	.endif		next: / end:
;	.while cond	top: / j<not cond> exit
;	.endw		jmp top / exit:
;	.repeat		top:
;	.until cond	[cont:] / j<not cond> top / [exit:]
;	.untilcxz	[cont:] / loop top / [exit:]
;	.break [short]	jmp [short] exit	(innermost .while or .repeat)
;	.break .if cond	j<cond> exit
;	.continue [short] / .continue .if cond	the same to the loop's test:
;			top for .while, cont: for .repeat
; A jump back to a label already passed is short when in range, as `as`
; assembles any jmp; a plain forward jmp is e9.
;
; Layout, as in MASM 6 sources: block directives sit in the instruction
; column, and each body is one more tab in (as ignores leading whitespace):
;	.if	al == 2
;		mov	al,byte ptr 2[bx]
;		.if	not al
;			rep	movsb
;		.endif
;	.endif
;
; Calls (fn into ah, optional al; the x forms load ax whole: mov ax,imm16).
; MASM 5.1's DOS.INC has whole calls (@Exit, @DispStr); these only name the
; interrupt, so they fit any original:
;	dos fn[,al]	mov ah,fn / [mov al,al] / int 21h
;	dosx ax		mov ax,ax / int 21h
;	video fn[,al]	... int 10h		videox ax
;	kbd fn		mov ah,fn / int 16h
;	ems fn		mov ah,fn / int 67h
;	mouse ax	mov ax,ax / int 33h
; Stack (up to 8 registers, in the order written; pops is not reversed):
;	pushs ds,es	push ds / push es
;	pops es,ds	pop es / pop ds
; Clamps (unsigned):
;	umin r,v	cmp r,v / jb ok / mov r,v / ok:
;	umax r,v	cmp r,v / jae ok / mov r,v / ok:
; Frames (saved registers go between, with pushs/pops; a cld between
; mov bp,sp and sub sp stays written out):
;	frame [n]	push bp / mov bp,sp / [sub sp,n]
;	unframe		mov sp,bp / pop bp / ret	(lmacros.h's pret: pop bp / ret)
; Segments, ports, exits:
;	movseg sr,src	mov ax,src / mov sr,ax		(clobbers ax)
;	outp p,v[,v2]	mov dx,p / mov al,v / out dx,al / [inc dx / mov al,v2 /
;			out dx,al]	(an index then data write, as VGA's 3c4h)
;	fatal msg[,n]	mov ax,cs / mov ds,ax / mov dx,offset msg / mov ah,9 /
;			int 21h / mov ax,4c00h+n / int 21h	(n defaults to 1;
;			MASM 5.1 DOS.INC's @DispStr + @Exit, message in cs)
;	jnear cc,t	j<not cc> past / jmp t / past:	(cc a jcc suffix, as
;			above; MASM 6 lengthens an out-of-range jcc this way;
;			t forward or extrn, so the jmp is e9)

dos	macro	fn, alv
	mov	ah,fn
ifnb	<alv>
	mov	al,alv
endif
	int	21h
	endm

dosx	macro	axv
	mov	ax,axv
	int	21h
	endm

video	macro	fn, alv
	mov	ah,fn
ifnb	<alv>
	mov	al,alv
endif
	int	10h
	endm

videox	macro	axv
	mov	ax,axv
	int	10h
	endm

kbd	macro	fn
	mov	ah,fn
	int	16h
	endm

ems	macro	fn
	mov	ah,fn
	int	67h
	endm

mouse	macro	axv
	mov	ax,axv
	int	33h
	endm

pushs	macro	r1, r2, r3, r4, r5, r6, r7, r8
	irp	r,<r1,r2,r3,r4,r5,r6,r7,r8>
ifnb	<r>
	push	r
endif
	endm
	endm

pops	macro	r1, r2, r3, r4, r5, r6, r7, r8
	irp	r,<r1,r2,r3,r4,r5,r6,r7,r8>
ifnb	<r>
	pop	r
endif
	endm
	endm

umin	macro	reg, val
	local	ok
	cmp	reg,val
	jb	ok
	mov	reg,val
ok:
	endm

umax	macro	reg, val
	local	ok
	cmp	reg,val
	jae	ok
	mov	reg,val
ok:
	endm

frame	macro	n
	push	bp
	mov	bp,sp
ifnb	<n>
	sub	sp,n
endif
	endm

unframe	macro
	mov	sp,bp
	pop	bp
	ret
	endm

movseg	macro	dst, src
	mov	ax,src
	mov	dst,ax
	endm

outp	macro	port, v, v2
	mov	dx,port
	mov	al,v
	out	dx,al
ifnb	<v2>
	inc	dx
	mov	al,v2
	out	dx,al
endif
	endm

fatal	macro	msg, code
	mov	ax,cs
	mov	ds,ax
	mov	dx,offset msg
	mov	ah,9
	int	21h
ifb	<code>
	mov	ax,4c01h
else
	mov	ax,4c00h+code
endif
	int	21h
	endm

; Block state.  _hn_ numbers labels.  The .if stack is _hd_ deep; at depth d,
; _hs<d>_ numbers the block's end label, _hc<d>_ its pending next label, _hf<d>_
; is 1 after .else, _hx<d>_ 1 once something jumps to the end.  The loop stack
; is _hl_ deep; at depth d, _hw<d>_ numbers the loop's labels, _hr<d>_ is 1 for
; .repeat, _hk<d>_/_hb<d>_ 1 once a .continue/.break needs its label.  `as`
; pastes a counter into a name only as a macro argument (%sym), hence the
; one-line helpers.  Labels: _he<n> next, _hx<n> end, _hw<n> top, _hc<n>
; continue, _hb<n> exit, _hy<n> past a jnear.
_hn_	=	0
_hd_	=	0
_hl_	=	0

_hset	macro	var, d, val
var&d&_	=	val
	endm

_hload	macro	dst, var, d
dst	=	var&d&_
	endm

_hlbl	macro	p, n
p&n:
	endm

_hjmp	macro	how, p, n
	jmp	how p&n
	endm

_hloop	macro	p, n
	loop	p&n
	endm

_hnew	macro
_hn_	=	_hn_ + 1
_ht_	=	_hn_
	endm

; j<cc> p<n> when sense is 1, j<not cc> p<n> when it is 0
_hj	macro	q_s, q_c, q_p, q_n
if	q_s
	j&q_c	q_p&q_n
else
	_hjnot	q_c, q_p, q_n
endif
	endm

_hjnot	macro	q_c, q_p, q_n
ifidn	<q_c>,<z>
	jnz	q_p&q_n
else
ifidn	<q_c>,<e>
	jne	q_p&q_n
else
ifidn	<q_c>,<nz>
	jz	q_p&q_n
else
ifidn	<q_c>,<ne>
	je	q_p&q_n
else
ifidn	<q_c>,<c>
	jnc	q_p&q_n
else
ifidn	<q_c>,<b>
	jae	q_p&q_n
else
ifidn	<q_c>,<nae>
	jae	q_p&q_n
else
ifidn	<q_c>,<nc>
	jc	q_p&q_n
else
ifidn	<q_c>,<ae>
	jb	q_p&q_n
else
ifidn	<q_c>,<nb>
	jb	q_p&q_n
else
ifidn	<q_c>,<a>
	jbe	q_p&q_n
else
ifidn	<q_c>,<nbe>
	jbe	q_p&q_n
else
ifidn	<q_c>,<be>
	ja	q_p&q_n
else
ifidn	<q_c>,<na>
	ja	q_p&q_n
else
ifidn	<q_c>,<s>
	jns	q_p&q_n
else
ifidn	<q_c>,<ns>
	js	q_p&q_n
else
ifidn	<q_c>,<l>
	jge	q_p&q_n
else
ifidn	<q_c>,<nge>
	jge	q_p&q_n
else
ifidn	<q_c>,<ge>
	jl	q_p&q_n
else
ifidn	<q_c>,<nl>
	jl	q_p&q_n
else
ifidn	<q_c>,<g>
	jle	q_p&q_n
else
ifidn	<q_c>,<nle>
	jle	q_p&q_n
else
ifidn	<q_c>,<le>
	jg	q_p&q_n
else
ifidn	<q_c>,<ng>
	jg	q_p&q_n
else
ifidn	<q_c>,<o>
	jno	q_p&q_n
else
ifidn	<q_c>,<no>
	jo	q_p&q_n
else
ifidn	<q_c>,<p>
	jnp	q_p&q_n
else
ifidn	<q_c>,<np>
	jp	q_p&q_n
else
	_hlmacros_unknown_condition_&q_c
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
	endm

; after cmp a,b: the jump for relational operator op
_hrel	macro	q_s, q_o, q_p, q_n
ifidn	<q_o>,<==>
	_hj	q_s, e, q_p, q_n
else
ifidn	<q_o>,<eq>
	_hj	q_s, e, q_p, q_n
else
ifidn	<q_o>,<ne>
	_hj	q_s, ne, q_p, q_n
else
ifidn	<q_o>,<lt>
	_hj	q_s, b, q_p, q_n
else
ifidn	<q_o>,<le>
	_hj	q_s, be, q_p, q_n
else
ifidn	<q_o>,<gt>
	_hj	q_s, a, q_p, q_n
else
ifidn	<q_o>,<ge>
	_hj	q_s, ae, q_p, q_n
else
ifidn	<q_o>,<slt>
	_hj	q_s, l, q_p, q_n
else
ifidn	<q_o>,<sle>
	_hj	q_s, le, q_p, q_n
else
ifidn	<q_o>,<sgt>
	_hj	q_s, g, q_p, q_n
else
ifidn	<q_o>,<sge>
	_hj	q_s, ge, q_p, q_n
else
ifidn	<q_o>,<=>
	_hlmacros_write_ne_for_not_equal
else
	_hlmacros_unknown_operator_&q_o
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
	endm

; a one-word condition: a flag, a jcc suffix, or a register tested for nonzero
_hone	macro	q_s, q_a, q_p, q_n
_hk_	=	0
	irp	cc,<z,nz,e,ne,c,nc,b,nb,ae,nae,a,na,be,nbe,s,ns,l,nl,ge,nge,g,ng,le,nle,o,no,p,np>
ifidn	<q_a>,<cc>
_hk_	=	1
endif
	endm
ifidn	<q_a>,<zero?>
	_hj	q_s, z, q_p, q_n
else
ifidn	<q_a>,<carry?>
	_hj	q_s, c, q_p, q_n
else
ifidn	<q_a>,<sign?>
	_hj	q_s, s, q_p, q_n
else
ifidn	<q_a>,<overflow?>
	_hj	q_s, o, q_p, q_n
else
ifidn	<q_a>,<parity?>
	_hj	q_s, p, q_p, q_n
else
if	_hk_
	_hj	q_s, q_a, q_p, q_n
else
	or	q_a,q_a
	_hj	q_s, nz, q_p, q_n
endif
endif
endif
endif
endif
endif
	endm

; the jump to p<n> when cond (a op b) is true (sense 1) or false (sense 0)
_hcond	macro	q_s, q_p, q_n, q_a, q_o, q_b, q_x
ifidn	<q_a>,<not>
if	q_s
	_hcond	0, q_p, q_n, <q_o>, <q_b>, <q_x>
else
	_hcond	1, q_p, q_n, <q_o>, <q_b>, <q_x>
endif
else
ifnb	<q_x>
	_hlmacros_bad_condition_&q_a&_&q_o
else
ifnb	<q_b>
ifidn	<q_o>,<and>
	test	q_a,q_b
	_hj	q_s, nz, q_p, q_n
else
	cmp	q_a,q_b
	_hrel	q_s, q_o, q_p, q_n
endif
else
ifnb	<q_o>
	_hlmacros_bad_condition_&q_a&_&q_o
else
	_hone	q_s, <q_a>, q_p, q_n
endif
endif
endif
endif
	endm

.if	macro	a, op, b, x
	_hnew
_hd_	=	_hd_ + 1
	_hset	_hs, %_hd_, %_ht_
	_hset	_hc, %_hd_, %_ht_
	_hset	_hf, %_hd_, 0
	_hset	_hx, %_hd_, 0
	_hcond	0, _he, %_ht_, <a>, <op>, <b>, <x>
	endm

.elseif	macro	a, op, b, x
	_hload	_ht_, _hs, %_hd_
	_hjmp	, _hx, %_ht_
	_hload	_ht_, _hc, %_hd_
	_hlbl	_he, %_ht_
	_hnew
	_hset	_hc, %_hd_, %_ht_
	_hset	_hx, %_hd_, 1
	_hcond	0, _he, %_ht_, <a>, <op>, <b>, <x>
	endm

.else	macro	how
	_hload	_ht_, _hs, %_hd_
	_hjmp	how, _hx, %_ht_
	_hload	_ht_, _hc, %_hd_
	_hlbl	_he, %_ht_
	_hset	_hf, %_hd_, 1
	_hset	_hx, %_hd_, 1
	endm

.endif	macro
	_hload	_hft_, _hf, %_hd_
	_hload	_hxt_, _hx, %_hd_
if	_hft_ eq 0
	_hload	_ht_, _hc, %_hd_
	_hlbl	_he, %_ht_
endif
if	_hxt_
	_hload	_ht_, _hs, %_hd_
	_hlbl	_hx, %_ht_
endif
_hd_	=	_hd_ - 1
	endm

_hloopopen	macro	rep
	_hnew
_hl_	=	_hl_ + 1
	_hset	_hw, %_hl_, %_ht_
	_hset	_hr, %_hl_, rep
	_hset	_hk, %_hl_, 0
	_hset	_hb, %_hl_, 0
	_hlbl	_hw, %_ht_
	endm

.while	macro	a, op, b, x
	_hloopopen	0
	_hcond	0, _hb, %_ht_, <a>, <op>, <b>, <x>
	endm

.endw	macro
	_hload	_ht_, _hw, %_hl_
	_hjmp	, _hw, %_ht_
	_hlbl	_hb, %_ht_
_hl_	=	_hl_ - 1
	endm

.repeat	macro
	_hloopopen	1
	endm

; .until/.untilcxz: the continue label, then the test
_hloopclose	macro
	_hload	_ht_, _hw, %_hl_
	_hload	_hkt_, _hk, %_hl_
if	_hkt_
	_hlbl	_hc, %_ht_
endif
	endm

_hloopexit	macro
	_hload	_hbt_, _hb, %_hl_
if	_hbt_
	_hlbl	_hb, %_ht_
endif
_hl_	=	_hl_ - 1
	endm

.until	macro	a, op, b, x
	_hloopclose
	_hcond	0, _hw, %_ht_, <a>, <op>, <b>, <x>
	_hloopexit
	endm

.untilcxz	macro
	_hloopclose
	_hloop	_hw, %_ht_
	_hloopexit
	endm

; .break/.continue: jmp [short] p<n>, or with .if cond, j<cond> p<n>
_hleave	macro	p, n, kw, a, op, b, x
ifidn	<kw>,<.if>
	_hcond	1, p, n, <a>, <op>, <b>, <x>
else
	_hjmp	kw, p, n
endif
	endm

.break	macro	kw, a, op, b, x
	_hload	_ht_, _hw, %_hl_
	_hset	_hb, %_hl_, 1
	_hleave	_hb, %_ht_, kw, <a>, <op>, <b>, <x>
	endm

.continue	macro	kw, a, op, b, x
	_hload	_ht_, _hw, %_hl_
	_hload	_hrt_, _hr, %_hl_
if	_hrt_
	_hset	_hk, %_hl_, 1
	_hleave	_hc, %_ht_, kw, <a>, <op>, <b>, <x>
else
	_hleave	_hw, %_ht_, kw, <a>, <op>, <b>, <x>
endif
	endm

jnear	macro	cc, target
	_hnew
	_hj	0, cc, _hy, %_ht_
	jmp	target
	_hlbl	_hy, %_ht_
	endm
