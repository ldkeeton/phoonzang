api_idx_00a8:
    mov ax, 0xff58                   ; 0x041d
    call ds_dispatch_f40b            ; 0x0420
    mov ax, word [bp + 0x4]          ; 0x0423
    shl ax, 1                        ; 0x0426
    mov bx, ax                       ; 0x0428
    mov bx, word [bx - 0x7b70]       ; 0x042a
    cmp byte [bx + 0xe5], data_0002  ; 0x042e
    jge short @..api_idx_00a8.l1     ; 0x0433
    mov ax, 0xffff                   ; 0x0435
    ret                              ; 0x0438
