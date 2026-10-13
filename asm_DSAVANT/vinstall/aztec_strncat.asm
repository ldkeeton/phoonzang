; auto-generated
aztec_strncat:
    push bp                          ; 0x2aae
    mov bp, sp                       ; 0x2aaf
    mov dx, word [bp + 0x8]          ; 0x2ab1
@..aztec_strncat.catcommon:
    cld                              ; 0x2ab4
    push si                          ; 0x2ab5
    push di                          ; 0x2ab6
    mov di, ds                       ; 0x2ab7
    mov es, di                       ; 0x2ab9
    mov di, word [bp + 0x4]          ; 0x2abb
    sub ax, ax                       ; 0x2abe
    mov cx, 0x7fff                   ; 0x2ac0
    repne scasb ; find end of destination string ; 0x2ac3
    dec di ; backup to null byte ; 0x2ac5
    mov si, word [bp + 0x6]          ; 0x2ac6
    mov cx, dx                       ; 0x2ac9
@..aztec_strncat.cpyloop:
    lodsb                            ; 0x2acb
    stosb                            ; 0x2acc
    test al, al                      ; 0x2acd
    loopne @..aztec_strncat.cpyloop  ; 0x2acf
    je short @..aztec_strncat.nul_ok ; 0x2ad1
    sub al, al ; guarantee that string is nul terminated ; 0x2ad3
    stosb                            ; 0x2ad5
@..aztec_strncat.nul_ok:
    pop di                           ; 0x2ad6
    pop si                           ; 0x2ad7
    mov ax, word [bp + 0x4]          ; 0x2ad8
    pop bp                           ; 0x2adb
    ret                              ; 0x2adc
