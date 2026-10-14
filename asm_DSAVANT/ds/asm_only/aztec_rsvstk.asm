; auto-generated
; asm only
aztec_rsvstk:
    push bp ; rsvstk(size):		set safety margin for stack / this will make sure that at least size / bytes of st... ; 0x5248
    mov bp, sp                       ; 0x5249
    mov ax, sp                       ; 0x524b
    sub ax, word [bp + 0x4]          ; 0x524d
    mov word [dseg_0cd6], ax         ; 0x5250
    pop bp                           ; 0x5253
    ret                              ; 0x5254
