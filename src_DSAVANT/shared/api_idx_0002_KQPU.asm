; auto-generated
api_idx_0002_KQPU:
    mov ax, 0xfffe
    call aztec_csav
    mov ax, word [bp + 0xa]
    mov word [bp - 0x0002], ax
    jmp short @..api_idx_0002_KQPU.l4
@..api_idx_0002_KQPU.l1:
    mov bx, word [bss_0e12]
    mov si, word [bp - 0x0002]
    mov al, byte [bx + si + 0x870]
    sub ah, ah
    cmp ax, word [bp + 0x8]
    je short @..api_idx_0002_KQPU.l2
    mov ax, 0xffff
    ret
@..api_idx_0002_KQPU.l2:
    mov al, byte [bx + si + 0x690]
    sub ah, ah
    cmp ax, word [bp + 0x4]
    jne short @..api_idx_0002_KQPU.l3
    mov al, byte [bx + si + 0x780]
    sub ah, ah
    cmp ax, word [bp + 0x6]
    jne short @..api_idx_0002_KQPU.l3
    cmp byte [bx + si + 0x5a0], 0
    jbe short @..api_idx_0002_KQPU.l3
    mov al, byte [bx + si + 0x960]
    sub ah, ah
    push ax
    mov ax, word [bss_830c]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call ds_leaf_loc_PRVP
    add sp, byte 4
    test ax, ax
    jne short @..api_idx_0002_KQPU.l3
    mov ax, word [bp - 0x0002]
    ret
@..api_idx_0002_KQPU.l3:
    inc word [bp - 0x0002]
@..api_idx_0002_KQPU.l4:
    cmp word [bp - 0x0002], strict word 0xf0
    jl short @..api_idx_0002_KQPU.l1
    mov ax, 0xffff
    ret
