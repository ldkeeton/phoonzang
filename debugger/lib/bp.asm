; bp.asm — breakpoint management

; Find breakpoint by linear address DX:AX → AX=index or -1
bp_find:
    push cx
    push di
    xor ch, ch
    mov cl, [bp_n]
    jcxz .nf
    mov di, bp_a
.fl:cmp [di], ax
    jne .nx
    cmp [di+2], dx
    jne .nx
    mov ax, MAX_BP
    sub ax, cx
    jmp .fd
.nx:add di, 4
    loop .fl
.nf:mov ax, -1
.fd:pop di
    pop cx
    ret

; Add breakpoint at linear address DX:AX → AX=index or -1
bp_add:
    push cx
    push dx
    push es
    push bx
    push si
    mov bx, ax              ; save low addr in BX (bp_find preserves BX)
    call bp_find
    cmp ax, -1
    jne .ad
    mov cl, [bp_n]
    cmp cl, MAX_BP
    jae .fl
    xor ch, ch
    push cx
    pop si                  ; SI = bp_n (new index)
    push si
    shl si, 2               ; SI = index * 4
    mov ax, bx              ; AX = saved low addr
    mov [bp_a+si], ax
    mov [bp_a+si+2], dx
    pop si                  ; SI = index (unshifted)
    ; save original byte at breakpoint address
    push si
    mov ax, bx
    shr ax, 4
    mov cx, dx
    shl cx, 12
    or ax, cx
    and bx, 0xF
    mov es, ax
    mov al, [es:bx]
    pop si
    mov [bp_o+si], al
    mov byte [es:bx], 0xCC
    inc byte [bp_n]
    mov ax, si
    jmp .ad
.fl:mov ax, -1
.ad:pop si
    pop bx
    pop es
    pop dx
    pop cx
    ret

; Remove breakpoint at linear address DX:AX
bp_rem:
    push ax
    push es
    push bx
    push cx
    push dx
    push si
    call bp_find
    cmp ax, -1
    je .rd
    mov si, ax
    mov cl, [bp_o+si]
    push si
    shl si, 2
    mov ax, [bp_a+si]
    mov dx, [bp_a+si+2]
    push cx
    mov bx, ax
    mov ax, bx
    shr ax, 4
    mov cx, dx
    shl cx, 12
    or ax, cx
    and bx, 0xF
    mov es, ax
    pop cx
    mov [es:bx], cl
    pop si
    shl si, 2
    mov word [bp_a+si], -1
    dec byte [bp_n]
.rd:pop si
    pop dx
    pop cx
    pop bx
    pop es
    pop ax
    ret

; Restore original byte at breakpoint index AX
bp_rest:
    push bx
    push cx
    push dx
    push es
    push si
    mov si, ax
    mov cl, [bp_o+si]
    push si
    shl si, 2
    mov ax, [bp_a+si]
    mov dx, [bp_a+si+2]
    push cx
    mov bx, ax
    mov ax, bx
    shr ax, 4
    mov cx, dx
    shl cx, 12
    or ax, cx
    and bx, 0xF
    mov es, ax
    pop cx
    mov [es:bx], cl
    pop si
    pop si
    pop es
    pop dx
    pop cx
    pop bx
    ret

; Patch 0xCC at all breakpoints except st_pi
bp_patch:
    push ax
    push cx
    push dx
    push es
    push bx
    push si
    xor ch, ch
    mov cl, [bp_n]
    jcxz .pd
    xor bx, bx
.pl:cmp bx, [st_pi]
    je .ps
    mov si, bx
    shl si, 2
    mov ax, [bp_a+si]
    cmp ax, -1
    je .ps
    mov dx, [bp_a+si+2]
    push bx
    mov bx, ax
    mov ax, bx
    shr ax, 4
    mov cx, dx
    shl cx, 12
    or ax, cx
    and bx, 0xF
    mov es, ax
    mov byte [es:bx], 0xCC
    pop bx
.ps:inc bx
    loop .pl
.pd:pop si
    pop bx
    pop es
    pop dx
    pop cx
    pop ax
    ret
