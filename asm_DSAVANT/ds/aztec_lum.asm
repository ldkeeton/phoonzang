    call aztec_lud                   ; 0x4c38
    db 0x8b, 0xc1 ; mov ax, cx
    db 0x8b, 0xd3 ; mov dx, bx
    ret                              ; 0x4c3f
