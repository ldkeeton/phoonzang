math_loc_00a5:
    mov ax, 0                        ; 0x00a5
    call ds_dispatch_f40b            ; 0x00a8
    mov bx, word [data_0e14]         ; 0x00ab
    mov si, word [bp + 0x4]          ; 0x00af
    mov al, byte [bx + si + 0x490]   ; 0x00b2
    sub ah, ah                       ; 0x00b6
    cmp ax, word [bp + 0x6]          ; 0x00b8
    jg short @..math_loc_00a5.l1     ; 0x00bb
    add ax, strict word 7            ; 0x00bd
    cmp ax, word [bp + 0x6]          ; 0x00c0
    jl short @..math_loc_00a5.l1     ; 0x00c3
    mov al, byte [bx + si + 0x4a0]   ; 0x00c5
    sub ah, ah                       ; 0x00c9
    cmp ax, word [bp + 0x8]          ; 0x00cb
    jg short @..math_loc_00a5.l1     ; 0x00ce
    add ax, strict word 7            ; 0x00d0
    cmp ax, word [bp + 0x8]          ; 0x00d3
    jl short @..math_loc_00a5.l1     ; 0x00d6
    mov ax, si                       ; 0x00d8
    ret                              ; 0x00da
