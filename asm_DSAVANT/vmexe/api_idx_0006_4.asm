api_idx_0006_4:
    mov ax, 0xfffa                   ; 0x2c7b
    call ds_dispatch_f40b            ; 0x2c7e
    mov word [data_91d6], 2          ; 0x2c81
    mov word [bp - 0x0004], 0        ; 0x2c87
    cmp word [bp + 0xa], byte 3      ; 0x2c8c
    jne short @..api_idx_0006_4.l3   ; 0x2c90
    cmp word [bp + 0xe], byte 1      ; 0x2c92
    jne short @..api_idx_0006_4.l3   ; 0x2c96
    cmp word [bp + 0x8], byte 5      ; 0x2c98
    jne short @..api_idx_0006_4.l1   ; 0x2c9c
    mov ax, word [bp + 0x4]          ; 0x2c9e
    shl ax, 1                        ; 0x2ca1
    mov bx, ax                       ; 0x2ca3
    mov bx, word [bx - 0x7b7e]       ; 0x2ca5
    mov al, byte [bx + 0x18f]        ; 0x2ca9
    sub ah, ah                       ; 0x2cad
    mov cx, 5                        ; 0x2caf
    cwd                              ; 0x2cb2
    idiv cx                          ; 0x2cb3
    cmp ax, word [bp + 0x10]         ; 0x2cb5
    jle short @..api_idx_0006_4.l1   ; 0x2cb8
    mov ax, 2                        ; 0x2cba
    push ax                          ; 0x2cbd
    push ax                          ; 0x2cbe
    call api_idx_0004_6              ; 0x2cbf
    add sp, byte 4                   ; 0x2cc2
    mov ax, 2                        ; 0x2cc5
    push ax                          ; 0x2cc8
    mov ax, 0x41                     ; 0x2cc9
    push ax                          ; 0x2ccc
    mov ax, 0xc8c                    ; 0x2ccd
    push ax                          ; 0x2cd0
    call api_idx_0050                ; 0x2cd1
    add sp, byte 6                   ; 0x2cd4
    push word [data_9058]            ; 0x2cd7
    call api_idx_0004_5              ; 0x2cdb
    pop cx                           ; 0x2cde
    ret                              ; 0x2cdf
