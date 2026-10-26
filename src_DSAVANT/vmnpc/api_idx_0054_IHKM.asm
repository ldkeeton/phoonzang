; auto-generated
api_idx_0054_IHKM:
    mov ax, 0xffac                   ; 0x5d93
    call aztec_csav                  ; 0x5d96
    mov ax, 3                        ; 0x5d99
    push ax                          ; 0x5d9c
    call redraw_area_set             ; 0x5d9d
    pop cx                           ; 0x5da0
    call api_idx_0054_UKJH           ; 0x5da1
    mov ax, 1                        ; 0x5da4
    push ax                          ; 0x5da7
    mov ax, 0x93                     ; 0x5da8
    push ax                          ; 0x5dab
    mov ax, 0xa0                     ; 0x5dac
    push ax                          ; 0x5daf
    push word [bp + 8]               ; 0x5db0
    call loc_VNIO                    ; 0x5db3
    add sp, byte 8                   ; 0x5db6
    lea ax, word [bp - 0x54]         ; 0x5db9
    push ax                          ; 0x5dbc
    mov ax, 0x248                    ; 0x5dbd
    imul word [bp + 4]               ; 0x5dc0
    mov bx, ax                       ; 0x5dc3
    push word [bx + party_records + pc_rec.f_0016] ; 0x5dc5
    push word [bx + party_records + pc_rec.f_0014] ; 0x5dc9
    call format_long_decimal         ; 0x5dcd
    add sp, byte 6                   ; 0x5dd0
    push word [bp + 0xa]             ; 0x5dd3
    lea ax, word [bp - 0x54]         ; 0x5dd6
    push ax                          ; 0x5dd9
    call aztec_strcat                ; 0x5dda
    add sp, byte 4                   ; 0x5ddd
    mov ax, 0xb3                     ; 0x5de0
    push ax                          ; 0x5de3
    mov ax, 0x9a                     ; 0x5de4
    push ax                          ; 0x5de7
    mov ax, 0xa0                     ; 0x5de8
    push ax                          ; 0x5deb
    lea ax, word [bp - 0x54]         ; 0x5dec
    push ax                          ; 0x5def
    call loc_VNIO                    ; 0x5df0
    add sp, byte 8                   ; 0x5df3
    mov word [bp - 2], 0             ; 0x5df6
    mov word [bp - 4], 0             ; 0x5dfb
    jmp short .forward2              ; 0x5e00
.back1:
    mov ax, word [bp - 4]            ; 0x5e02
    shl ax, 1                        ; 0x5e05
    mov si, ax                       ; 0x5e07
    mov bx, word [bp + 0xe]          ; 0x5e09
    cmp word [bx + si], byte 0       ; 0x5e0c
    je short .forward1               ; 0x5e0f
    inc word [bp - 2]                ; 0x5e11
.forward1:
    inc word [bp - 4]                ; 0x5e14
.forward2:
    mov ax, word [bp - 4]            ; 0x5e17
    cmp ax, word [bp + 0xc]          ; 0x5e1a
    jle short .back1                 ; 0x5e1d
    push word [bp + 0xe]             ; 0x5e1f
    mov ax, 1                        ; 0x5e22
    push ax                          ; 0x5e25
    mov ax, 0                        ; 0x5e26
    push ax                          ; 0x5e29
    mov ax, 3                        ; 0x5e2a
    cmp word [bp - 2], byte 5        ; 0x5e2d
    jge short .forward3              ; 0x5e31
    mov ax, 2                        ; 0x5e33
.forward3:
    push ax                          ; 0x5e36
    mov ax, 0xa                      ; 0x5e37
    push ax                          ; 0x5e3a
    mov ax, 0x2a                     ; 0x5e3b
    push ax                          ; 0x5e3e
    mov ax, 6                        ; 0x5e3f
    push ax                          ; 0x5e42
    mov ax, 0xa6                     ; 0x5e43
    push ax                          ; 0x5e46
    mov ax, 0xe7                     ; 0x5e47
    push ax                          ; 0x5e4a
    mov ax, 9                        ; 0x5e4b
    push ax                          ; 0x5e4e
    mov ax, 3                        ; 0x5e4f
    push ax                          ; 0x5e52
    push word [bp + 6]               ; 0x5e53
    call loc_RSHV                    ; 0x5e56
    add sp, byte 0x18                ; 0x5e59
    mov word [bp - 4], ax            ; 0x5e5c
    mov ax, 0                        ; 0x5e5f
    push ax                          ; 0x5e62
    call redraw_area_set             ; 0x5e63
    pop cx                           ; 0x5e66
    mov ax, 1                        ; 0x5e67
    push ax                          ; 0x5e6a
    mov ax, 0x93                     ; 0x5e6b
    push ax                          ; 0x5e6e
    mov ax, 0xa0                     ; 0x5e6f
    push ax                          ; 0x5e72
    push word [bp + 8]               ; 0x5e73
    call loc_VNIO                    ; 0x5e76
    add sp, byte 8                   ; 0x5e79
    mov ax, 0xb3                     ; 0x5e7c
    push ax                          ; 0x5e7f
    mov ax, 0x9a                     ; 0x5e80
    push ax                          ; 0x5e83
    mov ax, 0xa0                     ; 0x5e84
    push ax                          ; 0x5e87
    lea ax, word [bp - 0x54]         ; 0x5e88
    push ax                          ; 0x5e8b
    call loc_VNIO                    ; 0x5e8c
    add sp, byte 8                   ; 0x5e8f
    mov ax, word [bp - 4]            ; 0x5e92
    ret                              ; 0x5e95
