; auto-generated
aztec_loadabort:
    push bp                          ; 0x4462
    mov bp, sp                       ; 0x4463
    add sp, byte 0xb0                ; 0x4465
    push word [bss_0cfa]             ; 0x4468
    push word [bp + 0x4]             ; 0x446c
    mov ax, 0xc4d                    ; 0x446f
    push ax                          ; 0x4472
    lea ax, word [bp - 0x0050]       ; 0x4473
    push ax                          ; 0x4476
    call ds_loc_LHHJ                 ; 0x4477
    add sp, byte 8                   ; 0x447a
    lea ax, word [bp - 0x0050]       ; 0x447d
    push ax                          ; 0x4480
    mov ax, 9                        ; 0x4481
    push ax                          ; 0x4484
    call aztec_bdos                  ; 0x4485
    add sp, byte 4                   ; 0x4488
    mov ax, 0x64                     ; 0x448b
    push ax                          ; 0x448e
    call aztec_exit                  ; 0x448f
    pop cx                           ; 0x4492
    mov sp, bp                       ; 0x4493
    pop bp                           ; 0x4495
    ret                              ; 0x4496
