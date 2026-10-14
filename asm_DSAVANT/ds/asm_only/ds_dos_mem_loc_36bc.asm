; auto-generated
; asm only
ds_dos_mem_loc_36bc:
    push bp                          ; 0x36bc
    mov bp, sp                       ; 0x36bd
    cld                              ; 0x36bf
    push word [bp + 0x6]             ; 0x36c0
    call ds_leaf_loc_36d0            ; 0x36c3
    add sp, byte 2                   ; 0x36c6
    mov sp, bp                       ; 0x36c9
    pop bp                           ; 0x36cb
    retf                             ; 0x36cc
