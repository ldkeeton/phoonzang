math_loc_0f67:
    mov ax, 0xfee2                   ; 0x0f67
    call ds_dispatch_f40b            ; 0x0f6a
    cmp word [bp + 0x4], byte 0      ; 0x0f6d
    jne short @..math_loc_0f67.l1    ; 0x0f71
    mov ax, 0x2c                     ; 0x0f73
    imul word [bp + 0x6]             ; 0x0f76
    mov si, ax                       ; 0x0f79
    mov ax, word [bp + 0x4]          ; 0x0f7b
    shl ax, 1                        ; 0x0f7e
    mov bx, ax                       ; 0x0f80
    mov bx, word [bx - 0x7b7e]       ; 0x0f82
    cmp byte [bx + si + 0x1f], 0     ; 0x0f86
    jne short @..math_loc_0f67.l1    ; 0x0f8a
    ret                              ; 0x0f8c
@..math_loc_0f67.l1:
    call loc_1a35                    ; 0x0f8d
    mov word [bp - 0x00f8], 7        ; 0x0f90
    mov ax, 6                        ; 0x0f96
    imul word [bp + 0x8]             ; 0x0f99
    mov bx, ax                       ; 0x0f9c
    mov al, byte [bx + 0x889]        ; 0x0f9e
    sub ah, ah                       ; 0x0fa2
    jmp short @..math_loc_0f67.l5    ; 0x0fa4
