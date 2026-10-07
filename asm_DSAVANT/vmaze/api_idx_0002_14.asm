api_idx_0002_14:
    mov ax, 0xfffe                   ; 0x7abe
    call ds_dispatch_f40b            ; 0x7ac1
    mov ax, word [data_8d12]         ; 0x7ac4
    shl ax, 1                        ; 0x7ac7
    mov si, ax                       ; 0x7ac9
    mov bx, word [data_0e12]         ; 0x7acb
    mov ax, word [bx + si + 0x3c0]   ; 0x7acf
    mov word [bp - 0x0002], ax       ; 0x7ad3
    mov ax, 1                        ; 0x7ad6
    push ax                          ; 0x7ad9
    mov ax, 2                        ; 0x7ada
    push ax                          ; 0x7add
    push word [bp - 0x0002]          ; 0x7ade
    call ds_dispatch_ed3a            ; 0x7ae1
    add sp, byte 6                   ; 0x7ae4
    cmp ax, strict word 1            ; 0x7ae7
    jne short @..api_idx_0002_14.l1  ; 0x7aea
    mov ax, 2                        ; 0x7aec
    push ax                          ; 0x7aef
    mov ax, 0                        ; 0x7af0
    push ax                          ; 0x7af3
    push word [bp - 0x0002]          ; 0x7af4
    call ds_dispatch_ed3a            ; 0x7af7
    add sp, byte 6                   ; 0x7afa
    mov word [data_8f24], ax         ; 0x7afd
    cmp ax, word [data_82ee]         ; 0x7b00
    je short @..api_idx_0002_14.l1   ; 0x7b04
    ret                              ; 0x7b06
