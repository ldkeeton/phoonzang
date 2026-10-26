; auto-generated
loc_NGTJ:
    mov ax, 0                        ; 0x4b5e
    call aztec_csav                  ; 0x4b61
    cmp word [bp + 6], byte 0        ; 0x4b64
    jge short @..loc_NGTJ.l2         ; 0x4b68
    mov bx, word [bp + 4]            ; 0x4b6a
    mov al, byte [bx + bss_5978]     ; 0x4b6d
    cbw                              ; 0x4b71
    cmp ax, word [bp + 8]            ; 0x4b72
    jle short @..loc_NGTJ.l1         ; 0x4b75
    dec byte [bx + bss_5978]         ; 0x4b77
@..loc_NGTJ.l1:
    jmp short @..loc_NGTJ.l3         ; 0x4b7b
@..loc_NGTJ.l2:
    cmp word [bp + 6], byte 0        ; 0x4b7d
    jle short @..loc_NGTJ.l3         ; 0x4b81
    mov bx, word [bp + 4]            ; 0x4b83
    mov al, byte [bx + bss_5978]     ; 0x4b86
    cbw                              ; 0x4b8a
    cmp ax, word [bp + 8]            ; 0x4b8b
    jge short @..loc_NGTJ.l3         ; 0x4b8e
    inc byte [bx + bss_5978]         ; 0x4b90
@..loc_NGTJ.l3:
    ret                              ; 0x4b94
