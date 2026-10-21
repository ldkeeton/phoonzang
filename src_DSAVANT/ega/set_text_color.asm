; auto-generated
set_text_color:
    push bp                          ; 0x0447
    mov bp, sp                       ; 0x0448
    push es                          ; 0x044a
    mov ax, ds                       ; 0x044b
    mov es, ax                       ; 0x044d
    mov ax, word [bp + 0xc]          ; 0x044f
    mov word [cs:cseg_0193 - IMAGE_BASE], ax ; 0x0452
    mov ax, word [bp + 0xe]          ; 0x0456
    mov word [cs:cseg_0191 - IMAGE_BASE], ax ; 0x0459
    pop es                           ; 0x045d
    mov sp, bp                       ; 0x045e
    pop bp                           ; 0x0460
    ret                              ; 0x0461
