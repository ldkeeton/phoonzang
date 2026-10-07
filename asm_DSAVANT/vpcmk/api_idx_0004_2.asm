api_idx_0004_2:
    mov ax, 0xfffc                   ; 0x2090
    call ds_dispatch_f40b            ; 0x2093
    mov ax, 0xc2                     ; 0x2096
    push ax                          ; 0x2099
    mov ax, 0x13f                    ; 0x209a
    push ax                          ; 0x209d
    mov ax, 0xbc                     ; 0x209e
    push ax                          ; 0x20a1
    mov ax, 0                        ; 0x20a2
    push ax                          ; 0x20a5
    call ds_dispatch_e928            ; 0x20a6
    add sp, byte 8                   ; 0x20a9
    mov word [bp - 0x0002], dx       ; 0x20ac
    mov word [bp - 0x0004], ax       ; 0x20af
    mov ax, 0xbc                     ; 0x20b2
    push ax                          ; 0x20b5
    push word [bp + 0x4]             ; 0x20b6
    call ds_dispatch_fa90            ; 0x20b9
    pop cx                           ; 0x20bc
    mov cx, 6                        ; 0x20bd
    imul cx                          ; 0x20c0
    mov cx, data_0002                ; 0x20c2
    cwd                              ; 0x20c5
    idiv cx                          ; 0x20c6
    mov cx, ax                       ; 0x20c8
    mov ax, 0xa0                     ; 0x20ca
    sub ax, cx                       ; 0x20cd
    push ax                          ; 0x20cf
    call ds_dispatch_e809            ; 0x20d0
    add sp, byte 4                   ; 0x20d3
    mov ax, 0                        ; 0x20d6
    push ax                          ; 0x20d9
    mov ax, 0x55                     ; 0x20da
    push ax                          ; 0x20dd
    call ds_dispatch_e823            ; 0x20de
    add sp, byte 4                   ; 0x20e1
    mov ax, 0                        ; 0x20e4
    push ax                          ; 0x20e7
    push word [bp + 0x4]             ; 0x20e8
    call ds_dispatch_e84e            ; 0x20eb
    add sp, byte 4                   ; 0x20ee
    mov ax, 0xc2                     ; 0x20f1
    push ax                          ; 0x20f4
    mov ax, 0x13f                    ; 0x20f5
    push ax                          ; 0x20f8
    mov ax, 0xbc                     ; 0x20f9
    push ax                          ; 0x20fc
    mov ax, 0                        ; 0x20fd
    push ax                          ; 0x2100
    call ds_dispatch_e8da            ; 0x2101
    add sp, byte 8                   ; 0x2104
    cmp word [bp + 0x6], byte 0      ; 0x2107
    jle short @..api_idx_0004_2.l1   ; 0x210b
    mov ax, 0                        ; 0x210d
    push ax                          ; 0x2110
    call ds_dispatch_b7e0            ; 0x2111
    pop cx                           ; 0x2114
@..api_idx_0004_2.l1:
    push word [data_905a]            ; 0x2115
    call ds_dispatch_b75e            ; 0x2119
    pop cx                           ; 0x211c
    mov ax, 1                        ; 0x211d
    push ax                          ; 0x2120
    push word [bp - 0x0002]          ; 0x2121
    push word [bp - 0x0004]          ; 0x2124
    call ds_dispatch_e94f            ; 0x2127
    add sp, byte 6                   ; 0x212a
    mov ax, 0xc2                     ; 0x212d
    push ax                          ; 0x2130
    mov ax, 0x13f                    ; 0x2131
    push ax                          ; 0x2134
    mov ax, 0xbc                     ; 0x2135
    push ax                          ; 0x2138
    mov ax, 0                        ; 0x2139
    push ax                          ; 0x213c
    call ds_dispatch_e8da            ; 0x213d
    add sp, byte 8                   ; 0x2140
    ret                              ; 0x2143
