aztec_strcmp:
    push bp                          ; 0xae76
    mov bp, sp                       ; 0xae77
    cld                              ; 0xae79
    push si                          ; 0xae7a
    push di                          ; 0xae7b
    mov si, word [bp + 0x4]          ; 0xae7c
    mov di, ds                       ; 0xae7f
    mov es, di                       ; 0xae81
    mov di, word [bp + 0x6]          ; 0xae83
@..aztec_strcmp.l1:
    lodsw                            ; 0xae86
    scasw                            ; 0xae87
    jne short loc_aec9               ; 0xae88
    test al, al                      ; 0xae8a
    je short loc_aec3                ; 0xae8c
    test ah, ah                      ; 0xae8e
    jne short @..aztec_strcmp.l1     ; 0xae90
    jmp short loc_aec3               ; 0xae92
