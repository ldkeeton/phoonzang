; auto-generated
loc_VUSH:
    mov ax, 0                        ; 0x4775
    call aztec_csav                  ; 0x4778
    mov ax, 6                        ; 0x477b
    imul word [bp + 0xc]             ; 0x477e
    add ax, word [bp + 0x8]          ; 0x4781
    push ax                          ; 0x4784
    mov ax, 6                        ; 0x4785
    imul word [bp + 0xa]             ; 0x4788
    add ax, word [bp + 0x6]          ; 0x478b
    inc ax                           ; 0x478e
    inc ax                           ; 0x478f
    push ax                          ; 0x4790
    push word [bp + 0x8]             ; 0x4791
    push word [bp + 0x6]             ; 0x4794
    call draw_inset_panel            ; 0x4797
    add sp, byte 8                   ; 0x479a
    push word [bp + 0x10]            ; 0x479d
    push word [bp + 0xe]             ; 0x47a0
    push word [bp + 0x12]            ; 0x47a3
    push word [bp + 0xa]             ; 0x47a6
    push word [bp + 0x8]             ; 0x47a9
    push word [bp + 0x6]             ; 0x47ac
    push word [bp + 0x4]             ; 0x47af
    call api_idx_0054_OPGG           ; 0x47b2
    add sp, byte 0x0e                ; 0x47b5
    ret                              ; 0x47b8
