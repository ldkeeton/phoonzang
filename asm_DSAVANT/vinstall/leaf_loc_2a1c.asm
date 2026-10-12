leaf_loc_2a1c:
    push bp                          ; 0x2a1c
    mov bp, sp                       ; 0x2a1d
    mov ah, 0x3b                     ; 0x2a1f
    jmp short loc_2a03               ; 0x2a21
cseg_2a23:
    add byte [bx + si], al           ; 0x2a23
cseg_2a25:
    add byte [bx + si], al           ; 0x2a25
