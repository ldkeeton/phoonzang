ds_leaf_loc_2cec:
    mov ax, word [bss_82e8]          ; 0x2cec
    add ax, strict word 9            ; 0x2cef
    mov word [bp - 0x0004], ax       ; 0x2cf2
    jmp near ds_loc_2d69             ; 0x2cf5
