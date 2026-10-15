; auto-generated
ds_loc_OMIG:
    push bp                          ; 0x4f73
    mov bp, sp                       ; 0x4f74
    call [dseg_0c9c]                 ; 0x4f76
    push word [bp + 0x4]             ; 0x4f7a
    call ds_dos_proc_loc_TPJT        ; 0x4f7d
    pop cx                           ; 0x4f80
    mov sp, bp                       ; 0x4f81
    pop bp                           ; 0x4f83
    ret                              ; 0x4f84
