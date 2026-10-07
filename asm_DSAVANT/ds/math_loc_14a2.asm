math_loc_14a2:
    mov bp, 0xaa12                   ; 0x14a2
    adc bp, dx                       ; 0x14a5
    adc ax, si                       ; 0x14a7
    adc word [bp + di], bp           ; 0x14a9
    adc bh, byte [data_7812]         ; 0x14ab
    adc bh, byte [di]                ; 0x14af
    pop es                           ; 0x14b1
    add byte [bp + di + 0x8], dh     ; 0x14b2
    xchg bx, ax                      ; 0x14b5
    shl bx, 1                        ; 0x14b6
    jmp [cs:bx + 0x12a2]             ; 0x14b8
