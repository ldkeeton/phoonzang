; auto-generated
loc_RSMG:
    mov ax, 0                        ; 0x42e3
    call aztec_csav                  ; 0x42e6
    mov ax, word [bp + 0x8]          ; 0x42e9
    add ax, strict word 6            ; 0x42ec
    push ax                          ; 0x42ef
    mov ax, 6                        ; 0x42f0
    imul word [bp + 0xa]             ; 0x42f3
    add ax, word [bp + 0x6]          ; 0x42f6
    inc ax                           ; 0x42f9
    inc ax                           ; 0x42fa
    push ax                          ; 0x42fb
    push word [bp + 0x8]             ; 0x42fc
    push word [bp + 0x6]             ; 0x42ff
    call ds_app_OPOL                 ; 0x4302
    add sp, byte 8                   ; 0x4305
    mov ax, word [bp + 0x8]          ; 0x4308
    inc ax                           ; 0x430b
    push ax                          ; 0x430c
    mov ax, word [bp + 0x6]          ; 0x430d
    inc ax                           ; 0x4310
    inc ax                           ; 0x4311
    push ax                          ; 0x4312
    call gfx_set_text_pos            ; 0x4313
    add sp, byte 4                   ; 0x4316
    mov ax, 0xc3                     ; 0x4319
    push ax                          ; 0x431c
    mov ax, 0xb4                     ; 0x431d
    push ax                          ; 0x4320
    call gfx_set_text_color          ; 0x4321
    add sp, byte 4                   ; 0x4324
    mov ax, 0                        ; 0x4327
    push ax                          ; 0x432a
    push word [bp + 0x4]             ; 0x432b
    call draw_string                 ; 0x432e
    add sp, byte 4                   ; 0x4331
    ret                              ; 0x4334
