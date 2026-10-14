; auto-generated
ds_string_loc_SPRI:
    push bp                          ; 0x44ff
    mov bp, sp                       ; 0x4500
    mov al, byte [bp + 0x4]          ; 0x4502
    mov bx, word [bss_0cfc]          ; 0x4505
    inc word [bss_0cfc]              ; 0x4509
    mov byte [bx], al                ; 0x450d
    cbw                              ; 0x450f
    and ax, 0xff                     ; 0x4510
    mov sp, bp                       ; 0x4513
    pop bp                           ; 0x4515
    ret                              ; 0x4516
