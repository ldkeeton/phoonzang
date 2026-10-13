; auto-generated
api_idx_0002_3:
    mov ax, 0xfffe                   ; 0x021c
    call aztec_csav                  ; 0x021f
    mov ax, 0                        ; 0x0222
    push ax                          ; 0x0225
    mov ax, 1                        ; 0x0226
    push ax                          ; 0x0229
    push word [bp + 0x4]             ; 0x022a
    call ds_app_23a8                 ; 0x022d
    add sp, byte 4                   ; 0x0230
    push ax                          ; 0x0233
    call aztec_open                  ; 0x0234
    add sp, byte 4                   ; 0x0237
    mov word [bp - 0x0002], ax       ; 0x023a
    cmp ax, strict word 0xffff       ; 0x023d
    jne short @..api_idx_0002_3.l1   ; 0x0240
    mov ax, 0x1b                     ; 0x0242
    push ax                          ; 0x0245
    call ds_app_03b8                 ; 0x0246
    pop cx                           ; 0x0249
@..api_idx_0002_3.l1:
    mov ax, 0                        ; 0x024a
    push ax                          ; 0x024d
    push word [bp + 0x6]             ; 0x024e
    push word [bp - 0x0002]          ; 0x0251
    call ds_bios_mouse_loc_4259      ; 0x0254
    add sp, byte 6                   ; 0x0257
    push word [bp - 0x0002]          ; 0x025a
    call aztec_close                 ; 0x025d
    pop cx                           ; 0x0260
    ret                              ; 0x0261
