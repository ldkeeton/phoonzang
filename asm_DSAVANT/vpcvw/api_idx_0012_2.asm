api_idx_0012_2:
    mov ax, 0xffee                   ; 0x0521
    call ds_dispatch_f40b            ; 0x0524
    mov ax, 0                        ; 0x0527
    push ax                          ; 0x052a
    push ax                          ; 0x052b
    push word [data_93f8]            ; 0x052c
    push word [data_93f6]            ; 0x0530
    call ds_dispatch_e942            ; 0x0534
    add sp, byte 8                   ; 0x0537
    mov word [bp - 0x0002], 0        ; 0x053a
    jmp short @..api_idx_0012_2.l2   ; 0x053f
@..api_idx_0012_2.l1:
    mov ax, 0                        ; 0x0541
    push ax                          ; 0x0544
    push ax                          ; 0x0545
    push word [bp - 0x0002]          ; 0x0546
    call api_idx_000c                ; 0x0549
    add sp, byte 6                   ; 0x054c
    mov ax, word [bp - 0x0002]       ; 0x054f
    mov cx, 3                        ; 0x0552
    cwd                              ; 0x0555
    idiv cx                          ; 0x0556
    mov ax, dx                       ; 0x0558
    mov cx, 0x32                     ; 0x055a
    imul cx                          ; 0x055d
    add ax, strict word 4            ; 0x055f
    mov word [bp - 0x000a], ax       ; 0x0562
    mov ax, word [bp - 0x0002]       ; 0x0565
    mov cx, 3                        ; 0x0568
    cwd                              ; 0x056b
    idiv cx                          ; 0x056c
    mov cx, api_idx_0002             ; 0x056e
    imul cx                          ; 0x0571
    add ax, strict word 0x70         ; 0x0573
    mov word [bp - 0x000c], ax       ; 0x0576
    mov ax, 0                        ; 0x0579
    push ax                          ; 0x057c
    mov ax, word [bp - 0x0002]       ; 0x057d
    add ax, strict word 0x31         ; 0x0580
    cbw                              ; 0x0583
    push ax                          ; 0x0584
    mov ax, word [bp - 0x000c]       ; 0x0585
    add ax, strict word 0x26         ; 0x0588
    push ax                          ; 0x058b
    mov ax, word [bp - 0x000a]       ; 0x058c
    add ax, strict word 0x2e         ; 0x058f
    push ax                          ; 0x0592
    push word [bp - 0x000c]          ; 0x0593
    push word [bp - 0x000a]          ; 0x0596
    push word [bp - 0x0002]          ; 0x0599
    call ds_dispatch_baa6            ; 0x059c
    add sp, byte 0x0e                ; 0x059f
    inc word [bp - 0x0002]           ; 0x05a2
@..api_idx_0012_2.l2:
    mov ax, word [bp - 0x0002]       ; 0x05a5
    cmp ax, word [data_69c8]         ; 0x05a8
    jl short @..api_idx_0012_2.l1    ; 0x05ac
    mov ax, 0                        ; 0x05ae
    push ax                          ; 0x05b1
    push ax                          ; 0x05b2
    push ax                          ; 0x05b3
    push ax                          ; 0x05b4
    push ax                          ; 0x05b5
    mov ax, 0xffff                   ; 0x05b6
    push ax                          ; 0x05b9
    push word [data_69c8]            ; 0x05ba
    call ds_dispatch_baa6            ; 0x05be
    add sp, byte 0x0e                ; 0x05c1
    mov ax, 0xbb                     ; 0x05c4
    push ax                          ; 0x05c7
    mov ax, 0xab                     ; 0x05c8
    push ax                          ; 0x05cb
    mov ax, 0x70                     ; 0x05cc
    push ax                          ; 0x05cf
    mov ax, 1                        ; 0x05d0
    push ax                          ; 0x05d3
    call ds_dispatch_e8da            ; 0x05d4
    add sp, byte 8                   ; 0x05d7
    cmp word [data_0e32], byte 0     ; 0x05da
    je short @..api_idx_0012_2.l3    ; 0x05df
    jmp near @..api_idx_0012_2.l8    ; 0x05e1
@..api_idx_0012_2.l3:
    mov ax, 0xa3                     ; 0x05e4
    push ax                          ; 0x05e7
    mov ax, 0xb1                     ; 0x05e8
    push ax                          ; 0x05eb
    mov ax, 0x90                     ; 0x05ec
    push ax                          ; 0x05ef
    mov ax, 0x9a                     ; 0x05f0
    push ax                          ; 0x05f3
    call ds_dispatch_e928            ; 0x05f4
    add sp, byte 8                   ; 0x05f7
    mov word [bp - 0x0010], dx       ; 0x05fa
    mov word [bp - 0x0012], ax       ; 0x05fd
    mov ax, 0x90                     ; 0x0600
    push ax                          ; 0x0603
    mov ax, 0x9a                     ; 0x0604
    push ax                          ; 0x0607
    call ds_dispatch_e809            ; 0x0608
    add sp, byte 4                   ; 0x060b
    mov ax, 7                        ; 0x060e
    push ax                          ; 0x0611
    mov ax, 0x12                     ; 0x0612
    push ax                          ; 0x0615
    call ds_dispatch_e830            ; 0x0616
    add sp, byte 4                   ; 0x0619
    mov ax, 0x9c                     ; 0x061c
    push ax                          ; 0x061f
    mov ax, 0x9a                     ; 0x0620
    push ax                          ; 0x0623
    call ds_dispatch_e809            ; 0x0624
    add sp, byte 4                   ; 0x0627
    mov ax, 7                        ; 0x062a
    push ax                          ; 0x062d
    mov ax, 0x13                     ; 0x062e
    push ax                          ; 0x0631
    call ds_dispatch_e830            ; 0x0632
    add sp, byte 4                   ; 0x0635
    mov ax, 0x9c                     ; 0x0638
    push ax                          ; 0x063b
    mov ax, 0xa6                     ; 0x063c
    push ax                          ; 0x063f
    call ds_dispatch_e809            ; 0x0640
    add sp, byte 4                   ; 0x0643
    mov ax, 7                        ; 0x0646
    push ax                          ; 0x0649
    mov ax, 0x14                     ; 0x064a
    push ax                          ; 0x064d
    call ds_dispatch_e830            ; 0x064e
    add sp, byte 4                   ; 0x0651
    mov ax, 0xa3                     ; 0x0654
    push ax                          ; 0x0657
    mov ax, 0xb1                     ; 0x0658
    push ax                          ; 0x065b
    mov ax, 0x90                     ; 0x065c
    push ax                          ; 0x065f
    mov ax, 0x9a                     ; 0x0660
    push ax                          ; 0x0663
    call ds_dispatch_e8da            ; 0x0664
    add sp, byte 8                   ; 0x0667
    mov word [bp - 0x0004], 0xfffe   ; 0x066a
@..api_idx_0012_2.l4:
    cmp word [bp - 0x0004], byte 0xfe ; 0x066f
    jne short @..api_idx_0012_2.l7   ; 0x0673
    mov ax, 1                        ; 0x0675
    push ax                          ; 0x0678
    call ds_dispatch_eb32            ; 0x0679
    pop cx                           ; 0x067c
    sub ah, ah                       ; 0x067d
    mov word [bp - 0x0002], ax       ; 0x067f
    cmp ax, strict word 0x1b         ; 0x0682
    jne short @..api_idx_0012_2.l5   ; 0x0685
    mov word [bp - 0x0004], 0xffff   ; 0x0687
@..api_idx_0012_2.l5:
    cmp ax, strict word 0x31         ; 0x068c
    jl short @..api_idx_0012_2.l6    ; 0x068f
    mov cx, word [data_69c8]         ; 0x0691
    add cx, byte 0x31                ; 0x0695
    cmp cx, ax                       ; 0x0698
    jle short @..api_idx_0012_2.l6   ; 0x069a
    add ax, strict word 0xffcf       ; 0x069c
    mov word [bp - 0x0004], ax       ; 0x069f
    mov ax, 1                        ; 0x06a2
    push ax                          ; 0x06a5
    push ax                          ; 0x06a6
    push word [bp - 0x0004]          ; 0x06a7
    call api_idx_000c                ; 0x06aa
    add sp, byte 6                   ; 0x06ad
@..api_idx_0012_2.l6:
    jmp short @..api_idx_0012_2.l4   ; 0x06b0
@..api_idx_0012_2.l7:
    mov ax, 1                        ; 0x06b2
    push ax                          ; 0x06b5
    push word [bp - 0x0010]          ; 0x06b6
    push word [bp - 0x0012]          ; 0x06b9
    call ds_dispatch_e94f            ; 0x06bc
    add sp, byte 6                   ; 0x06bf
    mov ax, 0xa3                     ; 0x06c2
    push ax                          ; 0x06c5
    mov ax, 0xb1                     ; 0x06c6
    push ax                          ; 0x06c9
    mov ax, 0x90                     ; 0x06ca
    push ax                          ; 0x06cd
    mov ax, 0x9a                     ; 0x06ce
    push ax                          ; 0x06d1
    call ds_dispatch_e8da            ; 0x06d2
    add sp, byte 8                   ; 0x06d5
    mov ax, word [bp - 0x0004]       ; 0x06d8
    ret                              ; 0x06db
