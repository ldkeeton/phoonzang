api_idx_0008_2:
    mov ax, 0xfff8                   ; 0x151e
    call ds_dispatch_f40b            ; 0x1521
    push word [bp + 0x4]             ; 0x1524
    call api_idx_0004_4              ; 0x1527
    pop cx                           ; 0x152a
    mov word [bp - 0x0002], ax       ; 0x152b
    cmp ax, strict word 0xffff       ; 0x152e
    jne short @..api_idx_0008_2.l1   ; 0x1531
    mov ax, 0                        ; 0x1533
    push ax                          ; 0x1536
    call ds_dispatch_b7e0            ; 0x1537
    pop cx                           ; 0x153a
    ret                              ; 0x153b
