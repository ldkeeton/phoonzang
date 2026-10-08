string_loc_6fca:
    push bp                          ; 0x6fca
    mov bp, sp                       ; 0x6fcb
    cld                              ; 0x6fcd
    push si                          ; 0x6fce
    push di                          ; 0x6fcf
    mov si, word [bp + 0x4]          ; 0x6fd0
    mov di, ds                       ; 0x6fd3
    mov es, di                       ; 0x6fd5
    mov di, word [bp + 0x6]          ; 0x6fd7
@..string_loc_6fca.l1:
    lodsw                            ; 0x6fda
    scasw                            ; 0x6fdb
    jne short @..string_loc_6fca.l4  ; 0x6fdc
    test al, al                      ; 0x6fde
    je short @..string_loc_6fca.l2   ; 0x6fe0
    test ah, ah                      ; 0x6fe2
    jne short @..string_loc_6fca.l1  ; 0x6fe4
    jmp short @..string_loc_6fca.l2  ; 0x6fe6

    db 0x55, 0x8b, 0xec, 0x8b, 0x4e, 0x08, 0x8b, 0xd1, 0xd1, 0xe9, 0xfc, 0x56, 0x57, 0x8b, 0x76, 0x04
    db 0x8c, 0xdf, 0x8e, 0xc7, 0x8b, 0x7e, 0x06, 0xe3, 0x0e, 0xad, 0xaf, 0x75, 0x18, 0x84, 0xc0, 0x74
    db 0x0e, 0x84, 0xe4, 0xe0, 0xf4, 0x74, 0x08, 0xf6, 0xc2, 0x01, 0x74, 0x03, 0xa6, 0x75, 0x13

@..string_loc_6fca.l2:
    sub ax, ax                       ; 0x7017
@..string_loc_6fca.l3:
    pop di                           ; 0x7019
    pop si                           ; 0x701a
    pop bp                           ; 0x701b
    ret                              ; 0x701c
@..string_loc_6fca.l4:
    sub di, byte 2                   ; 0x701d
    scasb                            ; 0x7020
    jne short @..string_loc_6fca.l5  ; 0x7021
    test al, al                      ; 0x7023
    je short @..string_loc_6fca.l2   ; 0x7025
    mov al, ah                       ; 0x7027
    scasb                            ; 0x7029
@..string_loc_6fca.l5:
    sbb ax, ax                       ; 0x702a
    js short @..string_loc_6fca.l3   ; 0x702c
    inc ax                           ; 0x702e
    jmp short @..string_loc_6fca.l3  ; 0x702f
