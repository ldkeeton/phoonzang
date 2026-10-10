aztec_creat:
    push bp                          ; 0x336a
    mov bp, sp                       ; 0x336b
    push word [bp + 0x6]             ; 0x336d
    mov ax, 0x301                    ; 0x3370
    push ax                          ; 0x3373
    push word [bp + 0x4]             ; 0x3374
    call aztec_open                  ; 0x3377
    add sp, byte 6                   ; 0x337a
    mov sp, bp                       ; 0x337d
    pop bp                           ; 0x337f
    ret                              ; 0x3380
