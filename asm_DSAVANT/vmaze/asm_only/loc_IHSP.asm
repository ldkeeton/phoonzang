; auto-generated
; asm only
loc_IHSP:
    sti                              ; 0xab84
    db 0x6d, 0xfb, 0x76, 0xfb, 0x90, 0xfb, 0x99, 0xfb
@..loc_GUUT.l3:
    cmp ax, strict word 8            ; 0xab8d
    jae short @..loc_GUUT.l4         ; 0xab90
    xchg bx, ax                      ; 0xab92
    shl bx, 1                        ; 0xab93
    jmp [cs:bx - 0x043c]             ; 0xab95
@..loc_GUUT.l4:
    ret                              ; 0xab9a
