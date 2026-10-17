; auto-generated
api_idx_0002_UIHS:
    mov ax, 0xfffe
    call aztec_csav
    mov word [bp - 0x0002], 0
@..api_idx_0002_UIHS.l1:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov ax, word [word bx + 0x4a]
    cmp ax, word [bp + 0x4]
    jge short @..api_idx_0002_UIHS.l2
    inc word [bp - 0x0002]
    jmp short @..api_idx_0002_UIHS.l1
@..api_idx_0002_UIHS.l2:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    push word [word bx + 0x4a]
    push word [word bx + 0x48]
    mov ax, word [bp + 0x4]
    add ax, word [bp + 0x6]
    push ax
    call clamp
    add sp, byte 6
    ret
