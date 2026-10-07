math_loc_5789:
    mov ax, 0xfe5c                   ; 0x5789
    call ds_dispatch_f40b            ; 0x578c
    mov ax, 0                        ; 0x578f
    push ax                          ; 0x5792
    push word [data_84a0]            ; 0x5793
    lea ax, word [bp - 0x003a]       ; 0x5797
    push ax                          ; 0x579a
    mov ax, 7                        ; 0x579b
    push ax                          ; 0x579e
    call ds_dispatch_b63c            ; 0x579f
    add sp, byte 8                   ; 0x57a2
    mov word [data_84a0], 0xffff     ; 0x57a5
    cmp byte [bp - 0x0005], 0        ; 0x57ab
    jbe short @..math_loc_5789.l2    ; 0x57af
    mov ax, 0xc6                     ; 0x57b1
    push ax                          ; 0x57b4
    mov ax, 0x109                    ; 0x57b5
    push ax                          ; 0x57b8
    mov ax, 0x92                     ; 0x57b9
    push ax                          ; 0x57bc
    mov ax, 0x37                     ; 0x57bd
    push ax                          ; 0x57c0
    call ds_dispatch_e8da            ; 0x57c1
    add sp, byte 8                   ; 0x57c4
    lea ax, word [bp - 0x003a]       ; 0x57c7
    push ax                          ; 0x57ca
    call api_idx_007a                ; 0x57cb
    pop cx                           ; 0x57ce
    cmp ax, strict word 0xffff       ; 0x57cf
    jne short @..math_loc_5789.l1    ; 0x57d2
    mov ax, 1                        ; 0x57d4
    push ax                          ; 0x57d7
    call api_idx_000a_2              ; 0x57d8
    pop cx                           ; 0x57db
    ret                              ; 0x57dc
