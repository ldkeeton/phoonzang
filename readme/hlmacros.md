# hlmacros.h

These are high-level macros for hand-written `.s` files. They are modelled on
MASM 6.0. They live in
[disassembler/lib/aztec/hlmacros.h](../disassembler/lib/aztec/hlmacros.h).

```asm
	include	lmacros.h
	include	hlmacros.h
```

Write macro names and their arguments in lower case. If an argument contains
spaces or commas, put it in angle brackets: `<word ptr cs:limit>`.

---

## Conditions

`.if`, `.elseif`, `.while`, `.until`, `.break .if` and `.continue .if` all
take a condition.

| Condition | True when |
|---|---|
| `a == b`, `a eq b` | a equals b |
| `a ne b` | a does not equal b |
| `a lt b`, `a le b`, `a gt b`, `a ge b` | the unsigned comparison holds |
| `a slt b`, `a sle b`, `a sgt b`, `a sge b` | the signed comparison holds |
| `a and b` | a AND b is nonzero |
| `reg` | the register is nonzero |
| `zero?`, `carry?`, `sign?`, `overflow?`, `parity?` | that flag is set |
| `z`, `nc`, `ae`, `l`, … | that jump condition holds |
| `not` *condition* | the condition is false |

Unlike MASM:
- Use `ne`, not `!=`.
- Use `not`, not `!`.
- Use the word forms (`lt`, `gt`, …) instead of `<` and `>`.

---

## .if

**Syntax**

```
.if condition
    statements
[.elseif condition
    statements]
[.else [short]
    statements]
.endif
```

Runs the first block whose condition is true. Blocks can be nested. Indent
each body one tab further than its directive.

**Example**

```asm
	.if	al == 2
		mov	al,byte ptr 2[bx]
		.if	not al
			rep	movsb
		.endif
	.else
		xor	ax,ax
	.endif
```

---

## .while

**Syntax**

```
.while condition
    statements
.endw
```

Repeats the body while the condition is true. The condition is tested at the
top of the loop.

---

## .repeat

**Syntax**

```
.repeat
    statements
.until condition
```

```
.repeat
    statements
.untilcxz
```

Runs the body at least once. With `.until`, it stops once the condition is
true. With `.untilcxz`, cx is decremented each pass and the loop stops when cx
reaches zero.

---

## .break and .continue

**Syntax**

```
.break [short]
.break .if condition
.continue [short]
.continue .if condition
```

`.break` leaves the innermost `.while` or `.repeat` loop. `.continue` jumps to
that loop's test. With `.if`, the jump happens only when the condition is
true.

**Example**

```asm
	.repeat
		lodsb
		.break .if al == 0
		stosb
	.untilcxz
```

---

## Interrupt calls

**Syntax**

```
dos   function [,al]
dosx  ax
video function [,al]
videox ax
kbd   function
ems   function
mouse ax
```

| Macro | Interrupt |
|---|---|
| `dos` / `dosx` | DOS (21h) |
| `video` / `videox` | BIOS video (10h) |
| `kbd` | BIOS keyboard (16h) |
| `ems` | expanded memory (67h) |
| `mouse` | mouse driver (33h) |

The plain forms take a function number and, optionally, an al value. The `x`
forms take the whole of ax as a single value.

**Example**

```asm
	dos	3fh		; read file
	dos	35h,67h		; get interrupt vector 67h
	dosx	4c01h		; exit with code 1
	video	0,13h		; set mode 13h
```

---

## pushs / pops

**Syntax**

```
pushs reg [,reg ...]
pops  reg [,reg ...]
```

Push or pop up to eight registers. Both macros work in the order written, so
`pops` does **not** reverse the list. To undo `pushs si,di,ds,es`, write the
list backwards: `pops es,ds,di,si`.

---


**Example**

```asm
my_routine_ proc near
	push	bp
	mov	bp,sp
	sub	sp,8
	pushs	si,di
	...
	pops	di,si
	mov	sp,bp
	pop	bp
	ret
my_routine_ endp
```

`pret` is `pop bp` / `ret`, so `mov sp,bp` is written separately to discard
locals.

---

## umin / umax

**Syntax**

```
umin reg, value
umax reg, value
```

Clamps a register, comparing unsigned: `umin` caps it at *value*, and `umax`
raises it to at least *value*.

**Example**

```asm
	umin	bx,18h		; at most 24 pages
```

---

## movseg

**Syntax**

```
movseg segreg, source
```

Loads a segment register from another segment register, from memory or from a
constant. It goes through ax, so ax is overwritten.

**Example**

```asm
	movseg	es,ds
	movseg	ds,cs
	movseg	es,<word ptr font_seg_>
```

---

## outp

**Syntax**

```
outp port, value [,value2]
```

Writes *value* to *port*. If *value2* is given, it is also written to the
next port up. This is the usual index/data pair for VGA registers.

**Example**

```asm
	outp	3c4h,2,0fh	; sequencer map mask = all planes
```

---

## fatal

**Syntax**

```
fatal message [,exitcode]
```

Prints a `$`-terminated message from the code segment, then exits to DOS. The
exit code defaults to 1.

**Example**

```asm
	fatal	no_memory_msg_
```

---

## jnear

**Syntax**

```
jnear cc, label
```

A conditional jump with no distance limit. *cc* is a jump condition such as
`c`, `z` or `ae`. Use it when a plain `jc`/`jz` can't reach the label.

**Example**

```asm
	dos	48h
	jnear	c,font_memory_error_
```

---

## Examples in the tree

- [load_font_file.s](../src_DSAVANT/ds/library/load_font_file.s)
- [detect_expanded_memory.s](../src_DSAVANT/ds/library/detect_expanded_memory.s)
