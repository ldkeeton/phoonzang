leaf_loc_10a4:
    push bp                          ; 0x10a4
    mov bp, sp                       ; 0x10a5
    mov ax, word [bp + 0x4]          ; 0x10a7
    jmp near @..leaf_loc_10a4.l1     ; 0x10aa
    mov ax, 0x166c                   ; 0x10ad
    push ax                          ; 0x10b0
    push word [bp + 0x6]             ; 0x10b1
    call strlen_2                    ; 0x10b4
    add sp, byte 4                   ; 0x10b7
    mov ax, 0x166f                   ; 0x10ba
    push ax                          ; 0x10bd
    push word [bp + 0x8]             ; 0x10be
    call strlen_2                    ; 0x10c1
    add sp, byte 4                   ; 0x10c4
    jmp near @..leaf_loc_10a4.l2     ; 0x10c7
    mov ax, 0x1672                   ; 0x10ca
    push ax                          ; 0x10cd
    push word [bp + 0x6]             ; 0x10ce
    call strlen_2                    ; 0x10d1
    add sp, byte 4                   ; 0x10d4
    mov ax, 0x1675                   ; 0x10d7
    push ax                          ; 0x10da
    push word [bp + 0x8]             ; 0x10db
    call strlen_2                    ; 0x10de
    add sp, byte 4                   ; 0x10e1
    jmp short @..leaf_loc_10a4.l2    ; 0x10e4
    mov ax, 0x1676                   ; 0x10e6
    push ax                          ; 0x10e9
    push word [bp + 0x6]             ; 0x10ea
    call strlen_2                    ; 0x10ed
    add sp, byte 4                   ; 0x10f0
    mov ax, 0x1679                   ; 0x10f3
    push ax                          ; 0x10f6
    push word [bp + 0x8]             ; 0x10f7
    call strlen_2                    ; 0x10fa
    add sp, byte 4                   ; 0x10fd
    jmp short @..leaf_loc_10a4.l2    ; 0x1100
    mov ax, 0x167a                   ; 0x1102
    push ax                          ; 0x1105
    push word [bp + 0x6]             ; 0x1106
    call strlen_2                    ; 0x1109
    add sp, byte 4                   ; 0x110c
    mov ax, 0x167d                   ; 0x110f
    push ax                          ; 0x1112
    push word [bp + 0x8]             ; 0x1113
    call strlen_2                    ; 0x1116
    add sp, byte 4                   ; 0x1119
    jmp short @..leaf_loc_10a4.l2    ; 0x111c
    mov ax, 0x167e                   ; 0x111e
    push ax                          ; 0x1121
    push word [bp + 0x6]             ; 0x1122
    call strlen_2                    ; 0x1125
    add sp, byte 4                   ; 0x1128
    mov ax, 0x1681                   ; 0x112b
    push ax                          ; 0x112e
    push word [bp + 0x8]             ; 0x112f
    call strlen_2                    ; 0x1132
    add sp, byte 4                   ; 0x1135
    jmp short @..leaf_loc_10a4.l2    ; 0x1138
    lodsw                            ; 0x113a
    push cs                          ; 0x113b
    retf 0xe60e                      ; 0x113c
