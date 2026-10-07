math_loc_4292:
    mov ax, 0                        ; 0x4292
    call ds_dispatch_f40b            ; 0x4295
    mov ax, word [bp + 0x8]          ; 0x4298
    add ax, strict word 6            ; 0x429b
    push ax                          ; 0x429e
    mov ax, word [bp + 0x6]          ; 0x429f
    add ax, strict word 0xe          ; 0x42a2
    push ax                          ; 0x42a5
    push word [bp + 0x8]             ; 0x42a6
    push word [bp + 0x6]             ; 0x42a9
    call ds_dispatch_bd98            ; 0x42ac
    add sp, byte 8                   ; 0x42af
    mov ax, word [bp + 0x8]          ; 0x42b2
    inc ax                           ; 0x42b5
    push ax                          ; 0x42b6
    mov ax, word [bp + 0x6]          ; 0x42b7
    inc ax                           ; 0x42ba
    inc ax                           ; 0x42bb
    push ax                          ; 0x42bc
    call ds_dispatch_e809            ; 0x42bd
    add sp, byte 4                   ; 0x42c0
    mov ax, 0xc3                     ; 0x42c3
    push ax                          ; 0x42c6
    mov ax, 0xb4                     ; 0x42c7
    push ax                          ; 0x42ca
    call ds_dispatch_e823            ; 0x42cb
    add sp, byte 4                   ; 0x42ce
    mov ax, 0                        ; 0x42d1
    push ax                          ; 0x42d4
    mov ax, data_0002                ; 0x42d5
    push ax                          ; 0x42d8
    push word [bp + 0x4]             ; 0x42d9
    call ds_dispatch_b2e7            ; 0x42dc
    add sp, byte 6                   ; 0x42df
    ret                              ; 0x42e2
