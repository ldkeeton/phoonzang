api_idx_0008:
    mov ax, 0xfff8                   ; 0x01c9
    call ds_dispatch_f40b            ; 0x01cc
    mov word [bp - 0x0008], 0        ; 0x01cf
    call loc_13c0                    ; 0x01d4
    cmp word [data_919e], byte 0     ; 0x01d7
    je short @..api_idx_0008.l2      ; 0x01dc
    cmp word [data_9194], byte 0x0d  ; 0x01de
    je short @..api_idx_0008.l1      ; 0x01e3
    mov ax, 0                        ; 0x01e5
    push ax                          ; 0x01e8
    mov ax, 0xd                      ; 0x01e9
    push ax                          ; 0x01ec
    call loc_017f                    ; 0x01ed
    add sp, byte 4                   ; 0x01f0
@..api_idx_0008.l1:
    mov ax, word [bp + 0xe]          ; 0x01f3
    mov word [data_9198], ax         ; 0x01f6
    ret                              ; 0x01f9
@..api_idx_0008.l2:
    mov ax, word [bp + 0xe]          ; 0x01fa
    jmp near @..api_idx_0008.l10     ; 0x01fd
