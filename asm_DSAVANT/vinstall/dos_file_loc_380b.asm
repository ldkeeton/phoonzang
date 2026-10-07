dos_file_loc_380b:
    push bp                          ; 0x380b
    mov bp, sp                       ; 0x380c
    call [0x2500]                    ; 0x380e
    push word [bp + 0x4]             ; 0x3812
    call dos_proc_loc_3716           ; 0x3815
    pop cx                           ; 0x3818
    mov sp, bp                       ; 0x3819
    pop bp                           ; 0x381b
    ret                              ; 0x381c
