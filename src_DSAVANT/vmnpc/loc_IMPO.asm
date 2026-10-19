; auto-generated
loc_IMPO:
    mov ax, 0                        ; 0x7667
    call aztec_csav                  ; 0x766a
    mov ax, word [bp + 0x6]          ; 0x766d
    add ax, strict word 6            ; 0x7670
    push ax                          ; 0x7673
    mov ax, word [bp + 0x4]          ; 0x7674
    add ax, strict word 0x14         ; 0x7677
    push ax                          ; 0x767a
    push word [bp + 0x6]             ; 0x767b
    push word [bp + 0x4]             ; 0x767e
    call ds_app_OPOL                 ; 0x7681
    add sp, byte 8                   ; 0x7684
    mov ax, word [bp + 0x8]          ; 0x7687
    shl ax, 1                        ; 0x768a
    shl ax, 1                        ; 0x768c
    mov bx, ax                       ; 0x768e
    push word [word bx + 0x8]        ; 0x7690
    mov ax, word [bp + 0x6]          ; 0x7694
    add ax, strict word 6            ; 0x7697
    push ax                          ; 0x769a
    mov ax, word [bp + 0x4]          ; 0x769b
    add ax, strict word 0x14         ; 0x769e
    push ax                          ; 0x76a1
    push word [bp + 0x6]             ; 0x76a2
    push word [bp + 0x4]             ; 0x76a5
    call gfx_entry_18                ; 0x76a8
    add sp, byte 0x0a                ; 0x76ab
    mov ax, word [bp + 0x6]          ; 0x76ae
    inc ax                           ; 0x76b1
    push ax                          ; 0x76b2
    mov ax, word [bp + 0x4]          ; 0x76b3
    inc ax                           ; 0x76b6
    inc ax                           ; 0x76b7
    push ax                          ; 0x76b8
    call gfx_entry_13                ; 0x76b9
    add sp, byte 4                   ; 0x76bc
    cmp word [bp + 0xa], byte 0      ; 0x76bf
    jle short @..loc_IMPO.l1         ; 0x76c3
    mov ax, word [bp + 0xa]          ; 0x76c5
    cmp ax, word [bp + 0xc]          ; 0x76c8
    jg short @..loc_IMPO.l1          ; 0x76cb
    mov ax, 0                        ; 0x76cd
    push ax                          ; 0x76d0
    mov ax, 1                        ; 0x76d1
    push ax                          ; 0x76d4
    call gfx_entry_12                ; 0x76d5
    add sp, byte 4                   ; 0x76d8
    mov ax, 0                        ; 0x76db
    push ax                          ; 0x76de
    mov ax, 3                        ; 0x76df
    push ax                          ; 0x76e2
    push word [bp + 0xa]             ; 0x76e3
    call ds_app_GUML                 ; 0x76e6
    add sp, byte 6                   ; 0x76e9
    jmp short @..loc_IMPO.l2         ; 0x76ec
@..loc_IMPO.l1:
    mov ax, 0                        ; 0x76ee
    push ax                          ; 0x76f1
    push ax                          ; 0x76f2
    call gfx_entry_12                ; 0x76f3
    add sp, byte 4                   ; 0x76f6
    mov ax, 0                        ; 0x76f9
    push ax                          ; 0x76fc
    mov ax, dseg_90e4                ; 0x76fd
    push ax                          ; 0x7700
    call ds_string_loc_QRJV          ; 0x7701
    add sp, byte 4                   ; 0x7704
@..loc_IMPO.l2:
    ret                              ; 0x7707
