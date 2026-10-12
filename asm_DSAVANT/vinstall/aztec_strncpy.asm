aztec_strncpy:
    push bp                          ; 0x2b09
    mov bp, sp                       ; 0x2b0a
    cld                              ; 0x2b0c
    push si                          ; 0x2b0d
    push di                          ; 0x2b0e
    mov cx, word [bp + 0x8]          ; 0x2b0f
    mov di, ds                       ; 0x2b12
    mov es, di                       ; 0x2b14
    mov di, word [bp + 0x4]          ; 0x2b16
    mov si, word [bp + 0x6]          ; 0x2b19
    jcxz @..aztec_strncpy.cpydone    ; 0x2b1c
@..aztec_strncpy.cpyloop:
    lodsb                            ; 0x2b1e
    test al, al                      ; 0x2b1f
    je short @..aztec_strncpy.zerofill ; 0x2b21
    stosb                            ; 0x2b23
    loop @..aztec_strncpy.cpyloop    ; 0x2b24
    jmp short @..aztec_strncpy.cpydone ; 0x2b26
@..aztec_strncpy.zerofill:
    rep stosb                        ; 0x2b28
@..aztec_strncpy.cpydone:
    pop di                           ; 0x2b2a
    pop si                           ; 0x2b2b
    mov ax, word [bp + 0x4]          ; 0x2b2c
    pop bp                           ; 0x2b2f
    ret                              ; 0x2b30
