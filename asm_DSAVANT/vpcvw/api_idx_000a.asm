api_idx_000a:
    mov ax, 0xfff6                   ; 0x0f9e
    call ds_dispatch_f40b            ; 0x0fa1
    mov ax, 0                        ; 0x0fa4
    push ax                          ; 0x0fa7
    push ax                          ; 0x0fa8
    push word [data_940c]            ; 0x0fa9
    push word [data_940a]            ; 0x0fad
    call ds_dispatch_e942            ; 0x0fb1
    add sp, byte 8                   ; 0x0fb4
    cmp word [data_942e], byte 0     ; 0x0fb7
    jle short @..api_idx_000a.l1     ; 0x0fbc
    mov byte [bp - 0x000a], 1        ; 0x0fbe
    mov byte [bp - 0x0009], 0        ; 0x0fc2
    mov ax, 0                        ; 0x0fc6
    push ax                          ; 0x0fc9
    push ax                          ; 0x0fca
    lea ax, word [bp - 0x000a]       ; 0x0fcb
    push ax                          ; 0x0fce
    mov ax, 0                        ; 0x0fcf
    push ax                          ; 0x0fd2
    mov ax, 0xc7                     ; 0x0fd3
    push ax                          ; 0x0fd6
    mov ax, 0x41                     ; 0x0fd7
    sub ax, word [data_942e]         ; 0x0fda
    push ax                          ; 0x0fde
    mov ax, 0x13f                    ; 0x0fdf
    push ax                          ; 0x0fe2
    mov ax, 0                        ; 0x0fe3
    push ax                          ; 0x0fe6
    mov ax, 0x2d                     ; 0x0fe7
    push ax                          ; 0x0fea
    mov ax, 0x5a                     ; 0x0feb
    push ax                          ; 0x0fee
    mov ax, 0xf                      ; 0x0fef
    push ax                          ; 0x0ff2
    call ds_dispatch_efd1            ; 0x0ff3
    add sp, byte 0x16                ; 0x0ff6
@..api_idx_000a.l1:
    mov ax, 5                        ; 0x0ff9
    cmp word [data_9430], byte 0     ; 0x0ffc
    jne short @..api_idx_000a.l2     ; 0x1001
    mov ax, word [bp + 0x4]          ; 0x1003
    inc ax                           ; 0x1006
    inc ax                           ; 0x1007
@..api_idx_000a.l2:
    mov byte [bp - 0x000a], al       ; 0x1008
    mov byte [bp - 0x0009], 0        ; 0x100b
    mov ax, 0                        ; 0x100f
    push ax                          ; 0x1012
    push ax                          ; 0x1013
    lea ax, word [bp - 0x000a]       ; 0x1014
    push ax                          ; 0x1017
    mov ax, 0                        ; 0x1018
    push ax                          ; 0x101b
    mov ax, 0xc7                     ; 0x101c
    push ax                          ; 0x101f
    mov ax, 0                        ; 0x1020
    push ax                          ; 0x1023
    mov ax, 0x13f                    ; 0x1024
    push ax                          ; 0x1027
    mov ax, 0                        ; 0x1028
    push ax                          ; 0x102b
    mov ax, 0x14                     ; 0x102c
    sub ax, word [data_942e]         ; 0x102f
    add ax, strict word 0x19         ; 0x1033
    push ax                          ; 0x1036
    mov ax, 0x5a                     ; 0x1037
    push ax                          ; 0x103a
    mov ax, 0xf                      ; 0x103b
    push ax                          ; 0x103e
    call ds_dispatch_efd1            ; 0x103f
    add sp, byte 0x16                ; 0x1042
    ret                              ; 0x1045
