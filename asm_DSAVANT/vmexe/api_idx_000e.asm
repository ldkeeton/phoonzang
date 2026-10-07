api_idx_000e:
    mov ax, 0xfff2                   ; 0x0656
    call ds_dispatch_f40b            ; 0x0659
    mov bx, word [bp + 0xe]          ; 0x065c
    mov byte [bx], 0                 ; 0x065f
    mov ax, word [bp + 0x4]          ; 0x0662
    shl ax, 1                        ; 0x0665
    mov bx, ax                       ; 0x0667
    mov bx, word [bx - 0x7b7e]       ; 0x0669
    cmp byte [bx + 0x19f], 0xff      ; 0x066d
    jne short @..api_idx_000e.l1     ; 0x0672
    ret                              ; 0x0674
