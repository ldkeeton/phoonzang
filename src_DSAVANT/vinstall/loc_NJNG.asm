; auto-generated
loc_NJNG:
    push bp                          ; 0x2908
    mov bp, sp                       ; 0x2909
    lea ax, word [bp + 6]            ; 0x290b
    push ax                          ; 0x290e
    push word [bp + 4]               ; 0x290f
    call aztec_fexecv                ; 0x2912
    add sp, byte 4                   ; 0x2915
    mov sp, bp                       ; 0x2918
    pop bp                           ; 0x291a
    ret                              ; 0x291b
