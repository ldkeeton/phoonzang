; auto-generated
leaf_loc_0447:
    push bp                          ; 0x0447
    mov bp, sp                       ; 0x0448
    push es                          ; 0x044a
    mov ax, ds                       ; 0x044b
    mov es, ax                       ; 0x044d
    mov ax, word [bp + 0xc]          ; 0x044f
    mov word [cs:leaf_loc_0293 - IMAGE_BASE], ax ; 0x0452
    mov ax, word [bp + 0xe]          ; 0x0456
    mov word [cs:cseg_0291 - IMAGE_BASE], ax ; 0x0459
    pop es                           ; 0x045d
    mov sp, bp                       ; 0x045e
    pop bp                           ; 0x0460
    ret                              ; 0x0461
loc_0462:
    push bp                          ; 0x0462
    mov bp, sp                       ; 0x0463
    push es                          ; 0x0465
    mov ax, ds                       ; 0x0466
    mov es, ax                       ; 0x0468
    mov ax, word [bp + 0xc]          ; 0x046a
    mov word [cs:cseg_0295 - IMAGE_BASE], ax ; 0x046d
    mov ax, word [bp + 0xe]          ; 0x0471
    mov word [cs:cseg_0297 - IMAGE_BASE], ax ; 0x0474
    pop es                           ; 0x0478
    mov sp, bp                       ; 0x0479
    pop bp                           ; 0x047b
    ret                              ; 0x047c
loc_047d:
    push bp                          ; 0x047d
    mov bp, sp                       ; 0x047e
    mov ax, word [cs:cseg_0295 - IMAGE_BASE] ; 0x0480
    mov bx, word [bp + 0xc]          ; 0x0484
    mov word [bx], ax                ; 0x0487
    mov ax, word [cs:cseg_0297 - IMAGE_BASE] ; 0x0489
    mov bx, word [bp + 0xe]          ; 0x048d
    mov word [bx], ax                ; 0x0490
    mov sp, bp                       ; 0x0492
    pop bp                           ; 0x0494
    ret                              ; 0x0495
loc_0496:
    push bp                          ; 0x0496
    mov bp, sp                       ; 0x0497
    push es                          ; 0x0499
    push di                          ; 0x049a
    mov ax, word [cs:cseg_01e5 - IMAGE_BASE] ; 0x049b
    mov es, ax                       ; 0x049f
    xor di, di                       ; 0x04a1
    mov ax, word [bp + 0xc]          ; 0x04a3
    mov cx, 0xfa00                   ; 0x04a6
    rep stosb                        ; 0x04a9
    pop di                           ; 0x04ab
    pop es                           ; 0x04ac
    mov sp, bp                       ; 0x04ad
    pop bp                           ; 0x04af
    ret                              ; 0x04b0
loc_04b1:
    push bp                          ; 0x04b1
    mov bp, sp                       ; 0x04b2
    sub sp, byte 0x36                ; 0x04b4
    push ds                          ; 0x04b7
    push es                          ; 0x04b8
    push di                          ; 0x04b9
    push si                          ; 0x04ba
    xor ax, ax                       ; 0x04bb
    mov word [bp - 0x002e], ax       ; 0x04bd
    mov word [bp - 0x002a], ax       ; 0x04c0
    mov word [bp - 0x0036], ax       ; 0x04c3
    mov ax, ds                       ; 0x04c6
    mov es, ax                       ; 0x04c8
    call leaf_loc_1900               ; 0x04ca
    call graphics_loc_0949           ; 0x04cd
    mov ax, word [cs:cseg_01e5 - IMAGE_BASE] ; 0x04d0
    mov ds, ax                       ; 0x04d4
    mov ax, 0xa000                   ; 0x04d6
    mov es, ax                       ; 0x04d9
    mov ax, word [bp + 0xe]          ; 0x04db
    mov bx, 0x50                     ; 0x04de
    mul bx                           ; 0x04e1
    mov bx, word [bp + 0xc]          ; 0x04e3
    mov cl, 2                        ; 0x04e6
    shr bx, cl                       ; 0x04e8
    add ax, bx                       ; 0x04ea
    mov word [bp - 0x0002], ax       ; 0x04ec
    mov cx, word [bp + 0xc]          ; 0x04ef
    and cl, 3                        ; 0x04f2
    shl cl, 1                        ; 0x04f5
    mov al, 0x80                     ; 0x04f7
    shr al, cl                       ; 0x04f9
    mov byte [bp - 0x0014], al       ; 0x04fb
    mov ax, word [bp + 0xe]          ; 0x04fe
    mov bx, 0x140                    ; 0x0501
    mul bx                           ; 0x0504
    add ax, word [bp + 0xc]          ; 0x0506
    mov word [bp - 0x0012], ax       ; 0x0509
    mov ax, word [bp + 0x10]         ; 0x050c
    sub ax, word [bp + 0xc]          ; 0x050f
    inc ax                           ; 0x0512
    mov word [bp - 0x0004], ax       ; 0x0513
    mov ax, word [bp + 0x12]         ; 0x0516
    sub ax, word [bp + 0xe]          ; 0x0519
    inc ax                           ; 0x051c
    mov word [bp - 0x0016], ax       ; 0x051d
    xor ax, ax                       ; 0x0520
    mov word [bp - 0x0026], ax       ; 0x0522
    mov ax, word [bp + 0x10]         ; 0x0525
    mov bx, word [bp + 0xc]          ; 0x0528
    mov dx, bx                       ; 0x052b
    sub ax, bx                       ; 0x052d
    inc ax                           ; 0x052f
    and dx, 3                        ; 0x0530
    je short @..loc_04b1.l1          ; 0x0534
    inc word [bp - 0x0026]           ; 0x0536
@..loc_04b1.l1:
    mov bx, 4                        ; 0x0539
    sub bx, dx                       ; 0x053c
    and bl, 3                        ; 0x053e
    mov dx, bx                       ; 0x0541
    mov word [bp - 0x0028], dx       ; 0x0543
    sub ax, dx                       ; 0x0546
    jae short @..loc_04b1.l2         ; 0x0548
    add ax, dx                       ; 0x054a
    mov word [bp - 0x0028], ax       ; 0x054c
    mov byte [bp - 0x0036], 1        ; 0x054f
    jmp near @..loc_04b1.l4          ; 0x0553
@..loc_04b1.l2:
    mov dx, ax                       ; 0x0556
    shr ax, 1                        ; 0x0558
    shr ax, 1                        ; 0x055a
    add word [bp - 0x0026], ax       ; 0x055c
    mov word [bp - 0x002e], ax       ; 0x055f
    and dx, 3                        ; 0x0562
    je short @..loc_04b1.l3          ; 0x0566
    inc word [bp - 0x0026]           ; 0x0568
@..loc_04b1.l3:
    shl dx, 1                        ; 0x056b
    mov word [bp - 0x002a], dx       ; 0x056d
@..loc_04b1.l4:
    mov ax, word [bp - 0x0016]       ; 0x0570
    mov bx, word [bp - 0x0026]       ; 0x0573
    mul bx                           ; 0x0576
    mov word [bp - 0x0024], ax       ; 0x0578
    shl ax, 1                        ; 0x057b
    mov word [bp - 0x0032], ax       ; 0x057d
    add ax, word [bp - 0x0024]       ; 0x0580
    mov word [bp - 0x0034], ax       ; 0x0583
    add ax, word [bp - 0x0024]       ; 0x0586
    add ax, strict word 0xf          ; 0x0589
    mov cl, 4                        ; 0x058c
    shr ax, cl                       ; 0x058e
    add ax, word [cs:cseg_11cd - IMAGE_BASE] ; 0x0590
    cmp ax, 0x4180                   ; 0x0595
    jae short @..loc_04b1.l5         ; 0x0598
    cmp byte [bp - 0x0036], 0        ; 0x059a
    jne short @..loc_04b1.l5         ; 0x059e
    jmp near @..loc_04b1.l11         ; 0x05a0
@..loc_04b1.l5:
    jmp near @..loc_04b1.l6          ; 0x05a3
@..loc_04b1.l6:
    shl word [bp - 0x0004], 1        ; 0x05a6
    mov dx, 0x3ce                    ; 0x05a9
    mov al, 5                        ; 0x05ac
    out dx, al                       ; 0x05ae
    inc dx                           ; 0x05af
    mov al, 2                        ; 0x05b0
    out dx, al                       ; 0x05b2
    mov dx, 0x3ce                    ; 0x05b3
    mov al, 8                        ; 0x05b6
    out dx, al                       ; 0x05b8
    inc dx                           ; 0x05b9
@..loc_04b1.l7:
    mov di, word [bp - 0x0002]       ; 0x05ba
    mov si, word [bp - 0x0012]       ; 0x05bd
    mov bx, 0x33b3                   ; 0x05c0
    mov cl, 4                        ; 0x05c3
    test byte [bp - 0x0014], 0xaa    ; 0x05c5
    jne short @..loc_04b1.l8         ; 0x05c9
    xor cl, cl                       ; 0x05cb
    inc word [bp - 0x0012]           ; 0x05cd
@..loc_04b1.l8:
    mov dx, 0x3cf                    ; 0x05d0
    mov al, byte [bp - 0x0014]       ; 0x05d3
    out dx, al                       ; 0x05d6
    ror byte [bp - 0x0014], 1        ; 0x05d7
    cmp byte [bp - 0x0014], 0x80     ; 0x05da
    jne short @..loc_04b1.l9         ; 0x05de
    inc word [bp - 0x0002]           ; 0x05e0
@..loc_04b1.l9:
    mov dx, word [bp - 0x0016]       ; 0x05e3
@..loc_04b1.l10:
    lodsb                            ; 0x05e6
    add si, strict word 0x13f        ; 0x05e7
    cs xlatb                         ; 0x05eb
    shr al, cl                       ; 0x05ed
    mov ch, byte [es:di]             ; 0x05ef
    mov byte [es:di], al             ; 0x05f2
    add di, byte 0x50                ; 0x05f5
    dec dx                           ; 0x05f8
    jne short @..loc_04b1.l10        ; 0x05f9
    dec word [bp - 0x0004]           ; 0x05fb
    jne short @..loc_04b1.l7         ; 0x05fe
    mov al, 0xff                     ; 0x0600
    mov dx, 0x3cf                    ; 0x0602
    out dx, al                       ; 0x0605
    mov dx, 0x3ce                    ; 0x0606
    mov al, 5                        ; 0x0609
    out dx, al                       ; 0x060b
    inc dx                           ; 0x060c
    mov al, 0                        ; 0x060d
    out dx, al                       ; 0x060f
    call leaf_loc_0b91               ; 0x0610
    call bios_mouse_loc_18c1         ; 0x0613
    pop si                           ; 0x0616
    pop di                           ; 0x0617
    pop es                           ; 0x0618
    pop ds                           ; 0x0619
    mov sp, bp                       ; 0x061a
    pop bp                           ; 0x061c
    ret                              ; 0x061d
@..loc_04b1.l11:
    mov ax, word [cs:cseg_11cd - IMAGE_BASE] ; 0x061e
    add ax, word [cs:cseg_01e1 - IMAGE_BASE] ; 0x0622
    mov es, ax                       ; 0x0627
    mov ax, 0xa000                   ; 0x0629
    mov ds, ax                       ; 0x062c
    xor di, di                       ; 0x062e
    mov cx, word [bp - 0x0032]       ; 0x0630
    xor ax, ax                       ; 0x0633
    rep stosw                        ; 0x0635
    mov dx, 0x3ce                    ; 0x0637
    mov al, 5                        ; 0x063a
    out dx, al                       ; 0x063c
    inc dx                           ; 0x063d
    mov al, 0                        ; 0x063e
    out dx, al                       ; 0x0640
    mov cx, word [bp - 0x0028]       ; 0x0641
    or cx, cx                        ; 0x0644
    jne short @..loc_04b1.l12        ; 0x0646
    jmp near @..loc_04b1.l17         ; 0x0648
@..loc_04b1.l12:
    shl cx, 1                        ; 0x064b
    mov dx, 0x3ce                    ; 0x064d
    mov al, 4                        ; 0x0650
    out dx, al                       ; 0x0652
    inc dx                           ; 0x0653
    mov al, 0                        ; 0x0654
    out dx, al                       ; 0x0656
    xor di, di                       ; 0x0657
    mov si, word [bp - 0x0002]       ; 0x0659
    mov bx, word [bp - 0x0016]       ; 0x065c
@..loc_04b1.l13:
    mov al, byte [si]                ; 0x065f
    shr al, cl                       ; 0x0661
    mov byte [es:di], al             ; 0x0663
    add si, byte 0x50                ; 0x0666
    add di, word [bp - 0x0026]       ; 0x0669
    dec bx                           ; 0x066c
    jne short @..loc_04b1.l13        ; 0x066d
    mov dx, 0x3ce                    ; 0x066f
    mov al, 4                        ; 0x0672
    out dx, al                       ; 0x0674
    inc dx                           ; 0x0675
    mov al, 1                        ; 0x0676
    out dx, al                       ; 0x0678
    mov di, word [bp - 0x0024]       ; 0x0679
    mov si, word [bp - 0x0002]       ; 0x067c
    mov bx, word [bp - 0x0016]       ; 0x067f
@..loc_04b1.l14:
    mov al, byte [si]                ; 0x0682
    shr al, cl                       ; 0x0684
    mov byte [es:di], al             ; 0x0686
    add si, byte 0x50                ; 0x0689
    add di, word [bp - 0x0026]       ; 0x068c
    dec bx                           ; 0x068f
    jne short @..loc_04b1.l14        ; 0x0690
    mov dx, 0x3ce                    ; 0x0692
    mov al, 4                        ; 0x0695
    out dx, al                       ; 0x0697
    inc dx                           ; 0x0698
    mov al, 2                        ; 0x0699
    out dx, al                       ; 0x069b
    mov di, word [bp - 0x0032]       ; 0x069c
    mov si, word [bp - 0x0002]       ; 0x069f
    mov bx, word [bp - 0x0016]       ; 0x06a2
@..loc_04b1.l15:
    mov al, byte [si]                ; 0x06a5
    shr al, cl                       ; 0x06a7
    mov byte [es:di], al             ; 0x06a9
    add si, byte 0x50                ; 0x06ac
    add di, word [bp - 0x0026]       ; 0x06af
    dec bx                           ; 0x06b2
    jne short @..loc_04b1.l15        ; 0x06b3
    mov dx, 0x3ce                    ; 0x06b5
    mov al, 4                        ; 0x06b8
    out dx, al                       ; 0x06ba
    inc dx                           ; 0x06bb
    mov al, 3                        ; 0x06bc
    out dx, al                       ; 0x06be
    mov di, word [bp - 0x0034]       ; 0x06bf
    mov si, word [bp - 0x0002]       ; 0x06c2
    mov bx, word [bp - 0x0016]       ; 0x06c5
@..loc_04b1.l16:
    mov al, byte [si]                ; 0x06c8
    shr al, cl                       ; 0x06ca
    mov byte [es:di], al             ; 0x06cc
    add si, byte 0x50                ; 0x06cf
    add di, word [bp - 0x0026]       ; 0x06d2
    dec bx                           ; 0x06d5
    jne short @..loc_04b1.l16        ; 0x06d6
@..loc_04b1.l17:
    mov cx, word [bp - 0x002a]       ; 0x06d8
    or cx, cx                        ; 0x06db
    jne short @..loc_04b1.l18        ; 0x06dd
    jmp near @..loc_04b1.l23         ; 0x06df
@..loc_04b1.l18:
    mov di, word [bp - 0x0026]       ; 0x06e2
    dec di                           ; 0x06e5
    mov si, word [bp - 0x0002]       ; 0x06e6
    add si, di                       ; 0x06e9
    push si                          ; 0x06eb
    mov dx, 0x3ce                    ; 0x06ec
    mov al, 4                        ; 0x06ef
    out dx, al                       ; 0x06f1
    inc dx                           ; 0x06f2
    mov al, 0                        ; 0x06f3
    out dx, al                       ; 0x06f5
    pop si                           ; 0x06f6
    push si                          ; 0x06f7
    mov bx, word [bp - 0x0016]       ; 0x06f8
@..loc_04b1.l19:
    mov al, byte [si]                ; 0x06fb
    shl al, cl                       ; 0x06fd
    mov byte [es:di], al             ; 0x06ff
    add si, byte 0x50                ; 0x0702
    add di, word [bp - 0x0026]       ; 0x0705
    dec bx                           ; 0x0708
    jne short @..loc_04b1.l19        ; 0x0709
    mov dx, 0x3ce                    ; 0x070b
    mov al, 4                        ; 0x070e
    out dx, al                       ; 0x0710
    inc dx                           ; 0x0711
    mov al, 1                        ; 0x0712
    out dx, al                       ; 0x0714
    mov di, word [bp - 0x0026]       ; 0x0715
    dec di                           ; 0x0718
    add di, word [bp - 0x0024]       ; 0x0719
    pop si                           ; 0x071c
    push si                          ; 0x071d
    mov bx, word [bp - 0x0016]       ; 0x071e
@..loc_04b1.l20:
    mov al, byte [si]                ; 0x0721
    shl al, cl                       ; 0x0723
    mov byte [es:di], al             ; 0x0725
    add si, byte 0x50                ; 0x0728
    add di, word [bp - 0x0026]       ; 0x072b
    dec bx                           ; 0x072e
    jne short @..loc_04b1.l20        ; 0x072f
    mov dx, 0x3ce                    ; 0x0731
    mov al, 4                        ; 0x0734
    out dx, al                       ; 0x0736
    inc dx                           ; 0x0737
    mov al, 2                        ; 0x0738
    out dx, al                       ; 0x073a
    mov di, word [bp - 0x0026]       ; 0x073b
    dec di                           ; 0x073e
    add di, word [bp - 0x0032]       ; 0x073f
    pop si                           ; 0x0742
    push si                          ; 0x0743
    mov bx, word [bp - 0x0016]       ; 0x0744
@..loc_04b1.l21:
    mov al, byte [si]                ; 0x0747
    shl al, cl                       ; 0x0749
    mov byte [es:di], al             ; 0x074b
    add si, byte 0x50                ; 0x074e
    add di, word [bp - 0x0026]       ; 0x0751
    dec bx                           ; 0x0754
    jne short @..loc_04b1.l21        ; 0x0755
    mov dx, 0x3ce                    ; 0x0757
    mov al, 4                        ; 0x075a
    out dx, al                       ; 0x075c
    inc dx                           ; 0x075d
    mov al, 3                        ; 0x075e
    out dx, al                       ; 0x0760
    mov di, word [bp - 0x0026]       ; 0x0761
    dec di                           ; 0x0764
    add di, word [bp - 0x0034]       ; 0x0765
    pop si                           ; 0x0768
    mov bx, word [bp - 0x0016]       ; 0x0769
@..loc_04b1.l22:
    mov al, byte [si]                ; 0x076c
    shl al, cl                       ; 0x076e
    mov byte [es:di], al             ; 0x0770
    add si, byte 0x50                ; 0x0773
    add di, word [bp - 0x0026]       ; 0x0776
    dec bx                           ; 0x0779
    jne short @..loc_04b1.l22        ; 0x077a
@..loc_04b1.l23:
    mov ax, word [cs:cseg_01e5 - IMAGE_BASE] ; 0x077c
    mov ds, ax                       ; 0x0780
    xor di, di                       ; 0x0782
    mov cx, word [bp - 0x0016]       ; 0x0784
@..loc_04b1.l24:
    push cx                          ; 0x0787
    mov si, word [bp - 0x0012]       ; 0x0788
    add word [bp - 0x0012], strict word 0x140 ; 0x078b
    mov cx, word [bp - 0x0028]       ; 0x0790
    or cx, cx                        ; 0x0793
    je short @..loc_04b1.l26         ; 0x0795
    mov byte [bp - 0x002c], cl       ; 0x0797
    mov cl, byte [es:di]             ; 0x079a
    mov bx, word [bp - 0x0024]       ; 0x079d
    mov ch, byte [es:bx + di]        ; 0x07a0
    add bx, word [bp - 0x0024]       ; 0x07a3
    mov dl, byte [es:bx + di]        ; 0x07a6
    add bx, word [bp - 0x0024]       ; 0x07a9
    mov dh, byte [es:bx + di]        ; 0x07ac
@..loc_04b1.l25:
    mov bx, 0x33b3                   ; 0x07af
    lodsb                            ; 0x07b2
    cs xlatb                         ; 0x07b3
    rcl al, 1                        ; 0x07b5
    rcl dh, 1                        ; 0x07b7
    rcl al, 1                        ; 0x07b9
    rcl dl, 1                        ; 0x07bb
    rcl al, 1                        ; 0x07bd
    rcl ch, 1                        ; 0x07bf
    rcl al, 1                        ; 0x07c1
    rcl cl, 1                        ; 0x07c3
    rcl al, 1                        ; 0x07c5
    rcl dh, 1                        ; 0x07c7
    rcl al, 1                        ; 0x07c9
    rcl dl, 1                        ; 0x07cb
    rcl al, 1                        ; 0x07cd
    rcl ch, 1                        ; 0x07cf
    rcl al, 1                        ; 0x07d1
    rcl cl, 1                        ; 0x07d3
    dec byte [bp - 0x002c]           ; 0x07d5
    jne short @..loc_04b1.l25        ; 0x07d8
    mov byte [es:di], cl             ; 0x07da
    mov bx, word [bp - 0x0024]       ; 0x07dd
    mov byte [es:bx + di], ch        ; 0x07e0
    add bx, word [bp - 0x0024]       ; 0x07e3
    mov byte [es:bx + di], dl        ; 0x07e6
    add bx, word [bp - 0x0024]       ; 0x07e9
    mov byte [es:bx + di], dh        ; 0x07ec
    inc di                           ; 0x07ef
@..loc_04b1.l26:
    mov ax, word [bp - 0x002e]       ; 0x07f0
    or ax, ax                        ; 0x07f3
    je short @..loc_04b1.l29         ; 0x07f5
    mov word [bp - 0x002c], ax       ; 0x07f7
@..loc_04b1.l27:
    xor cx, cx                       ; 0x07fa
    xor dx, dx                       ; 0x07fc
    mov byte [bp - 0x0030], 4        ; 0x07fe
@..loc_04b1.l28:
    mov bx, 0x33b3                   ; 0x0802
    lodsb                            ; 0x0805
    cs xlatb                         ; 0x0806
    rcl al, 1                        ; 0x0808
    rcl dh, 1                        ; 0x080a
    rcl al, 1                        ; 0x080c
    rcl dl, 1                        ; 0x080e
    rcl al, 1                        ; 0x0810
    rcl ch, 1                        ; 0x0812
    rcl al, 1                        ; 0x0814
    rcl cl, 1                        ; 0x0816
    rcl al, 1                        ; 0x0818
    rcl dh, 1                        ; 0x081a
    rcl al, 1                        ; 0x081c
    rcl dl, 1                        ; 0x081e
    rcl al, 1                        ; 0x0820
    rcl ch, 1                        ; 0x0822
    rcl al, 1                        ; 0x0824
    rcl cl, 1                        ; 0x0826
    dec byte [bp - 0x0030]           ; 0x0828
    jne short @..loc_04b1.l28        ; 0x082b
    mov byte [es:di], cl             ; 0x082d
    mov bx, word [bp - 0x0024]       ; 0x0830
    mov byte [es:bx + di], ch        ; 0x0833
    add bx, word [bp - 0x0024]       ; 0x0836
    mov byte [es:bx + di], dl        ; 0x0839
    add bx, word [bp - 0x0024]       ; 0x083c
    mov byte [es:bx + di], dh        ; 0x083f
    inc di                           ; 0x0842
    dec word [bp - 0x002c]           ; 0x0843
    jne short @..loc_04b1.l27        ; 0x0846
@..loc_04b1.l29:
    mov ax, word [bp - 0x002a]       ; 0x0848
    mov byte [bp - 0x002c], al       ; 0x084b
    or al, al                        ; 0x084e
    je short @..loc_04b1.l31         ; 0x0850
    xor ah, ah                       ; 0x0852
    shr ax, 1                        ; 0x0854
    dec ax                           ; 0x0856
    add si, ax                       ; 0x0857
    mov cl, byte [es:di]             ; 0x0859
    mov bx, word [bp - 0x0024]       ; 0x085c
    mov ch, byte [es:bx + di]        ; 0x085f
    add bx, word [bp - 0x0024]       ; 0x0862
    mov dl, byte [es:bx + di]        ; 0x0865
    add bx, word [bp - 0x0024]       ; 0x0868
    mov dh, byte [es:bx + di]        ; 0x086b
@..loc_04b1.l30:
    mov bx, 0x33b3                   ; 0x086e
    mov al, byte [si]                ; 0x0871
    dec si                           ; 0x0873
    cs xlatb                         ; 0x0874
    rcr al, 1                        ; 0x0876
    rcr cl, 1                        ; 0x0878
    rcr al, 1                        ; 0x087a
    rcr ch, 1                        ; 0x087c
    rcr al, 1                        ; 0x087e
    rcr dl, 1                        ; 0x0880
    rcr al, 1                        ; 0x0882
    rcr dh, 1                        ; 0x0884
    rcr al, 1                        ; 0x0886
    rcr cl, 1                        ; 0x0888
    rcr al, 1                        ; 0x088a
    rcr ch, 1                        ; 0x088c
    rcr al, 1                        ; 0x088e
    rcr dl, 1                        ; 0x0890
    rcr al, 1                        ; 0x0892
    rcr dh, 1                        ; 0x0894
    sub byte [bp - 0x002c], 2        ; 0x0896
    jne short @..loc_04b1.l30        ; 0x089a
    mov byte [es:di], cl             ; 0x089c
    mov bx, word [bp - 0x0024]       ; 0x089f
    mov byte [es:bx + di], ch        ; 0x08a2
    add bx, word [bp - 0x0024]       ; 0x08a5
    mov byte [es:bx + di], dl        ; 0x08a8
    add bx, word [bp - 0x0024]       ; 0x08ab
    mov byte [es:bx + di], dh        ; 0x08ae
    inc di                           ; 0x08b1
@..loc_04b1.l31:
    pop cx                           ; 0x08b2
    dec cx                           ; 0x08b3
    je short @..loc_04b1.l32         ; 0x08b4
    jmp near @..loc_04b1.l24         ; 0x08b6
@..loc_04b1.l32:
    mov ax, 0xa000                   ; 0x08b9
    mov es, ax                       ; 0x08bc
    mov ax, word [cs:cseg_01e1 - IMAGE_BASE] ; 0x08be
    add ax, word [cs:cseg_11cd - IMAGE_BASE] ; 0x08c2
    mov ds, ax                       ; 0x08c7
    xor si, si                       ; 0x08c9
    mov di, word [bp - 0x0002]       ; 0x08cb
    mov cx, word [bp - 0x0016]       ; 0x08ce
@..loc_04b1.l33:
    push cx                          ; 0x08d1
    mov dx, 0x3c4                    ; 0x08d2
    mov al, 2                        ; 0x08d5
    out dx, al                       ; 0x08d7
    inc dx                           ; 0x08d8
    mov al, 1                        ; 0x08d9
    out dx, al                       ; 0x08db
    push si                          ; 0x08dc
    push di                          ; 0x08dd
    mov cx, word [bp - 0x0026]       ; 0x08de
    rep movsb                        ; 0x08e1
    pop di                           ; 0x08e3
    pop si                           ; 0x08e4
    mov dx, 0x3c4                    ; 0x08e5
    mov al, 2                        ; 0x08e8
    out dx, al                       ; 0x08ea
    inc dx                           ; 0x08eb
    mov al, 2                        ; 0x08ec
    out dx, al                       ; 0x08ee
    push si                          ; 0x08ef
    push di                          ; 0x08f0
    add si, word [bp - 0x0024]       ; 0x08f1
    mov cx, word [bp - 0x0026]       ; 0x08f4
    rep movsb                        ; 0x08f7
    pop di                           ; 0x08f9
    pop si                           ; 0x08fa
    mov dx, 0x3c4                    ; 0x08fb
    mov al, 2                        ; 0x08fe
    out dx, al                       ; 0x0900
    inc dx                           ; 0x0901
    mov al, 4                        ; 0x0902
    out dx, al                       ; 0x0904
    push si                          ; 0x0905
    push di                          ; 0x0906
    add si, word [bp - 0x0032]       ; 0x0907
    mov cx, word [bp - 0x0026]       ; 0x090a
    rep movsb                        ; 0x090d
    pop di                           ; 0x090f
    pop si                           ; 0x0910
    mov dx, 0x3c4                    ; 0x0911
    mov al, 2                        ; 0x0914
    out dx, al                       ; 0x0916
    inc dx                           ; 0x0917
    mov al, 8                        ; 0x0918
    out dx, al                       ; 0x091a
    push si                          ; 0x091b
    push di                          ; 0x091c
    add si, word [bp - 0x0034]       ; 0x091d
    mov cx, word [bp - 0x0026]       ; 0x0920
    rep movsb                        ; 0x0923
    pop di                           ; 0x0925
    pop si                           ; 0x0926
    add di, byte 0x50                ; 0x0927
    add si, word [bp - 0x0026]       ; 0x092a
    pop cx                           ; 0x092d
    loop @..loc_04b1.l33             ; 0x092e
    mov dx, 0x3c4                    ; 0x0930
    mov al, 2                        ; 0x0933
    out dx, al                       ; 0x0935
    inc dx                           ; 0x0936
    mov al, 0xf                      ; 0x0937
    out dx, al                       ; 0x0939
    call leaf_loc_0b91               ; 0x093a
    call bios_mouse_loc_18c1         ; 0x093d
    pop si                           ; 0x0940
    pop di                           ; 0x0941
    pop es                           ; 0x0942
    pop ds                           ; 0x0943
    mov sp, bp                       ; 0x0944
    pop bp                           ; 0x0946
    ret                              ; 0x0947
    db 0x00
