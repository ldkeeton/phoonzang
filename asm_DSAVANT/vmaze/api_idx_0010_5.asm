api_idx_0010_5:
    mov ax, 0xfff0                   ; 0xa2df
    call ds_dispatch_f40b            ; 0xa2e2
    mov ax, 0x26                     ; 0xa2e5
    imul word [bp + 0x4]             ; 0xa2e8
    mov bx, ax                       ; 0xa2eb
    mov al, byte [bx - 0x7b15]       ; 0xa2ed
    sub ah, ah                       ; 0xa2f1
    push ax                          ; 0xa2f3
    push word [bp + 0x4]             ; 0xa2f4
    call math_loc_9448               ; 0xa2f7
    add sp, byte 4                   ; 0xa2fa
    test ax, ax                      ; 0xa2fd
    jne short @..api_idx_0010_5.l1   ; 0xa2ff
    mov ax, 0x26                     ; 0xa301
    imul word [bp + 0x4]             ; 0xa304
    mov bx, ax                       ; 0xa307
    mov byte [bx - 0x7b16], 0        ; 0xa309
    ret                              ; 0xa30e
