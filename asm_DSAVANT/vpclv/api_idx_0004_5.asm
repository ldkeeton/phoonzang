api_idx_0004_5:
    mov ax, 0xfffc                   ; 0x3288
    call ds_aztec_csav               ; 0x328b
    mov ax, 0xc2                     ; 0x328e
    push ax                          ; 0x3291
    mov ax, 0x13f                    ; 0x3292
    push ax                          ; 0x3295
    mov ax, 0xbc                     ; 0x3296
    push ax                          ; 0x3299
    mov ax, 0                        ; 0x329a
    push ax                          ; 0x329d
    call ds_loc_3b6f                 ; 0x329e
    add sp, byte 8                   ; 0x32a1
    mov word [bp - 0x0002], dx       ; 0x32a4
    mov word [bp - 0x0004], ax       ; 0x32a7
    mov ax, 0xbc                     ; 0x32aa
    push ax                          ; 0x32ad
    push word [bp + 0x4]             ; 0x32ae
    call ds_aztec_strlen             ; 0x32b1
    pop cx                           ; 0x32b4
    mov cx, 6                        ; 0x32b5
    imul cx                          ; 0x32b8
    mov cx, 2                        ; 0x32ba
    cwd                              ; 0x32bd
    idiv cx                          ; 0x32be
    mov cx, ax                       ; 0x32c0
    mov ax, 0xa0                     ; 0x32c2
    sub ax, cx                       ; 0x32c5
    push ax                          ; 0x32c7
    call ds_loc_3a50                 ; 0x32c8
    add sp, byte 4                   ; 0x32cb
    mov ax, 0                        ; 0x32ce
    push ax                          ; 0x32d1
    mov ax, 0x55                     ; 0x32d2
    push ax                          ; 0x32d5
    call ds_loc_3a6a                 ; 0x32d6
    add sp, byte 4                   ; 0x32d9
    mov ax, 0                        ; 0x32dc
    push ax                          ; 0x32df
    push word [bp + 0x4]             ; 0x32e0
    call ds_string_loc_3a95          ; 0x32e3
    add sp, byte 4                   ; 0x32e6
    mov ax, 0xc2                     ; 0x32e9
    push ax                          ; 0x32ec
    mov ax, 0x13f                    ; 0x32ed
    push ax                          ; 0x32f0
    mov ax, 0xbc                     ; 0x32f1
    push ax                          ; 0x32f4
    mov ax, 0                        ; 0x32f5
    push ax                          ; 0x32f8
    call ds_loc_3b21                 ; 0x32f9
    add sp, byte 8                   ; 0x32fc
    cmp word [bp + 0x6], byte 0      ; 0x32ff
    jle short @..api_idx_0004_5.l1   ; 0x3303
    mov ax, 0                        ; 0x3305
    push ax                          ; 0x3308
    call ds_app_0a27                 ; 0x3309
    pop cx                           ; 0x330c
@..api_idx_0004_5.l1:
    push word [bss_905a]             ; 0x330d
    call ds_app_09a5                 ; 0x3311
    pop cx                           ; 0x3314
    mov ax, 1                        ; 0x3315
    push ax                          ; 0x3318
    push word [bp - 0x0002]          ; 0x3319
    push word [bp - 0x0004]          ; 0x331c
    call ds_loc_3b96                 ; 0x331f
    add sp, byte 6                   ; 0x3322
    mov ax, 0xc2                     ; 0x3325
    push ax                          ; 0x3328
    mov ax, 0x13f                    ; 0x3329
    push ax                          ; 0x332c
    mov ax, 0xbc                     ; 0x332d
    push ax                          ; 0x3330
    mov ax, 0                        ; 0x3331
    push ax                          ; 0x3334
    call ds_loc_3b21                 ; 0x3335
    add sp, byte 8                   ; 0x3338
    ret                              ; 0x333b
