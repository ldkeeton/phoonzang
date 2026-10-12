api_idx_0004_12:
    mov ax, 0xfffc                   ; 0x7319
    call ds_aztec_csav               ; 0x731c
    mov ax, word [bp + 0x6]          ; 0x731f
    cmp word [bp + 0x8], byte 0      ; 0x7322
    jne short @..api_idx_0004_12.l1  ; 0x7326
    mov ax, word [bp + 0x4]          ; 0x7328
@..api_idx_0004_12.l1:
    mov word [bp - 0x0002], ax       ; 0x732b
    mov ax, word [bp + 0x4]          ; 0x732e
    cmp word [bp + 0x8], byte 0      ; 0x7331
    jne short @..api_idx_0004_12.l2  ; 0x7335
    mov ax, word [bp + 0x6]          ; 0x7337
@..api_idx_0004_12.l2:
    mov word [bp - 0x0004], ax       ; 0x733a
    cmp word [bp - 0x0002], byte 0   ; 0x733d
    je short @..api_idx_0004_12.l3   ; 0x7341
    mov ax, 0                        ; 0x7343
    push ax                          ; 0x7346
    push word [bp - 0x0002]          ; 0x7347
    mov ax, word [bss_830c]          ; 0x734a
    mov cx, 4                        ; 0x734d
    shl ax, cl                       ; 0x7350
    add ax, 0x8d14                   ; 0x7352
    push ax                          ; 0x7355
    call ds_leaf_loc_3e88            ; 0x7356
    add sp, byte 6                   ; 0x7359
    mov ax, 0                        ; 0x735c
    push ax                          ; 0x735f
    push word [bp - 0x0002]          ; 0x7360
    mov ax, word [bss_830c]          ; 0x7363
    mov cx, 4                        ; 0x7366
    shl ax, cl                       ; 0x7369
    add ax, 0x5642                   ; 0x736b
    push ax                          ; 0x736e
    call ds_leaf_loc_3e88            ; 0x736f
    add sp, byte 6                   ; 0x7372
@..api_idx_0004_12.l3:
    cmp word [bp - 0x0004], byte 0   ; 0x7375
    je short @..api_idx_0004_12.l4   ; 0x7379
    mov ax, 1                        ; 0x737b
    push ax                          ; 0x737e
    push word [bp - 0x0004]          ; 0x737f
    mov ax, word [bss_830c]          ; 0x7382
    mov cx, 4                        ; 0x7385
    shl ax, cl                       ; 0x7388
    add ax, 0x8d14                   ; 0x738a
    push ax                          ; 0x738d
    call ds_leaf_loc_3e88            ; 0x738e
    add sp, byte 6                   ; 0x7391
    mov ax, 1                        ; 0x7394
    push ax                          ; 0x7397
    push word [bp - 0x0004]          ; 0x7398
    mov ax, word [bss_830c]          ; 0x739b
    mov cx, 4                        ; 0x739e
    shl ax, cl                       ; 0x73a1
    add ax, 0x5642                   ; 0x73a3
    push ax                          ; 0x73a6
    call ds_leaf_loc_3e88            ; 0x73a7
    add sp, byte 6                   ; 0x73aa
@..api_idx_0004_12.l4:
    ret                              ; 0x73ad
