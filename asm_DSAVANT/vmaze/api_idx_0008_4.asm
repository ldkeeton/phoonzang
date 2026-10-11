api_idx_0008_4:
    mov ax, 0xfff8                   ; 0x33c0
    call ds_dispatch_f40b            ; 0x33c3
    cmp word [bp + 0x10], byte 0     ; 0x33c6
    je short @..api_idx_0008_4.l2    ; 0x33ca
    mov ax, 0                        ; 0x33cc
    push ax                          ; 0x33cf
    push word [bp + 0x10]            ; 0x33d0
    lea ax, word [bp + 0xe]          ; 0x33d3
    push ax                          ; 0x33d6
    lea ax, word [bp + 0xc]          ; 0x33d7
    push ax                          ; 0x33da
    lea ax, word [bp + 0xa]          ; 0x33db
    push ax                          ; 0x33de
    lea ax, word [bp + 0x8]          ; 0x33df
    push ax                          ; 0x33e2
    lea ax, word [bp + 0x6]          ; 0x33e3
    push ax                          ; 0x33e6
    call loc_2ed4                    ; 0x33e7
    add sp, byte 0x0e                ; 0x33ea
    test ax, ax                      ; 0x33ed
    je short @..api_idx_0008_4.l2    ; 0x33ef
    mov ax, word [bss_91d4]          ; 0x33f1
    jmp short @..api_idx_0008_4.l1   ; 0x33f4
    mov ax, 2                        ; 0x33f6
    ret                              ; 0x33f9
    cmp word [data_91a6], byte 0     ; 0x33fa
    je short loc_3405                ; 0x33ff
    mov ax, 0                        ; 0x3401
    ret                              ; 0x3404
    mov ax, 4                        ; 0x3405
    ret                              ; 0x3408
    mov ax, 0                        ; 0x3409
    ret                              ; 0x340c
    cmp ax, 0x4c84                   ; 0x340d
    test byte [di], bh               ; 0x3410
    test byte [bx + di - 0x007c], al ; 0x3412
    cmp ax, 0x5084                   ; 0x3415
    db 0x84
@..api_idx_0008_4.l1:
    cmp ax, strict word 6            ; 0x3419
    jae short @..api_idx_0008_4.l2   ; 0x341c
    xchg bx, ax                      ; 0x341e
    shl bx, 1                        ; 0x341f
    jmp [cs:bx - 0x7bac]             ; 0x3421
@..api_idx_0008_4.l2:
    mov ax, word [bp + 0xe]          ; 0x3426
    mov cx, 6                        ; 0x3429
    shl ax, cl                       ; 0x342c
    mov cx, word [bp + 0xc]          ; 0x342e
    shl cx, 1                        ; 0x3431
    shl cx, 1                        ; 0x3433
    shl cx, 1                        ; 0x3435
    add ax, cx                       ; 0x3437
    add ax, word [bp + 0xa]          ; 0x3439
    mov word [bp - 0x0002], ax       ; 0x343c
    push ax                          ; 0x343f
    mov ax, word [bss_0e14]          ; 0x3440
    add ax, 0x8b0                    ; 0x3443
    push ax                          ; 0x3446
    call ds_dispatch_ec74            ; 0x3447
    add sp, byte 4                   ; 0x344a
    test ax, ax                      ; 0x344d
    je short @..api_idx_0008_4.l5    ; 0x344f
    mov ax, word [bss_91d4]          ; 0x3451
    jmp short @..api_idx_0008_4.l4   ; 0x3454
@..api_idx_0008_4.l3:
    mov ax, 0                        ; 0x3456
    ret                              ; 0x3459
@..api_idx_0008_4.l4:
    cmp ax, strict word 0            ; 0x345a
    je short @..api_idx_0008_4.l3    ; 0x345d
    cmp ax, strict word 3            ; 0x345f
    je short @..api_idx_0008_4.l3    ; 0x3462
@..api_idx_0008_4.l5:
    mov ax, word [bss_82ee]          ; 0x3464
    add ax, word [bp + 0x4]          ; 0x3467
    mov cx, 4                        ; 0x346a
    cwd                              ; 0x346d
    idiv cx                          ; 0x346e
    mov ax, dx                       ; 0x3470
    jmp short @..api_idx_0008_4.l10  ; 0x3472
@..api_idx_0008_4.l6:
    push word [bp + 0xe]             ; 0x3474
    push word [bp + 0xc]             ; 0x3477
    push word [bp + 0xa]             ; 0x347a
    push word [bp + 0x8]             ; 0x347d
    push word [bp + 0x6]             ; 0x3480
    call loc_2e0c                    ; 0x3483
    add sp, byte 0x0a                ; 0x3486
    mov word [bp - 0x0004], ax       ; 0x3489
    jmp short @..api_idx_0008_4.l11  ; 0x348c
@..api_idx_0008_4.l7:
    mov ax, 4                        ; 0x348e
    push ax                          ; 0x3491
    push word [bp - 0x0002]          ; 0x3492
    mov ax, word [bss_0e14]          ; 0x3495
    add ax, 0x90                     ; 0x3498
    push ax                          ; 0x349b
    call ds_dispatch_ecf6            ; 0x349c
    add sp, byte 6                   ; 0x349f
    mov word [bp - 0x0004], ax       ; 0x34a2
    jmp short @..api_idx_0008_4.l11  ; 0x34a5
@..api_idx_0008_4.l8:
    mov ax, 4                        ; 0x34a7
    push ax                          ; 0x34aa
    push word [bp - 0x0002]          ; 0x34ab
    mov ax, word [bss_0e14]          ; 0x34ae
    add ax, 0x290                    ; 0x34b1
    push ax                          ; 0x34b4
    call ds_dispatch_ecf6            ; 0x34b5
    add sp, byte 6                   ; 0x34b8
    mov word [bp - 0x0004], ax       ; 0x34bb
    jmp short @..api_idx_0008_4.l11  ; 0x34be
@..api_idx_0008_4.l9:
    push word [bp + 0xe]             ; 0x34c0
    push word [bp + 0xc]             ; 0x34c3
    push word [bp + 0xa]             ; 0x34c6
    push word [bp + 0x8]             ; 0x34c9
    push word [bp + 0x6]             ; 0x34cc
    call loc_2d94                    ; 0x34cf
    add sp, byte 0x0a                ; 0x34d2
    mov word [bp - 0x0004], ax       ; 0x34d5
    jmp short @..api_idx_0008_4.l11  ; 0x34d8
@..api_idx_0008_4.l10:
    cmp ax, strict word 0            ; 0x34da
    je short @..api_idx_0008_4.l6    ; 0x34dd
    cmp ax, strict word 1            ; 0x34df
    je short @..api_idx_0008_4.l7    ; 0x34e2
    cmp ax, strict word 2            ; 0x34e4
    je short @..api_idx_0008_4.l8    ; 0x34e7
    cmp ax, strict word 3            ; 0x34e9
    je short @..api_idx_0008_4.l9    ; 0x34ec
@..api_idx_0008_4.l11:
    lea ax, word [bp - 0x0008]       ; 0x34ee
    push ax                          ; 0x34f1
    lea ax, word [bp - 0x0006]       ; 0x34f2
    push ax                          ; 0x34f5
    push word [bp - 0x0002]          ; 0x34f6
    call loc_2f55                    ; 0x34f9
    add sp, byte 6                   ; 0x34fc
    mov ax, word [bp - 0x0008]       ; 0x34ff
    add ax, word [bp + 0x4]          ; 0x3502
    inc ax                           ; 0x3505
    mov cx, 4                        ; 0x3506
    cwd                              ; 0x3509
    idiv cx                          ; 0x350a
    mov word [bp - 0x0008], dx       ; 0x350c
    cmp dx, word [bss_82ee]          ; 0x350f
    je short @..api_idx_0008_4.l12   ; 0x3513
    jmp near @..api_idx_0008_4.l14   ; 0x3515
@..api_idx_0008_4.l12:
    mov ax, word [bp - 0x0006]       ; 0x3518
    jmp short @..api_idx_0008_4.l13  ; 0x351b

    db 0xc7, 0x46, 0xfc, 0x08, 0x00, 0xeb, 0x64, 0xc7, 0x46, 0xfc, 0x09, 0x00, 0xeb, 0x5d, 0xc7, 0x46
    db 0xfc, 0x0a, 0x00, 0xeb, 0x56, 0xc7, 0x46, 0xfc, 0x0b, 0x00, 0xeb, 0x4f, 0x83, 0x3e, 0xd6, 0x91
    db 0x00, 0x75, 0x05, 0xc7, 0x46, 0xfc, 0x0c, 0x00, 0xeb, 0x41, 0x83, 0x3e, 0xd6, 0x91, 0x00, 0x75
    db 0x05, 0xc7, 0x46, 0xfc, 0x0d, 0x00, 0xeb, 0x33, 0xc7, 0x46, 0xfc, 0x0e, 0x00, 0xeb, 0x2c, 0xc7
    db 0x46, 0xfc, 0x0f, 0x00, 0xeb, 0x25, 0xcf, 0x85, 0x64, 0x85, 0x6b, 0x85, 0x72, 0x85, 0x79, 0x85
    db 0x80, 0x85, 0x8e, 0x85, 0xcf, 0x85, 0xcf, 0x85, 0xcf, 0x85, 0x9c, 0x85, 0xa3, 0x85

@..api_idx_0008_4.l13:
    cmp ax, strict word 0xc          ; 0x357b
    jae short @..api_idx_0008_4.l14  ; 0x357e
    xchg bx, ax                      ; 0x3580
    shl bx, 1                        ; 0x3581
    jmp [cs:bx - 0x7a56]             ; 0x3583
@..api_idx_0008_4.l14:
    mov ax, word [bp - 0x0004]       ; 0x3588
    ret                              ; 0x358b
