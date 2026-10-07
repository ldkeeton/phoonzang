api_idx_0002_7:
    mov ax, 0xfffe                   ; 0x5006
    call ds_dispatch_f40b            ; 0x5009
    push word [bp + 0xa]             ; 0x500c
    call ds_dispatch_b7a9            ; 0x500f
    pop cx                           ; 0x5012
    add ax, word [bp + 0x8]          ; 0x5013
    mov word [bp - 0x0002], ax       ; 0x5016
    mov ax, 0x64                     ; 0x5019
    push ax                          ; 0x501c
    mov ax, 0                        ; 0x501d
    push ax                          ; 0x5020
    mov ax, 0x248                    ; 0x5021
    imul word [bp + 0x4]             ; 0x5024
    add ax, word [bp + 0x6]          ; 0x5027
    mov bx, ax                       ; 0x502a
    mov al, byte [bx + 0x5d6c]       ; 0x502c
    sub ah, ah                       ; 0x5030
    add ax, word [bp - 0x0002]       ; 0x5032
    push ax                          ; 0x5035
    call ds_dispatch_b7c2            ; 0x5036
    add sp, byte 6                   ; 0x5039
    push ax                          ; 0x503c
    mov ax, 0x248                    ; 0x503d
    imul word [bp + 0x4]             ; 0x5040
    mov cx, ax                       ; 0x5043
    add ax, word [bp + 0x6]          ; 0x5045
    mov bx, ax                       ; 0x5048
    pop ax                           ; 0x504a
    mov byte [bx + 0x5d6c], al       ; 0x504b
    ret                              ; 0x504f
