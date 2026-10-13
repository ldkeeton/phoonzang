; auto-generated
api_idx_0004_14:
    mov ax, 0xfffc                   ; 0x83b3
    call aztec_csav                  ; 0x83b6
    mov ax, word [bp + 0x6]          ; 0x83b9
    cmp word [bp + 0x8], byte 0      ; 0x83bc
    jne short @..api_idx_0004_14.l1  ; 0x83c0
    mov ax, word [bp + 0x4]          ; 0x83c2
@..api_idx_0004_14.l1:
    mov word [bp - 0x0002], ax       ; 0x83c5
    mov ax, word [bp + 0x4]          ; 0x83c8
    cmp word [bp + 0x8], byte 0      ; 0x83cb
    jne short @..api_idx_0004_14.l2  ; 0x83cf
    mov ax, word [bp + 0x6]          ; 0x83d1
@..api_idx_0004_14.l2:
    mov word [bp - 0x0004], ax       ; 0x83d4
    cmp word [bp - 0x0002], byte 0   ; 0x83d7
    je short @..api_idx_0004_14.l3   ; 0x83db
    mov ax, 0                        ; 0x83dd
    push ax                          ; 0x83e0
    push word [bp - 0x0002]          ; 0x83e1
    mov ax, word [bss_830c]          ; 0x83e4
    mov cx, 4                        ; 0x83e7
    shl ax, cl                       ; 0x83ea
    add ax, 0x8d14                   ; 0x83ec
    push ax                          ; 0x83ef
    call ds_leaf_loc_3e88            ; 0x83f0
    add sp, byte 6                   ; 0x83f3
    mov ax, 0                        ; 0x83f6
    push ax                          ; 0x83f9
    push word [bp - 0x0002]          ; 0x83fa
    mov ax, word [bss_830c]          ; 0x83fd
    mov cx, 4                        ; 0x8400
    shl ax, cl                       ; 0x8403
    add ax, 0x5642                   ; 0x8405
    push ax                          ; 0x8408
    call ds_leaf_loc_3e88            ; 0x8409
    add sp, byte 6                   ; 0x840c
@..api_idx_0004_14.l3:
    cmp word [bp - 0x0004], byte 0   ; 0x840f
    je short @..api_idx_0004_14.l4   ; 0x8413
    mov ax, 1                        ; 0x8415
    push ax                          ; 0x8418
    push word [bp - 0x0004]          ; 0x8419
    mov ax, word [bss_830c]          ; 0x841c
    mov cx, 4                        ; 0x841f
    shl ax, cl                       ; 0x8422
    add ax, 0x8d14                   ; 0x8424
    push ax                          ; 0x8427
    call ds_leaf_loc_3e88            ; 0x8428
    add sp, byte 6                   ; 0x842b
    mov ax, 1                        ; 0x842e
    push ax                          ; 0x8431
    push word [bp - 0x0004]          ; 0x8432
    mov ax, word [bss_830c]          ; 0x8435
    mov cx, 4                        ; 0x8438
    shl ax, cl                       ; 0x843b
    add ax, 0x5642                   ; 0x843d
    push ax                          ; 0x8440
    call ds_leaf_loc_3e88            ; 0x8441
    add sp, byte 6                   ; 0x8444
@..api_idx_0004_14.l4:
    ret                              ; 0x8447
