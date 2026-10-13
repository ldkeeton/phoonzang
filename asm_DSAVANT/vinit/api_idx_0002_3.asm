; auto-generated
api_idx_0002_3:
    mov ax, 0xfffe                   ; 0x00ca
    call aztec_csav                  ; 0x00cd
    mov ax, 0                        ; 0x00d0
    push ax                          ; 0x00d3
    push ax                          ; 0x00d4
    push word [bp + 0x4]             ; 0x00d5
    call ds_app_23a8                 ; 0x00d8
    add sp, byte 4                   ; 0x00db
    push ax                          ; 0x00de
    call aztec_open                  ; 0x00df
    add sp, byte 4                   ; 0x00e2
    mov word [bp - 0x0002], ax       ; 0x00e5
    cmp ax, strict word 0xffff       ; 0x00e8
    jne short @..api_idx_0002_3.l1   ; 0x00eb
    mov ax, 8                        ; 0x00ed
    push ax                          ; 0x00f0
    call ds_app_03b8                 ; 0x00f1
    pop cx                           ; 0x00f4
@..api_idx_0002_3.l1:
    push word [bp + 0x8]             ; 0x00f5
    push word [bp + 0x6]             ; 0x00f8
    push word [bp - 0x0002]          ; 0x00fb
    call ds_leaf_loc_4fb6            ; 0x00fe
    add sp, byte 6                   ; 0x0101
    push word [bp - 0x0002]          ; 0x0104
    call aztec_close                 ; 0x0107
    pop cx                           ; 0x010a
    ret                              ; 0x010b
