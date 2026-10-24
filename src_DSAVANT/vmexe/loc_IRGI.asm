; auto-generated
loc_IRGI:
    mov ax, 0xfd8a                   ; 0x9d8d
    call aztec_csav                  ; 0x9d90
    mov ax, 0x248                    ; 0x9d93
    push ax                          ; 0x9d96
    mov ax, 0x248                    ; 0x9d97
    imul word [bp + 0x4]             ; 0x9d9a
    add ax, party_records            ; 0x9d9d
    push ax                          ; 0x9da0
    mov ax, 0x248                    ; 0x9da1
    imul word [bp + 0x6]             ; 0x9da4
    add ax, party_records            ; 0x9da7
    push ax                          ; 0x9daa
    call aztec_swapmem               ; 0x9dab
    add sp, byte 6                   ; 0x9dae
    mov ax, 0x2c                     ; 0x9db1
    push ax                          ; 0x9db4
    mov ax, 0x2c                     ; 0x9db5
    imul word [bp + 0x4]             ; 0x9db8
    mov cx, ax                       ; 0x9dbb
    mov ax, word [party_char]        ; 0x9dbd
    add ax, cx                       ; 0x9dc0
    push ax                          ; 0x9dc2
    mov ax, 0x2c                     ; 0x9dc3
    imul word [bp + 0x6]             ; 0x9dc6
    mov cx, ax                       ; 0x9dc9
    mov ax, word [party_char]        ; 0x9dcb
    add ax, cx                       ; 0x9dce
    push ax                          ; 0x9dd0
    call aztec_swapmem               ; 0x9dd1
    add sp, byte 6                   ; 0x9dd4
    mov ax, word [bp + 0x6]          ; 0x9dd7
    shl ax, 1                        ; 0x9dda
    mov bx, ax                       ; 0x9ddc
    mov ax, word [bx + bss_8af0 + 0x2] ; 0x9dde
    mov word [bp - 0x0276], ax       ; 0x9de2
    mov ax, word [bp + 0x4]          ; 0x9de6
    shl ax, 1                        ; 0x9de9
    mov bx, ax                       ; 0x9deb
    mov ax, word [bx + bss_8af0 + 0x2] ; 0x9ded
    mov cx, word [bp + 0x6]          ; 0x9df1
    shl cx, 1                        ; 0x9df4
    mov bx, cx                       ; 0x9df6
    mov word [bx + bss_8af0 + 0x2], ax ; 0x9df8
    mov ax, word [bp - 0x0276]       ; 0x9dfc
    mov cx, word [bp + 0x4]          ; 0x9e00
    shl cx, 1                        ; 0x9e03
    mov bx, cx                       ; 0x9e05
    mov word [bx + bss_8af0 + 0x2], ax ; 0x9e07
    mov ax, word [bp + 0x6]          ; 0x9e0b
    shl ax, 1                        ; 0x9e0e
    mov bx, ax                       ; 0x9e10
    mov ax, word [bx + member_state + 0xb92] ; 0x9e12
    mov word [bp - 0x0276], ax       ; 0x9e16
    mov bx, cx                       ; 0x9e1a
    mov ax, word [bx + member_state + 0xb92] ; 0x9e1c
    mov cx, word [bp + 0x6]          ; 0x9e20
    shl cx, 1                        ; 0x9e23
    mov bx, cx                       ; 0x9e25
    mov word [bx + member_state + 0xb92], ax ; 0x9e27
    mov ax, word [bp - 0x0276]       ; 0x9e2b
    mov cx, word [bp + 0x4]          ; 0x9e2f
    shl cx, 1                        ; 0x9e32
    mov bx, cx                       ; 0x9e34
    mov word [bx + member_state + 0xb92], ax ; 0x9e36
    mov ax, 0                        ; 0x9e3a
    push ax                          ; 0x9e3d
    push word [bp + 0x4]             ; 0x9e3e
    call api_idx_0004_MLLS           ; 0x9e41
    add sp, byte 4                   ; 0x9e44
    mov ax, 0                        ; 0x9e47
    push ax                          ; 0x9e4a
    push word [bp + 0x6]             ; 0x9e4b
    call api_idx_0004_MLLS           ; 0x9e4e
    add sp, byte 4                   ; 0x9e51
    mov ax, 6                        ; 0x9e54
    push ax                          ; 0x9e57
    call api_idx_0004_QUPL           ; 0x9e58
    pop cx                           ; 0x9e5b
    ret                              ; 0x9e5c
