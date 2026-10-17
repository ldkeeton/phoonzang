; auto-generated
; asm only
loc_HQPU:
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
    je short io_loc_HMTR             ; 0x0588
loc_058a:
    test byte [cs:cseg_0a94 - IMAGE_BASE], 0xff ; 0x058a
    je short loc_058a                ; 0x0590
