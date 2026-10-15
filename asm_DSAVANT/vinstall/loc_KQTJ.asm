; auto-generated
loc_KQTJ:
    push bp                          ; 0x380b
    mov bp, sp                       ; 0x380c
    call [dseg_2500]                 ; 0x380e
    push word [bp + 0x4]             ; 0x3812
    call dos_proc_loc_MNNL           ; 0x3815
    pop cx                           ; 0x3818
    mov sp, bp                       ; 0x3819
    pop bp                           ; 0x381b
    ret                              ; 0x381c
