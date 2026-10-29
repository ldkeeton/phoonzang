; auto-generated
loc_SKIP:
    mov ax, 0                        ; 0x15f9
    call aztec_csav                  ; 0x15fc
    mov ax, 7                        ; 0x15ff
    imul word [bp + 6]               ; 0x1602
    add ax, 0x9c                     ; 0x1605
    push ax                          ; 0x1608
    push word [bp + 4]               ; 0x1609
    call call_set_text_pos           ; 0x160c
    add sp, byte 4                   ; 0x160f
    ret                              ; 0x1612
