; auto-generated
; asm only
loc_03e2:
    cmp byte [bp + 0x12], 0          ; 0x03e2
    jne short loc_03f6               ; 0x03e6
    call loc_TJIS                    ; 0x03e8
loc_03eb:
    test byte [cs:cseg_0a94 - IMAGE_BASE], 0xff ; 0x03eb
    je short loc_03eb                ; 0x03f1
    jmp near loc_0614                ; 0x03f3
loc_03f6:
    test byte [bp + 0x14], 2         ; 0x03f6
    je short loc_0407                ; 0x03fa
    test byte [cs:cseg_0a94 - IMAGE_BASE], 0xff ; 0x03fc
    jne short loc_0407               ; 0x0402
    jmp near io_loc_HMTR             ; 0x0404
loc_0407:
    cli                              ; 0x0407
    test byte [cs:cseg_0a94 - IMAGE_BASE], 0xff ; 0x0408
    jne short loc_0413               ; 0x040e
    jmp near loc_04c3                ; 0x0410
loc_0413:
    xor ax, ax                       ; 0x0413
    mov es, ax                       ; 0x0415
    mov di, 0x20                     ; 0x0417
    cli                              ; 0x041a
    cmp byte [cs:cseg_0321 - IMAGE_BASE], 0 ; 0x041b
    jne short loc_043e               ; 0x0421
    mov byte [cs:cseg_0321 - IMAGE_BASE], 1 ; 0x0423
    in al, 0x21                      ; 0x0429
    mov byte [cs:cseg_0a8f - IMAGE_BASE], al ; 0x042b
    mov ax, word [es:di]             ; 0x042f
    mov word [cs:cseg_0b10 - IMAGE_BASE], ax ; 0x0432
    mov ax, word [es:di + 0x2]       ; 0x0436
    mov word [cs:cseg_0b12 - IMAGE_BASE], ax ; 0x043a
loc_043e:
    mov al, 0x34                     ; 0x043e
    out 0x43, al                     ; 0x0440
    call leaf_loc_STGJ               ; 0x0442
    mov ax, 0x48                     ; 0x0445
    out 0x40, al                     ; 0x0448
    call leaf_loc_STGJ               ; 0x044a
    mov al, ah                       ; 0x044d
    out 0x40, al                     ; 0x044f
    cmp byte [cs:cseg_0a90 - IMAGE_BASE], 0 ; 0x0451
    je short loc_0477                ; 0x0457
    mov bl, byte [cs:cseg_0a7d - IMAGE_BASE] ; 0x0459
    shl bl, 1                        ; 0x045e
    xor bh, bh                       ; 0x0460
    mov dx, word [cs:bx + 0x5a5]     ; 0x0462
    cmp byte [cs:cseg_0a94 - IMAGE_BASE], 0 ; 0x0467
    je short loc_04b5                ; 0x046d
    mov dx, word [cs:bx + 0x5ad]     ; 0x046f
    jmp near loc_04b5                ; 0x0474
loc_0477:
    mov bl, byte [cs:cseg_0a7d - IMAGE_BASE] ; 0x0477
    shl bl, 1                        ; 0x047c
    xor bh, bh                       ; 0x047e
    mov dx, word [cs:bx + 0x595]     ; 0x0480
    cmp byte [cs:cseg_0a94 - IMAGE_BASE], 0 ; 0x0485
    je short loc_04b5                ; 0x048b
    mov dx, word [cs:bx + 0x59d]     ; 0x048d
    jmp near loc_04b5                ; 0x0492
jumptable_0495:
    dw io_loc_KNIR - IMAGE_BASE                ; 0x0495
    dw io_loc_TGPU - IMAGE_BASE                ; 0x0497
    dw io_loc_PNPV - IMAGE_BASE                ; 0x0499
    dw io_loc_PNPV - IMAGE_BASE                ; 0x049b
    dw io_loc_KNIR - IMAGE_BASE                ; 0x049d
    dw io_loc_TGPU - IMAGE_BASE                ; 0x049f
    dw io_loc_PNPV - IMAGE_BASE                ; 0x04a1
    dw io_loc_PNPV - IMAGE_BASE                ; 0x04a3
    dw io_loc_HTKU - IMAGE_BASE                ; 0x04a5
    dw io_loc_UVLK_0841 - IMAGE_BASE           ; 0x04a7
    dw io_loc_UVLK_0975 - IMAGE_BASE           ; 0x04a9
    dw io_loc_UVLK_0975 - IMAGE_BASE           ; 0x04ab
    dw io_loc_HTKU - IMAGE_BASE                ; 0x04ad
    dw io_loc_UVLK_0841 - IMAGE_BASE           ; 0x04af
    dw io_loc_UVLK_0975 - IMAGE_BASE           ; 0x04b1
    dw io_loc_UVLK_0975 - IMAGE_BASE           ; 0x04b3
loc_04b5:
    cld                              ; 0x04b5
    xor ax, ax                       ; 0x04b6
    mov es, ax                       ; 0x04b8
    mov di, 0x20                     ; 0x04ba
