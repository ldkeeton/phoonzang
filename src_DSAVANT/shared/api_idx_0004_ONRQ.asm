; auto-generated
; asm only
api_idx_0004_ONRQ:
    mov ax, 0xfffc
    call aztec_csav
    mov word [bp - 0x0002], 0
@..api_idx_0004_ONRQ.l1:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bss_8468]
    jge short @..api_idx_0004_ONRQ.l2
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b96]
    mov al, byte [bx + 0x14]
    sub ah, ah
    cmp ax, word [bp + 0x4]
    jg short @..api_idx_0004_ONRQ.l2
    inc word [bp - 0x0002]
    jmp short @..api_idx_0004_ONRQ.l1
@..api_idx_0004_ONRQ.l2:
    mov ax, word [bss_8468]
    mov word [bp - 0x0004], ax
    jmp short @..api_idx_0004_ONRQ.l4
@..api_idx_0004_ONRQ.l3:
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    mov si, word [bx + bss_8468]
    mov di, word [bx - 0x7b96]
    mov cx, ds
    mov es, cx
    mov cx, 0xc
    rep movsw
    dec word [bp - 0x0004]
@..api_idx_0004_ONRQ.l4:
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp - 0x0002]
    jg short @..api_idx_0004_ONRQ.l3
    cmp word [bp - 0x0002], byte 0x0c
    jl short @..api_idx_0004_ONRQ.l6
@..api_idx_0004_ONRQ.l5:
    mov ax, 0
    push ax
    call ds_app_HKIJ
    pop cx
    jmp short @..api_idx_0004_ONRQ.l5
@..api_idx_0004_ONRQ.l6:
    mov al, byte [bp + 0x4]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx - 0x7b96]
    mov byte [bx + 0x14], al
    mov al, byte [bp + 0x6]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx - 0x7b96]
    mov byte [bx + 0x15], al
    mov ax, word [bp + 0x8]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx - 0x7b96]
    mov word [bx], ax
    mov ax, word [bp + 0xa]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx - 0x7b96]
    mov word [bx + 0x2], ax
    mov ax, word [bp + 0xc]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx - 0x7b96]
    mov word [bx + 0x4], ax
    mov ax, word [bp + 0xe]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx - 0x7b96]
    mov word [bx + 0x6], ax
    mov al, byte [bp + 0x10]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx - 0x7b96]
    mov byte [bx + 0x16], al
    mov al, byte [bp + 0x12]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx - 0x7b96]
    mov byte [bx + 0x17], al
    push word [bp + 0x14]
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx - 0x7b96]
    add ax, strict word 8
    push ax
    call aztec_strcpy
    add sp, byte 4
    inc word [bss_8468]
    ret
