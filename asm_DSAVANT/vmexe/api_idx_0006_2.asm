api_idx_0006_2:
    mov ax, 0xfffa                   ; 0x209c
    call ds_dispatch_f40b            ; 0x209f
    mov ax, 0x2c                     ; 0x20a2
    imul word [bp + 0x6]             ; 0x20a5
    mov si, ax                       ; 0x20a8
    mov ax, word [bp + 0x4]          ; 0x20aa
    shl ax, 1                        ; 0x20ad
    mov bx, ax                       ; 0x20af
    mov bx, word [bx - 0x7b7e]       ; 0x20b1
    cmp byte [bx + si + 0x22], 2     ; 0x20b5
    jae short @..api_idx_0006_2.l1   ; 0x20b9
    push word [bp + 0x6]             ; 0x20bb
    push word [bp + 0x4]             ; 0x20be
    call math_loc_1f5d               ; 0x20c1
    add sp, byte 4                   ; 0x20c4
    test ax, ax                      ; 0x20c7
    je short @..api_idx_0006_2.l2    ; 0x20c9
@..api_idx_0006_2.l1:
    ret                              ; 0x20cb
