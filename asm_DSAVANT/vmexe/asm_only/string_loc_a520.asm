; auto-generated
; asm only
string_loc_a520:
    push bp                          ; 0xa520
    mov bp, sp                       ; 0xa521
    push si                          ; 0xa523
    push di                          ; 0xa524
    mov di, ds                       ; 0xa525
    mov es, di                       ; 0xa527
    mov si, word [bp + 0x4]          ; 0xa529
    mov di, word [bp + 0x6]          ; 0xa52c
    mov cx, word [bp + 0x8]          ; 0xa52f
    jcxz @..string_loc_a520.l2       ; 0xa532
    cmp di, si                       ; 0xa534
    je short @..string_loc_a520.l2   ; 0xa536
@..string_loc_a520.l1:
    mov al, byte [es:di]             ; 0xa538
    xchg byte [si], al               ; 0xa53b
    stosb                            ; 0xa53d
    inc si                           ; 0xa53e
    loop @..string_loc_a520.l1       ; 0xa53f
@..string_loc_a520.l2:
    pop di                           ; 0xa541
    pop si                           ; 0xa542
    pop bp                           ; 0xa543
    ret                              ; 0xa544
