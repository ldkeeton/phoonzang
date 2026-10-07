api_idx_000e_3:
    mov ax, 0xfff2                   ; 0x96d5
    call ds_dispatch_f40b            ; 0x96d8
    mov ax, 0xc7                     ; 0x96db
    push ax                          ; 0x96de
    mov ax, 0x13f                    ; 0x96df
    push ax                          ; 0x96e2
    mov ax, 0                        ; 0x96e3
    push ax                          ; 0x96e6
    push ax                          ; 0x96e7
    call ds_dispatch_e8da            ; 0x96e8
    add sp, byte 8                   ; 0x96eb
    mov ax, 0x248                    ; 0x96ee
    imul word [bp + 0x4]             ; 0x96f1
    add ax, 0x5bf4                   ; 0x96f4
    push ax                          ; 0x96f7
    lea ax, word [bp - 0x000a]       ; 0x96f8
    push ax                          ; 0x96fb
    call ds_dispatch_f364            ; 0x96fc
    add sp, byte 4                   ; 0x96ff
    lea ax, word [bp - 0x000a]       ; 0x9702
    push ax                          ; 0x9705
    mov ax, 1                        ; 0x9706
    push ax                          ; 0x9709
    push ax                          ; 0x970a
    mov ax, 0                        ; 0x970b
    push ax                          ; 0x970e
    mov ax, 0x48e                    ; 0x970f
    push ax                          ; 0x9712
    call api_idx_0026                ; 0x9713
    add sp, byte 0x0a                ; 0x9716
    cmp ax, strict word 2            ; 0x9719
    jne short @..api_idx_000e_3.l1   ; 0x971c
    ret                              ; 0x971e
