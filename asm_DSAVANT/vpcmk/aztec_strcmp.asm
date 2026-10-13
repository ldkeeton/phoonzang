; auto-generated
aztec_strcmp:
    push bp                          ; 0x6fca
    mov bp, sp                       ; 0x6fcb
    cld                              ; 0x6fcd
    push si                          ; 0x6fce
    push di                          ; 0x6fcf
    mov si, word [bp + 0x4]          ; 0x6fd0
    mov di, ds                       ; 0x6fd3
    mov es, di                       ; 0x6fd5
    mov di, word [bp + 0x6]          ; 0x6fd7
@..aztec_strcmp.l1:
    lodsw                            ; 0x6fda
    scasw                            ; 0x6fdb
    jne short loc_701d               ; 0x6fdc
    test al, al                      ; 0x6fde
    je short loc_7017                ; 0x6fe0
    test ah, ah                      ; 0x6fe2
    jne short @..aztec_strcmp.l1     ; 0x6fe4
    jmp short loc_7017               ; 0x6fe6
