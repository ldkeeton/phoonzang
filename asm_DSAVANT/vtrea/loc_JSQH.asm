; auto-generated
loc_JSQH:
    cmp ax, strict word 5            ; 0x51c6
    jae short @..loc_JSQH.l1         ; 0x51c9
    xchg bx, ax                      ; 0x51cb
    shl bx, 1                        ; 0x51cc
    jmp [cs:bx - 0x5dfd]             ; 0x51ce
@..loc_JSQH.l1:
    jmp near loc_MKIN                ; 0x51d3
    db 0xc3
