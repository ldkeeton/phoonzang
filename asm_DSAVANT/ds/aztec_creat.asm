aztec_creat:
    push bp                          ; 0x4b39
    mov bp, sp                       ; 0x4b3a
    push word [bp + 0x6]             ; 0x4b3c
    mov ax, 0x301                    ; 0x4b3f
    push ax                          ; 0x4b42
    push word [bp + 0x4]             ; 0x4b43
    call dos_mem_alloc               ; 0x4b46
    add sp, byte 6                   ; 0x4b49
    mov sp, bp                       ; 0x4b4c
    pop bp                           ; 0x4b4e
    ret                              ; 0x4b4f
