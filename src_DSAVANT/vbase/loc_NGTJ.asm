; auto-generated
loc_NGTJ:
    mov ax, 0                        ; 0x4b5e
    call aztec_csav                  ; 0x4b61
    cmp word [bp + 6], byte 0        ; 0x4b64
    jge short .forward2              ; 0x4b68
    mov bx, word [bp + 4]            ; 0x4b6a
    mov al, byte [bx + palette_base_setting] ; 0x4b6d
    cbw                              ; 0x4b71
    cmp ax, word [bp + 8]            ; 0x4b72
    jle short .forward1              ; 0x4b75
    dec byte [bx + palette_base_setting] ; 0x4b77
.forward1:
    jmp short .return1               ; 0x4b7b
.forward2:
    cmp word [bp + 6], byte 0        ; 0x4b7d
    jle short .return1               ; 0x4b81
    mov bx, word [bp + 4]            ; 0x4b83
    mov al, byte [bx + palette_base_setting] ; 0x4b86
    cbw                              ; 0x4b8a
    cmp ax, word [bp + 8]            ; 0x4b8b
    jge short .return1               ; 0x4b8e
    inc byte [bx + palette_base_setting] ; 0x4b90
.return1:
    ret                              ; 0x4b94
