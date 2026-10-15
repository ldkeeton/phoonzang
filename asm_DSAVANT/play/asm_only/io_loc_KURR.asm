; auto-generated
; asm only
io_loc_KURR:
    in al, 0x19                      ; 0x0495
    scasw                            ; 0x0497
    or word [bx - 0x60f6], bx        ; 0x0498
    or ah, ah                        ; 0x049c
    sbb word [bx - 0x60f7], bp       ; 0x049e
    or bl, byte [bx + 0x410a]        ; 0x04a2
    or ax, word [bx + di + 0x9]      ; 0x04a6
    jne short loc_KILL               ; 0x04a9
    jne short @..io_loc_KURR.l1      ; 0x04ab
    inc cx                           ; 0x04ad
    or ax, word [bx + di + 0x9]      ; 0x04ae
    jne short loc_THPG               ; 0x04b1
    jne short loc_MGJU               ; 0x04b3
loc_KILL:
    cld                              ; 0x04b5
    db 0x33
@..io_loc_KURR.l1:
    db 0xc0
    mov es, ax                       ; 0x04b8
    mov di, 0x20                     ; 0x04ba
loc_THPG:
    mov ax, dx                       ; 0x04bd
loc_MGJU:
    stosw                            ; 0x04bf
    mov ax, cs                       ; 0x04c0
    stosw                            ; 0x04c2
loc_SKML:
    cli                              ; 0x04c3
    cmp byte [cs:cseg_0a7d - IMAGE_BASE], 1 ; 0x04c4
    jne short loc_UGTR               ; 0x04ca
    mov al, 0                        ; 0x04cc
    cmp byte [cs:cseg_0a94 - IMAGE_BASE], 0 ; 0x04ce
    je short loc_OSUU                ; 0x04d4
    mov al, 0xff                     ; 0x04d6
loc_OSUU:
    mov byte [cs:cseg_08ae - IMAGE_BASE], al ; 0x04d8
loc_UGTR:
    cmp byte [cs:cseg_0a7d - IMAGE_BASE], 0 ; 0x04dc
    jne short loc_NKOO               ; 0x04e2
    in al, 0x61                      ; 0x04e4
    or al, 3                         ; 0x04e6
    out 0x61, al                     ; 0x04e8
loc_NKOO:
    call leaf_loc_QNLL               ; 0x04ea
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
    je short loc_SNTT                ; 0x055d
    cmp byte [cs:cseg_0a7d - IMAGE_BASE], 4 ; 0x055f
    jne short loc_PORI               ; 0x0565
loc_SNTT:
    mov dx, 0x388                    ; 0x0567
    mov al, 0x40                     ; 0x056a
    out dx, al                       ; 0x056c
loc_PORI:
    mov byte [cs:cseg_0a94 - IMAGE_BASE], 0 ; 0x056d
    cmp byte [cs:cseg_0a90 - IMAGE_BASE], 0 ; 0x0573
    jne short loc_SUPI               ; 0x0579
    mov al, byte [cs:cseg_0a8f - IMAGE_BASE] ; 0x057b
    and al, 0xfe                     ; 0x057f
    out 0x21, al                     ; 0x0581
    sti                              ; 0x0583
    test byte [bp + 0x14], 1         ; 0x0584
    je short loc_JRLR                ; 0x0588
loc_KJUS:
    test byte [cs:cseg_0a94 - IMAGE_BASE], 0xff ; 0x058a
    je short loc_KJUS                ; 0x0590
loc_JRLR:
    pop bx                           ; 0x0592
    pop dx                           ; 0x0593
    pop ds                           ; 0x0594
    pop es                           ; 0x0595
    pop si                           ; 0x0596
    pop di                           ; 0x0597
    pop bp                           ; 0x0598
    sti                              ; 0x0599
    ret                              ; 0x059a
loc_SUPI:
    mov al, 0x34                     ; 0x059b
    out 0x43, al                     ; 0x059d
    mov ax, 0x48                     ; 0x059f
    out 0x40, al                     ; 0x05a2
    call leaf_loc_KROT               ; 0x05a4
    mov al, ah                       ; 0x05a7
    out 0x40, al                     ; 0x05a9
    mov al, 0xfe                     ; 0x05ab
    out 0x21, al                     ; 0x05ad
    mov ax, es                       ; 0x05af
    mov ds, ax                       ; 0x05b1
    mov cx, 0x20b0                   ; 0x05b3
    mov bx, 0x1a3a                   ; 0x05b6
    mov dx, 0x42                     ; 0x05b9
    cmp byte [cs:cseg_0a7d - IMAGE_BASE], 1 ; 0x05bc
    jne short loc_PVIL               ; 0x05c2
    mov dx, 0x389                    ; 0x05c4
loc_PVIL:
    cmp byte [cs:cseg_0a7d - IMAGE_BASE], 3 ; 0x05c7
    je short loc_PQMO                ; 0x05cd
    cmp byte [cs:cseg_0a7d - IMAGE_BASE], 2 ; 0x05cf
    jne short loc_OUVP               ; 0x05d5
loc_PQMO:
    mov dx, word [cs:cseg_0a8d - IMAGE_BASE] ; 0x05d7
loc_OUVP:
    mov si, word [cs:cseg_0a81 - IMAGE_BASE] ; 0x05dc
    sti                              ; 0x05e1
loc_KUGK:
    sti                              ; 0x05e2
    test byte [cs:cseg_0a94 - IMAGE_BASE], 0xff ; 0x05e3
    je short loc_KUGK                ; 0x05e9
    cmp byte [cs:cseg_0a9a - IMAGE_BASE], 0 ; 0x05eb
    je short loc_LVMN                ; 0x05f1
    mov al, 0x34                     ; 0x05f3
    out 0x43, al                     ; 0x05f5
    mov ax, word [cs:cseg_0aa6 - IMAGE_BASE] ; 0x05f7
    mov bl, 0x48                     ; 0x05fb
    mul bl                           ; 0x05fd
    out 0x40, al                     ; 0x05ff
    call leaf_loc_KROT               ; 0x0601
    mov al, ah                       ; 0x0604
    out 0x40, al                     ; 0x0606
loc_LVMN:
    mov al, byte [cs:cseg_0a8f - IMAGE_BASE] ; 0x0608
    out 0x21, al                     ; 0x060c
    jmp short loc_JRLR               ; 0x060e
