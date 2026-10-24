; auto-generated
api_idx_0004_GRGJ:
    mov ax, 0xfffc
    call aztec_csav
    mov ax, word [dseg_0038]
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
@..api_idx_0004_GRGJ.l1:
    mov bx, word [bp + 0x6]
    mov si, word [bp - 0x0002]
    cmp byte [bx + si], 0x31
    je short @..api_idx_0004_GRGJ.l2
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    add ax, si
    mov bx, ax
    cmp byte [bx + cell_key_grid + 0x138], 0
    jbe short @..api_idx_0004_GRGJ.l3
@..api_idx_0004_GRGJ.l2:
    mov ax, 1
    jmp short @..api_idx_0004_GRGJ.l4
@..api_idx_0004_GRGJ.l3:
    mov ax, 0
@..api_idx_0004_GRGJ.l4:
    add si, word [bp - 0x0004]
    mov cx, si
    shl cx, 1
    mov bx, cx
    mov word [bx + api_idx_0004_GRGJ.bss1], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xa
    jl short @..api_idx_0004_GRGJ.l1
    mov ax, word [dseg_003c]
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
@..api_idx_0004_GRGJ.l5:
    mov bx, word [bp + 0x8]
    mov si, word [bp - 0x0002]
    cmp byte [bx + si], 0x31
    je short @..api_idx_0004_GRGJ.l6
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    add ax, si
    mov bx, ax
    cmp byte [bx + cell_key_grid + 0x138], 0
    jbe short @..api_idx_0004_GRGJ.l7
@..api_idx_0004_GRGJ.l6:
    mov ax, 1
    jmp short @..api_idx_0004_GRGJ.l8
@..api_idx_0004_GRGJ.l7:
    mov ax, 0
@..api_idx_0004_GRGJ.l8:
    add si, word [bp - 0x0004]
    mov cx, si
    shl cx, 1
    mov bx, cx
    mov word [bx + api_idx_0004_GRGJ.bss1], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jl short @..api_idx_0004_GRGJ.l5
    mov ax, word [index_range2_first]
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
@..api_idx_0004_GRGJ.l9:
    mov bx, word [bp + 0xa]
    mov si, word [bp - 0x0002]
    cmp byte [bx + si], 0x31
    je short @..api_idx_0004_GRGJ.l10
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    add ax, si
    mov bx, ax
    cmp byte [bx + cell_key_grid + 0x138], 0
    jbe short @..api_idx_0004_GRGJ.l11
@..api_idx_0004_GRGJ.l10:
    mov ax, 1
    jmp short @..api_idx_0004_GRGJ.l12
@..api_idx_0004_GRGJ.l11:
    mov ax, 0
@..api_idx_0004_GRGJ.l12:
    add si, word [bp - 0x0004]
    mov cx, si
    shl cx, 1
    mov bx, cx
    mov word [bx + api_idx_0004_GRGJ.bss1], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short @..api_idx_0004_GRGJ.l9
    mov ax, word [dseg_0044]
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
@..api_idx_0004_GRGJ.l13:
    mov bx, word [bp + 0xc]
    mov si, word [bp - 0x0002]
    cmp byte [bx + si], 0x31
    je short @..api_idx_0004_GRGJ.l14
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    add ax, si
    mov bx, ax
    cmp byte [bx + cell_key_grid + 0x138], 0
    jbe short @..api_idx_0004_GRGJ.l15
@..api_idx_0004_GRGJ.l14:
    mov ax, 1
    jmp short @..api_idx_0004_GRGJ.l16
@..api_idx_0004_GRGJ.l15:
    mov ax, 0
@..api_idx_0004_GRGJ.l16:
    add si, word [bp - 0x0004]
    mov cx, si
    shl cx, 1
    mov bx, cx
    mov word [bx + api_idx_0004_GRGJ.bss1], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xa
    jl short @..api_idx_0004_GRGJ.l13
    ret
