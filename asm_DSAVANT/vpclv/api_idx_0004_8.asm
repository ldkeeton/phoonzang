api_idx_0004_8:
    mov ax, 0xfffc                   ; 0x4884
    call ds_dispatch_f40b            ; 0x4887
    mov ax, 0x248                    ; 0x488a
    imul word [bp + 0x4]             ; 0x488d
    mov bx, ax                       ; 0x4890
    cmp word [bx + 0x5c18], byte 0x14 ; 0x4892
    jle short @..api_idx_0004_8.l1   ; 0x4897
    ret                              ; 0x4899
