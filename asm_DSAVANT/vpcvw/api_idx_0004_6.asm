api_idx_0004_6:
    mov ax, 0xfffc                   ; 0x3aac
    call ds_dispatch_f40b            ; 0x3aaf
    cmp word [data_9566], byte 5     ; 0x3ab2
    jle short @..api_idx_0004_6.l1   ; 0x3ab7
    call math_loc_3a6a               ; 0x3ab9
@..api_idx_0004_6.l1:
    mov bx, word [bp + 0x4]          ; 0x3abc
    cmp byte [bx], 0                 ; 0x3abf
    jne short @..api_idx_0004_6.l2   ; 0x3ac2
    inc word [data_9566]             ; 0x3ac4
    ret                              ; 0x3ac8
