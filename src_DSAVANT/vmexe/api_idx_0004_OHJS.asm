; auto-generated
api_idx_0004_OHJS:
    mov ax, 0xfffc                   ; 0x1b45
    call aztec_csav                  ; 0x1b48
    mov word [bp - 2], 0             ; 0x1b4b
    mov word [bp - 4], 0             ; 0x1b50
    cmp word [bp + 4], byte 0        ; 0x1b55
    jle short .forward1              ; 0x1b59
    mov ax, dseg_9098                ; 0x1b5b
    push ax                          ; 0x1b5e
    mov ax, 7                        ; 0x1b5f
    imul word [bp + 4]               ; 0x1b62
    add ax, 0x9b                     ; 0x1b65
    push ax                          ; 0x1b68
    mov ax, 0x13a                    ; 0x1b69
    push ax                          ; 0x1b6c
    mov ax, 0x9c                     ; 0x1b6d
    push ax                          ; 0x1b70
    mov ax, 8                        ; 0x1b71
    push ax                          ; 0x1b74
    call save_screen_area            ; 0x1b75
    add sp, byte 0xa                 ; 0x1b78
    mov word [bp - 2], ax            ; 0x1b7b
.forward1:
    cmp word [bp + 6], byte 4        ; 0x1b7e
    jge short .forward2              ; 0x1b82
    mov ax, dseg_909f                ; 0x1b84
    push ax                          ; 0x1b87
    mov ax, 0xc4                     ; 0x1b88
    push ax                          ; 0x1b8b
    mov ax, 0x13a                    ; 0x1b8c
    push ax                          ; 0x1b8f
    mov ax, 7                        ; 0x1b90
    imul word [bp + 6]               ; 0x1b93
    add ax, 0xa2                     ; 0x1b96
    push ax                          ; 0x1b99
    mov ax, 8                        ; 0x1b9a
    push ax                          ; 0x1b9d
    call save_screen_area            ; 0x1b9e
    add sp, byte 0xa                 ; 0x1ba1
    mov word [bp - 4], ax            ; 0x1ba4
.forward2:
    mov ax, 0                        ; 0x1ba7
    push ax                          ; 0x1baa
    call redraw_glyph_strip          ; 0x1bab
    pop cx                           ; 0x1bae
    cmp word [bp - 4], byte 0        ; 0x1baf
    je short .forward3               ; 0x1bb3
    mov ax, 1                        ; 0x1bb5
    push ax                          ; 0x1bb8
    push word [bp - 4]               ; 0x1bb9
    call restore_saved_screen        ; 0x1bbc
    add sp, byte 4                   ; 0x1bbf
.forward3:
    cmp word [bp - 2], byte 0        ; 0x1bc2
    je short .forward4               ; 0x1bc6
    mov ax, 1                        ; 0x1bc8
    push ax                          ; 0x1bcb
    push word [bp - 2]               ; 0x1bcc
    call restore_saved_screen        ; 0x1bcf
    add sp, byte 4                   ; 0x1bd2
.forward4:
    mov ax, 0xc2                     ; 0x1bd5
    push ax                          ; 0x1bd8
    mov ax, 0x13a                    ; 0x1bd9
    push ax                          ; 0x1bdc
    mov ax, 0x93                     ; 0x1bdd
    push ax                          ; 0x1be0
    mov ax, 8                        ; 0x1be1
    push ax                          ; 0x1be4
    call call_show_area              ; 0x1be5
    add sp, byte 8                   ; 0x1be8
    mov ax, 2                        ; 0x1beb
    push ax                          ; 0x1bee
    call api_idx_0004_QUPL           ; 0x1bef
    pop cx                           ; 0x1bf2
    ret                              ; 0x1bf3
