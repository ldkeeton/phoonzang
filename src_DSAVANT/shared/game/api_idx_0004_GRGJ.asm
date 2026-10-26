; auto-generated
api_idx_0004_GRGJ:
    mov ax, 0xfffc
    call aztec_csav
    mov ax, word [dseg_0038]
    mov word [bp - 4], ax
    mov word [bp - 2], 0
.back1:
    mov bx, word [bp + 6]
    mov si, word [bp - 2]
    cmp byte [bx + si], 0x31
    je short .forward1
    mov ax, 0x248
    imul word [bp + 4]
    add ax, word [bp - 4]
    add ax, si
    mov bx, ax
    cmp byte [bx + party_records + pc_rec.flag], 0
    jbe short .forward2
.forward1:
    mov ax, 1
    jmp short .forward3
.forward2:
    mov ax, 0
.forward3:
    add si, word [bp - 4]
    mov cx, si
    shl cx, 1
    mov bx, cx
    mov word [bx + api_idx_0004_GRGJ.bss1], ax
    inc word [bp - 2]
    mov ax, word [bp - 2]
    cmp ax, strict word 0xa
    jl short .back1
    mov ax, word [dseg_003c]
    mov word [bp - 4], ax
    mov word [bp - 2], 0
.back2:
    mov bx, word [bp + 8]
    mov si, word [bp - 2]
    cmp byte [bx + si], 0x31
    je short .forward4
    mov ax, 0x248
    imul word [bp + 4]
    add ax, word [bp - 4]
    add ax, si
    mov bx, ax
    cmp byte [bx + party_records + pc_rec.flag], 0
    jbe short .forward5
.forward4:
    mov ax, 1
    jmp short .forward6
.forward5:
    mov ax, 0
.forward6:
    add si, word [bp - 4]
    mov cx, si
    shl cx, 1
    mov bx, cx
    mov word [bx + api_idx_0004_GRGJ.bss1], ax
    inc word [bp - 2]
    mov ax, word [bp - 2]
    cmp ax, strict word 8
    jl short .back2
    mov ax, word [index_range2_first]
    mov word [bp - 4], ax
    mov word [bp - 2], 0
.back3:
    mov bx, word [bp + 0xa]
    mov si, word [bp - 2]
    cmp byte [bx + si], 0x31
    je short .forward7
    mov ax, 0x248
    imul word [bp + 4]
    add ax, word [bp - 4]
    add ax, si
    mov bx, ax
    cmp byte [bx + party_records + pc_rec.flag], 0
    jbe short .forward8
.forward7:
    mov ax, 1
    jmp short .forward9
.forward8:
    mov ax, 0
.forward9:
    add si, word [bp - 4]
    mov cx, si
    shl cx, 1
    mov bx, cx
    mov word [bx + api_idx_0004_GRGJ.bss1], ax
    inc word [bp - 2]
    mov ax, word [bp - 2]
    cmp ax, strict word 6
    jl short .back3
    mov ax, word [dseg_0044]
    mov word [bp - 4], ax
    mov word [bp - 2], 0
.back4:
    mov bx, word [bp + 0xc]
    mov si, word [bp - 2]
    cmp byte [bx + si], 0x31
    je short .forward10
    mov ax, 0x248
    imul word [bp + 4]
    add ax, word [bp - 4]
    add ax, si
    mov bx, ax
    cmp byte [bx + party_records + pc_rec.flag], 0
    jbe short .forward11
.forward10:
    mov ax, 1
    jmp short .forward12
.forward11:
    mov ax, 0
.forward12:
    add si, word [bp - 4]
    mov cx, si
    shl cx, 1
    mov bx, cx
    mov word [bx + api_idx_0004_GRGJ.bss1], ax
    inc word [bp - 2]
    mov ax, word [bp - 2]
    cmp ax, strict word 0xa
    jl short .back4
    ret
