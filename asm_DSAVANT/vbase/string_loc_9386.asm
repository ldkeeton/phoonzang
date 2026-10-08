string_loc_9386:
    push bp                          ; 0x9386
    mov bp, sp                       ; 0x9387
    cld                              ; 0x9389
    push si                          ; 0x938a
    push di                          ; 0x938b
    mov si, word [bp + 0x4]          ; 0x938c
    mov di, ds                       ; 0x938f
    mov es, di                       ; 0x9391
    mov di, word [bp + 0x6]          ; 0x9393
@..string_loc_9386.l1:
    lodsw                            ; 0x9396
    scasw                            ; 0x9397
    jne short @..string_loc_9386.l4  ; 0x9398
    test al, al                      ; 0x939a
    je short @..string_loc_9386.l2   ; 0x939c
    test ah, ah                      ; 0x939e
    jne short @..string_loc_9386.l1  ; 0x93a0
    jmp short @..string_loc_9386.l2  ; 0x93a2

    db 0x55, 0x8b, 0xec, 0x8b, 0x4e, 0x08, 0x8b, 0xd1, 0xd1, 0xe9, 0xfc, 0x56, 0x57, 0x8b, 0x76, 0x04
    db 0x8c, 0xdf, 0x8e, 0xc7, 0x8b, 0x7e, 0x06, 0xe3, 0x0e, 0xad, 0xaf, 0x75, 0x18, 0x84, 0xc0, 0x74
    db 0x0e, 0x84, 0xe4, 0xe0, 0xf4, 0x74, 0x08, 0xf6, 0xc2, 0x01, 0x74, 0x03, 0xa6, 0x75, 0x13

@..string_loc_9386.l2:
    sub ax, ax                       ; 0x93d3
@..string_loc_9386.l3:
    pop di                           ; 0x93d5
    pop si                           ; 0x93d6
    pop bp                           ; 0x93d7
    ret                              ; 0x93d8
@..string_loc_9386.l4:
    sub di, byte 2                   ; 0x93d9
    scasb                            ; 0x93dc
    jne short @..string_loc_9386.l5  ; 0x93dd
    test al, al                      ; 0x93df
    je short @..string_loc_9386.l2   ; 0x93e1
    mov al, ah                       ; 0x93e3
    scasb                            ; 0x93e5
@..string_loc_9386.l5:
    sbb ax, ax                       ; 0x93e6
    js short @..string_loc_9386.l3   ; 0x93e8
    inc ax                           ; 0x93ea
    jmp short @..string_loc_9386.l3  ; 0x93eb
