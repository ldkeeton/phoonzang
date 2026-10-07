io_loc_0495:
    in al, 0x19                      ; 0x0495
    scasw                            ; 0x0497
    or word [bx - 0x60f6], bx        ; 0x0498
    or ah, ah                        ; 0x049c
    sbb word [bx - 0x60f7], bp       ; 0x049e
    or bl, byte [bx + 0x410a]        ; 0x04a2
    or ax, word [bx + di + 0x9]      ; 0x04a6
    jne short loc_04b5               ; 0x04a9
    jne short @..io_loc_0495.l1      ; 0x04ab
    inc cx                           ; 0x04ad
    or ax, word [bx + di + 0x9]      ; 0x04ae
    jne short loc_04bd               ; 0x04b1
    jne short loc_04bf               ; 0x04b3
loc_04b5:
    cld                              ; 0x04b5
    db 0x33
@..io_loc_0495.l1:
    db 0xc0
    mov es, ax                       ; 0x04b8
    mov di, 0x20                     ; 0x04ba
loc_04bd:
    mov ax, dx                       ; 0x04bd
loc_04bf:
    stosw                            ; 0x04bf
    mov ax, cs                       ; 0x04c0
    stosw                            ; 0x04c2
loc_04c3:
    cli                              ; 0x04c3
    cmp byte [cs:data_0b7d], 1       ; 0x04c4
    jne short loc_04dc               ; 0x04ca
    mov al, 0                        ; 0x04cc
    cmp byte [cs:data_0b94], 0       ; 0x04ce
    je short loc_04d8                ; 0x04d4
    mov al, 0xff                     ; 0x04d6
loc_04d8:
    mov byte [cs:data_09ae], al      ; 0x04d8
loc_04dc:
    cmp byte [cs:data_0b7d], 0       ; 0x04dc
    jne short loc_04ea               ; 0x04e2
    in al, 0x61                      ; 0x04e4
    or al, 3                         ; 0x04e6
    out 0x61, al                     ; 0x04e8
loc_04ea:
    call leaf_loc_077b               ; 0x04ea
    mov al, strlen                   ; 0x04ed
    out 0x21, al                     ; 0x04ef
    mov ax, word [bp + 0x8]          ; 0x04f1
    add ax, word [bp + 0xe]          ; 0x04f4
    mov cl, 4                        ; 0x04f7
    shr ax, cl                       ; 0x04f9
    add ax, word [bp + 0xa]          ; 0x04fb
    sub ax, 0x1000                   ; 0x04fe
    mov es, ax                       ; 0x0501
    mov ds, ax                       ; 0x0503
    mov word [cs:data_19e8], ax      ; 0x0505
    mov word [cs:data_09bf], ax      ; 0x0509
    mov word [cs:data_0aa4], ax      ; 0x050d
    mov ax, word [bp + 0xe]          ; 0x0511
    sub ax, word [bp + 0xc]          ; 0x0514
    neg ax                           ; 0x0517
    and al, strlen                   ; 0x0519
    add ax, strict word 0x10         ; 0x051b
    mov di, ax                       ; 0x051e
    mov bx, ax                       ; 0x0520
    mov word [cs:data_19f2], ax      ; 0x0522
    mov word [cs:data_09c4], ax      ; 0x0526
    mov word [cs:data_0aa9], ax      ; 0x052a
    mov al, byte [bx]                ; 0x052e
    mov byte [cs:data_096f], al      ; 0x0530
    mov byte [cs:data_096e], 0       ; 0x0534
    mov al, 0xff                     ; 0x053a
    sub al, byte [bp + 0x10]         ; 0x053c
    mov byte [cs:data_1a04], al      ; 0x053f
    mov byte [cs:data_09d4], al      ; 0x0543
    mov byte [cs:data_0abb], al      ; 0x0547
    mov byte [cs:data_0b54], al      ; 0x054b
    mov byte [cs:data_0948], al      ; 0x054f
    mov byte [cs:data_0a7c], al      ; 0x0553
    cmp byte [cs:data_0b7d], 1       ; 0x0557
    je short loc_0567                ; 0x055d
    cmp byte [cs:data_0b7d], 4       ; 0x055f
    jne short loc_056d               ; 0x0565
loc_0567:
    mov dx, 0x388                    ; 0x0567
    mov al, 0x40                     ; 0x056a
    out dx, al                       ; 0x056c
loc_056d:
    mov byte [cs:data_0b94], 0       ; 0x056d
    cmp byte [cs:data_0b90], 0       ; 0x0573
    jne short loc_059b               ; 0x0579
    mov al, byte [cs:data_0b8f]      ; 0x057b
    and al, strlen                   ; 0x057f
    out 0x21, al                     ; 0x0581
    sti                              ; 0x0583
    test byte [bp + 0x14], 1         ; 0x0584
    je short loc_0592                ; 0x0588
loc_058a:
    test byte [cs:data_0b94], 0xff   ; 0x058a
    je short loc_058a                ; 0x0590
loc_0592:
    pop bx                           ; 0x0592
    pop dx                           ; 0x0593
    pop ds                           ; 0x0594
    pop es                           ; 0x0595
    pop si                           ; 0x0596
    pop di                           ; 0x0597
    pop bp                           ; 0x0598
    sti                              ; 0x0599
    ret                              ; 0x059a
