; auto-generated
api_idx_0002_MMNR:
    mov ax, 0xfffe
    call aztec_csav
@..api_idx_0002_MMNR.l1:
    mov ax, 0x2f
    push ax
    push word [bp + 0x4]
    call strpos
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    je short @..api_idx_0002_MMNR.l2
    mov bx, word [bp + 0x4]
    mov si, ax
    mov byte [bx + si], 0x20
    jmp short @..api_idx_0002_MMNR.l1
@..api_idx_0002_MMNR.l2:
    ret
