math_loc_678c:
    mov ax, 0                        ; 0x678c
    call ds_dispatch_f40b            ; 0x678f
    mov bx, word [data_0e14]         ; 0x6792
    mov si, word [bp + 0x4]          ; 0x6796
    mov al, byte [bx + si + 0x490]   ; 0x6799
    sub ah, ah                       ; 0x679d
    cmp ax, word [bp + 0x6]          ; 0x679f
    jg short @..math_loc_678c.l1     ; 0x67a2
    add ax, strict word 7            ; 0x67a4
    cmp ax, word [bp + 0x6]          ; 0x67a7
    jl short @..math_loc_678c.l1     ; 0x67aa
    mov al, byte [bx + si + 0x4a0]   ; 0x67ac
    sub ah, ah                       ; 0x67b0
    cmp ax, word [bp + 0x8]          ; 0x67b2
    jg short @..math_loc_678c.l1     ; 0x67b5
    add ax, strict word 7            ; 0x67b7
    cmp ax, word [bp + 0x8]          ; 0x67ba
    jl short @..math_loc_678c.l1     ; 0x67bd
    mov ax, si                       ; 0x67bf
    ret                              ; 0x67c1
