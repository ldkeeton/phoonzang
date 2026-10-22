; auto-generated
graphics_loc_RNOG:
    cmp byte [cs:mouse_present - IMAGE_BASE], 1 ; 0x0516
    jne short @..graphics_loc_RNOG.l1 ; 0x051c
    mov cx, word [cs:mouse_drawn_x - IMAGE_BASE] ; 0x051e
    mov dx, word [cs:mouse_drawn_y - IMAGE_BASE] ; 0x0523
    cmp word [bp + 0x10], cx         ; 0x0528
    jb short @..graphics_loc_RNOG.l1 ; 0x052b
    cmp word [bp + 0x12], dx         ; 0x052d
    jb short @..graphics_loc_RNOG.l1 ; 0x0530
    add cx, word [cs:cseg_14b8 - IMAGE_BASE] ; 0x0532
    dec cx                           ; 0x0537
    add dx, word [cs:cseg_14ba - IMAGE_BASE] ; 0x0538
    dec dx                           ; 0x053d
    cmp cx, word [bp + 0xc]          ; 0x053e
    jb short @..graphics_loc_RNOG.l1 ; 0x0541
    cmp dx, word [bp + 0xe]          ; 0x0543
    jae short @..graphics_loc_RNOG.l2 ; 0x0546
@..graphics_loc_RNOG.l1:
    mov byte [cs:cseg_0515 - IMAGE_BASE], 0 ; 0x0548
    jmp near @..graphics_loc_RNOG.l12 ; 0x054e
@..graphics_loc_RNOG.l2:
    mov byte [cs:cseg_0515 - IMAGE_BASE], 1 ; 0x0551
    mov cx, word [cs:mouse_drawn_x - IMAGE_BASE] ; 0x0557
    mov ax, cx                       ; 0x055c
    cmp word [bp + 0xc], cx          ; 0x055e
    jb short @..graphics_loc_RNOG.l3 ; 0x0561
    mov ax, word [bp + 0xc]          ; 0x0563
@..graphics_loc_RNOG.l3:
    mov word [bp - 0x0006], ax       ; 0x0566
    mov dx, word [cs:mouse_drawn_y - IMAGE_BASE] ; 0x0569
    mov bx, dx                       ; 0x056e
    cmp word [bp + 0xe], dx          ; 0x0570
    jb short @..graphics_loc_RNOG.l4 ; 0x0573
    mov bx, word [bp + 0xe]          ; 0x0575
@..graphics_loc_RNOG.l4:
    mov word [bp - 0x0008], bx       ; 0x0578
    sub ax, cx                       ; 0x057b
    sub bx, dx                       ; 0x057d
    mov word [bp - 0x000a], ax       ; 0x057f
    mov word [bp - 0x000c], bx       ; 0x0582
    mov cx, word [cs:cseg_14b8 - IMAGE_BASE] ; 0x0585
    mov dx, word [cs:cseg_14ba - IMAGE_BASE] ; 0x058a
    sub cx, ax                       ; 0x058f
    mov word [bp - 0x000e], cx       ; 0x0591
    sub dx, bx                       ; 0x0594
    mov word [bp - 0x0010], dx       ; 0x0596
    mov ax, word [bp - 0x0006]       ; 0x0599
    add ax, word [bp - 0x000e]       ; 0x059c
    dec ax                           ; 0x059f
    cmp ax, word [bp + 0x10]         ; 0x05a0
    jb short @..graphics_loc_RNOG.l5 ; 0x05a3
    mov ax, word [bp + 0x10]         ; 0x05a5
    sub ax, word [bp - 0x0006]       ; 0x05a8
    inc ax                           ; 0x05ab
    mov word [bp - 0x000e], ax       ; 0x05ac
@..graphics_loc_RNOG.l5:
    mov ax, word [bp - 0x0008]       ; 0x05af
    add ax, word [bp - 0x0010]       ; 0x05b2
    dec ax                           ; 0x05b5
    cmp ax, word [bp + 0x12]         ; 0x05b6
    jb short @..graphics_loc_RNOG.l6 ; 0x05b9
    mov ax, word [bp + 0x12]         ; 0x05bb
    sub ax, word [bp - 0x0008]       ; 0x05be
    inc ax                           ; 0x05c1
    mov word [bp - 0x0010], ax       ; 0x05c2
@..graphics_loc_RNOG.l6:
    mov ax, word [bp - 0x0008]       ; 0x05c5
    mov bx, 0x140                    ; 0x05c8
    mul bx                           ; 0x05cb
    add ax, word [bp - 0x0006]       ; 0x05cd
    mov si, ax                       ; 0x05d0
    mov ax, word [bp - 0x000c]       ; 0x05d2
    mov bx, word [cs:cseg_14b8 - IMAGE_BASE] ; 0x05d5
    mul bx                           ; 0x05da
    add ax, word [bp - 0x000a]       ; 0x05dc
    add ax, word [cs:cseg_14b4 - IMAGE_BASE] ; 0x05df
    mov di, ax                       ; 0x05e4
    mov ax, word [cs:cseg_00e5 - IMAGE_BASE] ; 0x05e6
    mov ds, ax                       ; 0x05ea
    mov ax, cs                       ; 0x05ec
    mov es, ax                       ; 0x05ee
    mov cx, word [bp - 0x0010]       ; 0x05f0
@..graphics_loc_RNOG.l7:
    push cx                          ; 0x05f3
    push si                          ; 0x05f4
    push di                          ; 0x05f5
    mov cx, word [bp - 0x000e]       ; 0x05f6
    rep movsb                        ; 0x05f9
    pop di                           ; 0x05fb
    add di, word [cs:cseg_14b8 - IMAGE_BASE] ; 0x05fc
    pop si                           ; 0x0601
    add si, strict word 0x140        ; 0x0602
    pop cx                           ; 0x0606
    loop @..graphics_loc_RNOG.l7     ; 0x0607
    mov ax, cs                       ; 0x0609
    mov es, ax                       ; 0x060b
    mov ax, word [cs:cseg_00e5 - IMAGE_BASE] ; 0x060d
    mov ds, ax                       ; 0x0611
    mov si, word [cs:cseg_14bc - IMAGE_BASE] ; 0x0613
    mov di, word [cs:cseg_14b6 - IMAGE_BASE] ; 0x0618
    mov cx, word [cs:cseg_14ba - IMAGE_BASE] ; 0x061d
@..graphics_loc_RNOG.l8:
    push cx                          ; 0x0622
    push si                          ; 0x0623
    mov cx, word [cs:cseg_14b8 - IMAGE_BASE] ; 0x0624
    rep movsb                        ; 0x0629
    pop si                           ; 0x062b
    add si, strict word 0x140        ; 0x062c
    pop cx                           ; 0x0630
    loop @..graphics_loc_RNOG.l8     ; 0x0631
    mov ax, word [cs:cseg_00e5 - IMAGE_BASE] ; 0x0633
    mov es, ax                       ; 0x0637
    mov di, word [cs:cseg_14bc - IMAGE_BASE] ; 0x0639
    mov ax, word [cs:cseg_1d66 - IMAGE_BASE] ; 0x063e
    mov ds, ax                       ; 0x0642
    mov si, word [cs:cseg_1d64 - IMAGE_BASE] ; 0x0644
    mov cx, word [cs:cseg_14ba - IMAGE_BASE] ; 0x0649
    mov ax, ds                       ; 0x064e
    or ax, si                        ; 0x0650
    jne short @..graphics_loc_RNOG.l9 ; 0x0652
    mov si, 0x1e69                   ; 0x0654
    mov ax, cs                       ; 0x0657
    mov ds, ax                       ; 0x0659
@..graphics_loc_RNOG.l9:
    push cx                          ; 0x065b
    push di                          ; 0x065c
    push si                          ; 0x065d
    mov cx, word [cs:cseg_14b8 - IMAGE_BASE] ; 0x065e
@..graphics_loc_RNOG.l10:
    mov al, byte [si]                ; 0x0663
    cmp al, 0xff                     ; 0x0665
    je short @..graphics_loc_RNOG.l11 ; 0x0667
    mov byte [es:di], al             ; 0x0669
@..graphics_loc_RNOG.l11:
    inc si                           ; 0x066c
    inc di                           ; 0x066d
    loop @..graphics_loc_RNOG.l10    ; 0x066e
    pop si                           ; 0x0670
    add si, word [cs:cseg_1d5c - IMAGE_BASE] ; 0x0671
    pop di                           ; 0x0676
    add di, strict word 0x140        ; 0x0677
    pop cx                           ; 0x067b
    loop @..graphics_loc_RNOG.l9     ; 0x067c
@..graphics_loc_RNOG.l12:
    ret                              ; 0x067e
