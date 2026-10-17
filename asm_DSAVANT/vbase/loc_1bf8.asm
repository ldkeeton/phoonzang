; auto-generated
loc_1bf8:
    cmp ax, strict word 0x4f         ; 0x1bf8
    jae short loc_1c05               ; 0x1bfb
    xchg bx, ax                      ; 0x1bfd
    shl bx, 1                        ; 0x1bfe
    jmp [cs:bx + 0x6ba1]             ; 0x1c00
loc_1c05:
    mov ax, 0xffff                   ; 0x1c05
    ret                              ; 0x1c08
