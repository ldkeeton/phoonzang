math_loc_00b6:
    mov ax, 0                        ; 0x00b6
    call ds_dispatch_f40b            ; 0x00b9
    mov bx, word [data_0e14]         ; 0x00bc
    mov si, word [bp + 0x4]          ; 0x00c0
    mov al, byte [bx + si + 0x490]   ; 0x00c3
    sub ah, ah                       ; 0x00c7
    cmp ax, word [bp + 0x6]          ; 0x00c9
    jg short @..math_loc_00b6.l1     ; 0x00cc
    add ax, strict word 7            ; 0x00ce
    cmp ax, word [bp + 0x6]          ; 0x00d1
    jl short @..math_loc_00b6.l1     ; 0x00d4
    mov al, byte [bx + si + 0x4a0]   ; 0x00d6
    sub ah, ah                       ; 0x00da
    cmp ax, word [bp + 0x8]          ; 0x00dc
    jg short @..math_loc_00b6.l1     ; 0x00df
    add ax, strict word 7            ; 0x00e1
    cmp ax, word [bp + 0x8]          ; 0x00e4
    jl short @..math_loc_00b6.l1     ; 0x00e7
    mov ax, si                       ; 0x00e9
    ret                              ; 0x00eb
