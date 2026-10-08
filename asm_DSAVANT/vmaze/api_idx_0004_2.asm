api_idx_0004_2:
    mov ax, 0xfffc                   ; 0x13f7
    call ds_dispatch_f40b            ; 0x13fa
    cmp word [data_919e], byte 0     ; 0x13fd
    je short @..api_idx_0004_2.l1    ; 0x1402
    mov ax, word [data_8f3e]         ; 0x1404
    mov word [data_8f2a], ax         ; 0x1407
    mov ax, word [data_8f42]         ; 0x140a
    mov word [data_8f2e], ax         ; 0x140d
    mov ax, word [data_8f40]         ; 0x1410
    mov word [data_8f2c], ax         ; 0x1413
    ret                              ; 0x1416
@..api_idx_0004_2.l1:
    call loc_676c                    ; 0x1417
    mov word [bp - 0x0002], 0        ; 0x141a
    jmp near @..api_idx_0004_2.l7    ; 0x141f
