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
    jmp near io_loc_0592             ; 0x0404
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
    mov dx, word [cs:bx + jumptable_0495 + 0x10 - IMAGE_BASE] ; 0x0462
    cmp byte [cs:cseg_0a94 - IMAGE_BASE], 0 ; 0x0467
    je short loc_04b5                ; 0x046d
    mov dx, word [cs:bx + jumptable_0495 + 0x18 - IMAGE_BASE] ; 0x046f
    jmp near loc_04b5                ; 0x0474
loc_0477:
    mov bl, byte [cs:cseg_0a7d - IMAGE_BASE] ; 0x0477
    shl bl, 1                        ; 0x047c
    xor bh, bh                       ; 0x047e
    mov dx, word [cs:bx + jumptable_0495 - IMAGE_BASE] ; 0x0480
    cmp byte [cs:cseg_0a94 - IMAGE_BASE], 0 ; 0x0485
    je short loc_04b5                ; 0x048b
    mov dx, word [cs:bx + jumptable_0495 + 0x8 - IMAGE_BASE] ; 0x048d
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
    mov ax, dx                       ; 0x04bd
    stosw                            ; 0x04bf
    mov ax, cs                       ; 0x04c0
    stosw                            ; 0x04c2
loc_04c3:
    cli                              ; 0x04c3
    cmp byte [cs:cseg_0a7d - IMAGE_BASE], 1 ; 0x04c4
    jne short loc_04dc               ; 0x04ca
    mov al, 0                        ; 0x04cc
    cmp byte [cs:cseg_0a94 - IMAGE_BASE], 0 ; 0x04ce
    je short loc_04d8                ; 0x04d4
    mov al, 0xff                     ; 0x04d6
loc_04d8:
    mov byte [cs:cseg_08ae - IMAGE_BASE], al ; 0x04d8
loc_04dc:
    cmp byte [cs:cseg_0a7d - IMAGE_BASE], 0 ; 0x04dc
    jne short loc_04ea               ; 0x04e2
    in al, 0x61                      ; 0x04e4
    or al, 3                         ; 0x04e6
    out 0x61, al                     ; 0x04e8
loc_04ea:
    call leaf_loc_JKKL               ; 0x04ea
    mov al, 0xfe                     ; 0x04ed
    out 0x21, al                     ; 0x04ef
    mov ax, word [bp + 0x8]          ; 0x04f1
    add ax, word [bp + 0xe]          ; 0x04f4
    mov cl, 4                        ; 0x04f7
    shr ax, cl                       ; 0x04f9
    add ax, word [bp + 0xa]          ; 0x04fb
    sub ax, 0x1000                   ; 0x04fe
    mov es, ax                       ; 0x0501
    mov ds, ax                       ; 0x0503
    mov word [cs:cseg_18e8 - IMAGE_BASE], ax ; 0x0505
    mov word [cs:cseg_08bf - IMAGE_BASE], ax ; 0x0509
    mov word [cs:cseg_09a4 - IMAGE_BASE], ax ; 0x050d
    mov ax, word [bp + 0xe]          ; 0x0511
    sub ax, word [bp + 0xc]          ; 0x0514
    neg ax                           ; 0x0517
    and al, 0xfe                     ; 0x0519
    add ax, strict word 0x10         ; 0x051b
    mov di, ax                       ; 0x051e
    mov bx, ax                       ; 0x0520
    mov word [cs:cseg_18f2 - IMAGE_BASE], ax ; 0x0522
    mov word [cs:cseg_08c4 - IMAGE_BASE], ax ; 0x0526
    mov word [cs:cseg_09a9 - IMAGE_BASE], ax ; 0x052a
    mov al, byte [bx]                ; 0x052e
    mov byte [cs:cseg_086f - IMAGE_BASE], al ; 0x0530
    mov byte [cs:cseg_086e - IMAGE_BASE], 0 ; 0x0534
    mov al, 0xff                     ; 0x053a
    sub al, byte [bp + 0x10]         ; 0x053c
    mov byte [cs:cseg_1904 - IMAGE_BASE], al ; 0x053f
    mov byte [cs:cseg_08d4 - IMAGE_BASE], al ; 0x0543
    mov byte [cs:cseg_09bb - IMAGE_BASE], al ; 0x0547
    mov byte [cs:cseg_0a54 - IMAGE_BASE], al ; 0x054b
    mov byte [cs:cseg_0848 - IMAGE_BASE], al ; 0x054f
    mov byte [cs:cseg_097c - IMAGE_BASE], al ; 0x0553
    cmp byte [cs:cseg_0a7d - IMAGE_BASE], 1 ; 0x0557
    je short loc_0567                ; 0x055d
    cmp byte [cs:cseg_0a7d - IMAGE_BASE], 4 ; 0x055f
    jne short loc_056d               ; 0x0565
loc_0567:
    mov dx, 0x388                    ; 0x0567
    mov al, 0x40                     ; 0x056a
    out dx, al                       ; 0x056c
loc_056d:
    mov byte [cs:cseg_0a94 - IMAGE_BASE], 0 ; 0x056d
    cmp byte [cs:cseg_0a90 - IMAGE_BASE], 0 ; 0x0573
    jne short loc_059b               ; 0x0579
    mov al, byte [cs:cseg_0a8f - IMAGE_BASE] ; 0x057b
    and al, 0xfe                     ; 0x057f
    out 0x21, al                     ; 0x0581
    sti                              ; 0x0583
    test byte [bp + 0x14], 1         ; 0x0584
    je short io_loc_0592             ; 0x0588
loc_058a:
    test byte [cs:cseg_0a94 - IMAGE_BASE], 0xff ; 0x058a
    je short loc_058a                ; 0x0590
io_loc_0592:
    pop bx                           ; 0x0592
    pop dx                           ; 0x0593
    pop ds                           ; 0x0594
    pop es                           ; 0x0595
    pop si                           ; 0x0596
    pop di                           ; 0x0597
    pop bp                           ; 0x0598
    sti                              ; 0x0599
    ret                              ; 0x059a
loc_059b:
    mov al, 0x34                     ; 0x059b
    out 0x43, al                     ; 0x059d
    mov ax, 0x48                     ; 0x059f
    out 0x40, al                     ; 0x05a2
    call leaf_loc_STGJ               ; 0x05a4
    mov al, ah                       ; 0x05a7
    out 0x40, al                     ; 0x05a9
    mov al, 0xfe                     ; 0x05ab
    out 0x21, al                     ; 0x05ad
    mov ax, es                       ; 0x05af
    mov ds, ax                       ; 0x05b1
    mov cx, 0x20b0                   ; 0x05b3
    mov bx, cseg_193a - IMAGE_BASE   ; 0x05b6
    mov dx, 0x42                     ; 0x05b9
    cmp byte [cs:cseg_0a7d - IMAGE_BASE], 1 ; 0x05bc
    jne short loc_05c7               ; 0x05c2
    mov dx, 0x389                    ; 0x05c4
loc_05c7:
    cmp byte [cs:cseg_0a7d - IMAGE_BASE], 3 ; 0x05c7
    je short loc_05d7                ; 0x05cd
    cmp byte [cs:cseg_0a7d - IMAGE_BASE], 2 ; 0x05cf
    jne short loc_05dc               ; 0x05d5
loc_05d7:
    mov dx, word [cs:cseg_0a8d - IMAGE_BASE] ; 0x05d7
loc_05dc:
    mov si, word [cs:cseg_0a81 - IMAGE_BASE] ; 0x05dc
    sti                              ; 0x05e1
loc_05e2:
    sti                              ; 0x05e2
    test byte [cs:cseg_0a94 - IMAGE_BASE], 0xff ; 0x05e3
    je short loc_05e2                ; 0x05e9
    cmp byte [cs:cseg_0a9a - IMAGE_BASE], 0 ; 0x05eb
    je short loc_0608                ; 0x05f1
    mov al, 0x34                     ; 0x05f3
    out 0x43, al                     ; 0x05f5
    mov ax, word [cs:cseg_0aa6 - IMAGE_BASE] ; 0x05f7
    mov bl, 0x48                     ; 0x05fb
    mul bl                           ; 0x05fd
    out 0x40, al                     ; 0x05ff
    call leaf_loc_STGJ               ; 0x0601
    mov al, ah                       ; 0x0604
    out 0x40, al                     ; 0x0606
loc_0608:
    mov al, byte [cs:cseg_0a8f - IMAGE_BASE] ; 0x0608
    out 0x21, al                     ; 0x060c
    jmp short io_loc_0592            ; 0x060e
