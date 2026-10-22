; auto-generated
api_idx_0040_TGSS:
    mov ax, 0xffc0                   ; 0x1f6f
    call aztec_csav                  ; 0x1f72
    mov ax, 0                        ; 0x1f75
    push ax                          ; 0x1f78
    push word [bp + 0x4]             ; 0x1f79
    lea ax, word [bp - 0x0040]       ; 0x1f7c
    push ax                          ; 0x1f7f
    mov ax, 0                        ; 0x1f80
    push ax                          ; 0x1f83
    call data_record_io              ; 0x1f84
    add sp, byte 8                   ; 0x1f87
    cmp word [bp + 0x6], byte 1      ; 0x1f8a
    jle short @..api_idx_0040_TGSS.l1 ; 0x1f8e
    cmp word [bp + 0x6], byte 0x10   ; 0x1f90
    jge short @..api_idx_0040_TGSS.l1 ; 0x1f94
    mov ax, word [bp + 0x6]          ; 0x1f96
    shl ax, 1                        ; 0x1f99
    shl ax, 1                        ; 0x1f9b
    mov bx, ax                       ; 0x1f9d
    add bx, bp                       ; 0x1f9f
    mov ax, word [bx - 0x0048]       ; 0x1fa1
    mov dx, word [bx - 0x0046]       ; 0x1fa4
    ret                              ; 0x1fa7
@..api_idx_0040_TGSS.l1:
    mov ax, 0                        ; 0x1fa8
    mov dx, 0                        ; 0x1fab
    ret                              ; 0x1fae
