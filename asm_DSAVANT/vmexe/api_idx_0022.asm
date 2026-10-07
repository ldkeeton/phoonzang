api_idx_0022:
    mov ax, 0xffde                   ; 0x2242
    call ds_dispatch_f40b            ; 0x2245
    mov word [data_91d6], 4          ; 0x2248
    mov ax, 0x2c                     ; 0x224e
    imul word [bp + 0x6]             ; 0x2251
    mov si, ax                       ; 0x2254
    mov ax, word [bp + 0x4]          ; 0x2256
    shl ax, 1                        ; 0x2259
    mov bx, ax                       ; 0x225b
    mov bx, word [bx - 0x7b7e]       ; 0x225d
    cmp byte [bx + si + 0x22], 3     ; 0x2261
    jae short @..api_idx_0022.l1     ; 0x2265
    push word [bp + 0x6]             ; 0x2267
    push word [bp + 0x4]             ; 0x226a
    call math_loc_1f5d               ; 0x226d
    add sp, byte 4                   ; 0x2270
    test ax, ax                      ; 0x2273
    je short @..api_idx_0022.l2      ; 0x2275
@..api_idx_0022.l1:
    mov ax, 0                        ; 0x2277
    ret                              ; 0x227a
