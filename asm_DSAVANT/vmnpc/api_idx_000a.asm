api_idx_000a:
    mov ax, 0xfff6                   ; 0x0ab2
    db 0xe8, 0x53, 0xe9 ; call 0xf40b
    mov ax, 0                        ; 0x0ab8
    push ax                          ; 0x0abb
    push word [data_8d10]            ; 0x0abc
    push word [data_8d0e]            ; 0x0ac0
    call 0xe94f                      ; 0x0ac4
    add sp, byte 6                   ; 0x0ac7
    mov ax, 0                        ; 0x0aca
    push ax                          ; 0x0acd
    push word [data_8d0c]            ; 0x0ace
    push word [0x8d0a]               ; 0x0ad2
    db 0xe8, 0x76, 0xde ; call 0xe94f
    add sp, byte 6                   ; 0x0ad9
    mov byte [bp - 0x000a], 1        ; 0x0adc
    mov byte [bp - 0x0009], 0        ; 0x0ae0
    mov ax, 0                        ; 0x0ae4
    push ax                          ; 0x0ae7
    push ax                          ; 0x0ae8
    lea ax, word [bp - 0x000a]       ; 0x0ae9
    push ax                          ; 0x0aec
    mov ax, 0                        ; 0x0aed
    push ax                          ; 0x0af0
    mov ax, 0xc7                     ; 0x0af1
    push ax                          ; 0x0af4
    mov ax, 0                        ; 0x0af5
    push ax                          ; 0x0af8
    mov ax, 0x13f                    ; 0x0af9
    push ax                          ; 0x0afc
    mov ax, 0                        ; 0x0afd
    push ax                          ; 0x0b00
    mov ax, 0x9a                     ; 0x0b01
    push ax                          ; 0x0b04
    mov ax, 0x37                     ; 0x0b05
    push ax                          ; 0x0b08
    mov ax, api_idx_0008             ; 0x0b09
    push ax                          ; 0x0b0c
    db 0xe8, 0xc1, 0xe4 ; call 0xefd1
    add sp, byte 0x16                ; 0x0b10
    cmp word [bp + 0x4], byte 0      ; 0x0b13
    je short @..api_idx_000a.l1      ; 0x0b17
    mov ax, 0xc2                     ; 0x0b19
    push ax                          ; 0x0b1c
    mov ax, 0x13a                    ; 0x0b1d
    push ax                          ; 0x0b20
    mov ax, 0x93                     ; 0x0b21
    push ax                          ; 0x0b24
    mov ax, 8                        ; 0x0b25
    push ax                          ; 0x0b28
    call 0xe8da                      ; 0x0b29
    add sp, byte 8                   ; 0x0b2c
@..api_idx_000a.l1:
    ret                              ; 0x0b2f
loc_0b30:
    mov ax, 0                        ; 0x0b30
    db 0xe8, 0xd5, 0xe8 ; call 0xf40b
    mov ax, 0                        ; 0x0b36
    push ax                          ; 0x0b39
    push word [bp + 0xa]             ; 0x0b3a
    call 0xe823                      ; 0x0b3d
    add sp, byte 4                   ; 0x0b40
    push word [bp + 0x8]             ; 0x0b43
    push word [bp + 0x4]             ; 0x0b46
    call 0xfa90                      ; 0x0b49
    pop cx                           ; 0x0b4c
    mov cx, 6                        ; 0x0b4d
    imul cx                          ; 0x0b50
    mov cx, data_0002                ; 0x0b52
    cwd                              ; 0x0b55
    idiv cx                          ; 0x0b56
    mov cx, ax                       ; 0x0b58
    mov ax, word [bp + 0x6]          ; 0x0b5a
    sub ax, cx                       ; 0x0b5d
    push ax                          ; 0x0b5f
    call 0xe809                      ; 0x0b60
    add sp, byte 4                   ; 0x0b63
    mov ax, 0                        ; 0x0b66
    push ax                          ; 0x0b69
    push word [bp + 0x4]             ; 0x0b6a
    call 0xe84e                      ; 0x0b6d
    add sp, byte 4                   ; 0x0b70
    ret                              ; 0x0b73
