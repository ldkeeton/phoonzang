; bp.asm — breakpoint management

; Find breakpoint by linear address DX:AX → AX=index or -1.
; The table is sparse; indices remain stable until an entry is removed.
bp_find:
    push cx
    push di
    push si
    mov cx, MAX_BP
    mov di, bp_a
    xor si, si
.fl:cmp [di], ax
    jne .nx
    cmp [di+2], dx
    jne .nx
    mov ax, si
    jmp .fd
.nx:add di, 4
    inc si
    loop .fl
.nf:mov ax, -1
.fd:pop si
    pop di
    pop cx
    ret

; Add breakpoint at linear address DX:AX → AX=index or -1
bp_add:
    push cx
    push dx
    push es
    push bx
    push di
    push si
    mov bx, ax              ; save low addr in BX (bp_find preserves BX)
    call bp_find
    cmp ax, -1
    jne .ad
    cmp byte [bp_n], MAX_BP
    jae .fl
    ; Allocate the first free slot rather than assuming active entries are
    ; packed; GDB may remove breakpoints in any order.
    xor si, si
    mov di, bp_a
    mov cx, MAX_BP
.slot:
    cmp word [di], -1
    je .free
    add di, 4
    inc si
    loop .slot
    jmp .fl
.free:
    mov ax, bx              ; AX = saved low addr
    mov [di], ax
    mov [di+2], dx
    ; save original byte at breakpoint address
    mov ax, bx
    shr ax, 4
    mov cx, dx
    shl cx, 12
    or ax, cx
    and bx, 0xF
    mov es, ax
    mov al, [es:bx]
    mov [bp_o+si], al
    mov byte [es:bx], 0xCC
    inc byte [bp_n]
    mov ax, si
    jmp .ad
.fl:mov ax, -1
.ad:pop si
    pop di
    pop bx
    pop es
    pop dx
    pop cx
    ret

; Remove breakpoint at linear address DX:AX
bp_rem:
    push es
    push bx
    push cx
    push dx
    push di
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
    push si
    mov di, si
    shl di, 2
    mov word [bp_a+di], -1
    mov word [bp_a+di+2], -1
    mov byte [bp_o+si], 0
    dec byte [bp_n]
    cmp [bp_cur], si
    jne .not_cur
    mov word [bp_cur], -1
.not_cur:
    cmp [st_pi], si
    jne .removed
    mov word [st_pi], -1
.removed:
    mov ax, si
    pop si
.rd:pop si
    pop di
    pop dx
    pop cx
    pop bx
    pop es
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

; Patch 0xCC at every active breakpoint except st_pi.
bp_patch:
    push ax
    push cx
    push dx
    push es
    push bx
    push si
    xor bx, bx
.pl:cmp bx, MAX_BP
    jae .pd
    cmp bx, [st_pi]
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
    push cx
    mov cx, dx
    shl cx, 12
    or ax, cx
    and bx, 0xF
    mov es, ax
    mov byte [es:bx], 0xCC
    pop cx
    pop bx
.ps:inc bx
    jmp .pl
.pd:pop si
    pop bx
    pop es
    pop dx
    pop cx
    pop ax
    ret
