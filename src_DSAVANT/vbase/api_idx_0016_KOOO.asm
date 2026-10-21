; auto-generated
api_idx_0016_KOOO:
    mov ax, 0xffea                   ; 0x0559
    call aztec_csav                  ; 0x055c
    mov ax, dseg_90a9                ; 0x055f
    push ax                          ; 0x0562
    lea ax, word [bp - 0x0016]       ; 0x0563
    push ax                          ; 0x0566
    call aztec_strcpy                ; 0x0567
    add sp, byte 4                   ; 0x056a
    mov ax, 0                        ; 0x056d
    push ax                          ; 0x0570
    call gfx_wait_sound              ; 0x0571
    pop cx                           ; 0x0574
    mov ax, 0                        ; 0x0575
    push ax                          ; 0x0578
    push ax                          ; 0x0579
    lea ax, word [bp - 0x0016]       ; 0x057a
    push ax                          ; 0x057d
    call data_file_path              ; 0x057e
    add sp, byte 4                   ; 0x0581
    push ax                          ; 0x0584
    call aztec_open                  ; 0x0585
    add sp, byte 4                   ; 0x0588
    mov word [bp - 0x0002], ax       ; 0x058b
    cmp ax, strict word 0xffff       ; 0x058e
    jne short @..api_idx_0016_KOOO.l1 ; 0x0591
    mov ax, 0x13                     ; 0x0593
    push ax                          ; 0x0596
    call fatal_error                 ; 0x0597
    pop cx                           ; 0x059a
@..api_idx_0016_KOOO.l1:
    push word [bp + 0x6]             ; 0x059b
    push word [bp + 0x4]             ; 0x059e
    mov ax, 5                        ; 0x05a1
    push ax                          ; 0x05a4
    push word [bp - 0x0002]          ; 0x05a5
    call dos_read_file               ; 0x05a8
    add sp, byte 8                   ; 0x05ab
    push word [bp - 0x0002]          ; 0x05ae
    call aztec_close                 ; 0x05b1
    pop cx                           ; 0x05b4
    ret                              ; 0x05b5
