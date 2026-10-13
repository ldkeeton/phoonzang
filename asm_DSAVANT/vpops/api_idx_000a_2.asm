api_idx_000a_2:
    mov ax, 0xfff6                   ; 0x0504
    call aztec_csav                  ; 0x0507
    mov ax, word [bp + 0x4]          ; 0x050a
    shl ax, 1                        ; 0x050d
    mov bx, ax                       ; 0x050f
    mov bx, word [bx - 0x7b7e]       ; 0x0511
    cmp byte [bx + 0x19f], 0xff      ; 0x0515
    jne short @..api_idx_000a_2.l1   ; 0x051a
    ret                              ; 0x051c
@..api_idx_000a_2.l1:
    mov al, byte [bx + 0x19f]        ; 0x051d
    cbw                              ; 0x0521
    mov word [bp - 0x0002], ax       ; 0x0522
    mov word [bp - 0x000a], 0        ; 0x0525
    cmp word [bp + 0xa], byte 0xff   ; 0x052a
    jne short @..api_idx_000a_2.l2   ; 0x052e
    mov word [bp + 0xa], 0           ; 0x0530
    mov cx, 0x15e                    ; 0x0535
    imul cx                          ; 0x0538
    mov bx, ax                       ; 0x053a
    mov al, byte [bx + 0x6b75]       ; 0x053c
    sub ah, ah                       ; 0x0540
    cmp ax, 0xfe                     ; 0x0542
    je short @..api_idx_000a_2.l2    ; 0x0545
    mov word [bp - 0x000a], 1        ; 0x0547
@..api_idx_000a_2.l2:
    mov ax, 0x15e                    ; 0x054c
    imul word [bp - 0x0002]          ; 0x054f
    add ax, word [bp + 0xa]          ; 0x0552
    mov bx, ax                       ; 0x0555
    mov al, byte [bx + 0x6a1a]       ; 0x0557
    sub ah, ah                       ; 0x055b
    mov word [bp - 0x0004], ax       ; 0x055d
    jmp near @..api_idx_000a_2.l8    ; 0x0560
@..api_idx_000a_2.l3:
    mov ax, 0x15e                    ; 0x0563
    imul word [bp - 0x0002]          ; 0x0566
    add ax, word [bp - 0x0004]       ; 0x0569
    mov bx, ax                       ; 0x056c
    mov al, byte [bx + 0x6a22]       ; 0x056e
    sub ah, ah                       ; 0x0572
    mov word [bp - 0x0006], ax       ; 0x0574
    cmp word [bp + 0xa], byte 0      ; 0x0577
    jne short @..api_idx_000a_2.l6   ; 0x057b
    mov ax, 0x15e                    ; 0x057d
    imul word [bp - 0x0002]          ; 0x0580
    mov bx, ax                       ; 0x0583
    cmp byte [bx + 0x6b75], 0        ; 0x0585
    jbe short @..api_idx_000a_2.l6   ; 0x058a
    mov al, byte [bx + 0x6b75]       ; 0x058c
    sub ah, ah                       ; 0x0590
    cmp ax, 0xfe                     ; 0x0592
    jge short @..api_idx_000a_2.l6   ; 0x0595
    cmp ax, 0xfd                     ; 0x0597
    jne short @..api_idx_000a_2.l4   ; 0x059a
    mov word [bp - 0x0006], 0        ; 0x059c
    mov word [bp - 0x0008], 0        ; 0x05a1
    jmp short @..api_idx_000a_2.l5   ; 0x05a6
@..api_idx_000a_2.l4:
    mov word [bp - 0x0008], ax       ; 0x05a8
    mov ax, word [bp + 0x4]          ; 0x05ab
    shl ax, 1                        ; 0x05ae
    mov bx, ax                       ; 0x05b0
    mov bx, word [bx - 0x7b70]       ; 0x05b2
    cmp byte [bx + 0xd7], 0x47       ; 0x05b6
    jne short @..api_idx_000a_2.l5   ; 0x05bb
    cmp word [bp - 0x000a], byte 0   ; 0x05bd
    jne short @..api_idx_000a_2.l5   ; 0x05c1
    mov word [bp - 0x0006], 1        ; 0x05c3
    mov word [bp - 0x0008], 0xb      ; 0x05c8
@..api_idx_000a_2.l5:
    jmp short @..api_idx_000a_2.l7   ; 0x05cd
@..api_idx_000a_2.l6:
    mov ax, 0x15e                    ; 0x05cf
    imul word [bp - 0x0002]          ; 0x05d2
    add ax, word [bp - 0x0004]       ; 0x05d5
    mov bx, ax                       ; 0x05d8
    mov al, byte [bx + 0x6a2c]       ; 0x05da
    sub ah, ah                       ; 0x05de
    push ax                          ; 0x05e0
    call ds_app_09f0                 ; 0x05e1
    pop cx                           ; 0x05e4
    add word [bp - 0x0006], ax       ; 0x05e5
    mov ax, 0x15e                    ; 0x05e8
    imul word [bp - 0x0002]          ; 0x05eb
    add ax, word [bp - 0x0006]       ; 0x05ee
    mov bx, ax                       ; 0x05f1
    mov al, byte [bx + 0x6a40]       ; 0x05f3
    sub ah, ah                       ; 0x05f7
    mov word [bp - 0x0008], ax       ; 0x05f9
    cmp word [bp - 0x000a], byte 0   ; 0x05fc
    je short @..api_idx_000a_2.l7    ; 0x0600
    mov al, byte [bx + 0x6a4a]       ; 0x0602
    sub ah, ah                       ; 0x0606
    push ax                          ; 0x0608
    call ds_app_09f0                 ; 0x0609
    pop cx                           ; 0x060c
    add word [bp - 0x0008], ax       ; 0x060d
@..api_idx_000a_2.l7:
    mov al, byte [bp + 0xa]          ; 0x0610
    push ax                          ; 0x0613
    mov ax, 3                        ; 0x0614
    imul word [bp + 0x6]             ; 0x0617
    mov cx, ax                       ; 0x061a
    add ax, word [bp + 0x8]          ; 0x061c
    mov bx, ax                       ; 0x061f
    pop ax                           ; 0x0621
    mov byte [bx - 0x7bd0], al       ; 0x0622
    mov al, byte [bp - 0x0006]       ; 0x0626
    push ax                          ; 0x0629
    mov ax, 0x5a                     ; 0x062a
    imul word [bp + 0x6]             ; 0x062d
    mov cx, ax                       ; 0x0630
    mov ax, 0x1e                     ; 0x0632
    imul word [bp + 0x8]             ; 0x0635
    mov dx, ax                       ; 0x0638
    add cx, ax                       ; 0x063a
    mov ax, 3                        ; 0x063c
    imul word [bp - 0x0004]          ; 0x063f
    mov dx, ax                       ; 0x0642
    add cx, ax                       ; 0x0644
    mov bx, cx                       ; 0x0646
    pop ax                           ; 0x0648
    mov byte [bx - 0x7cde], al       ; 0x0649
    mov al, byte [bp - 0x0008]       ; 0x064d
    mov byte [bx - 0x7cdd], al       ; 0x0650
    mov ax, 0x15e                    ; 0x0654
    imul word [bp - 0x0002]          ; 0x0657
    mov cx, word [bp - 0x0008]       ; 0x065a
    shl cx, 1                        ; 0x065d
    shl cx, 1                        ; 0x065f
    add ax, cx                       ; 0x0661
    mov bx, ax                       ; 0x0663
    mov al, byte [bx + 0x6ac1]       ; 0x0665
    inc al                           ; 0x0669
    push ax                          ; 0x066b
    mov ax, 0x5a                     ; 0x066c
    imul word [bp + 0x6]             ; 0x066f
    mov cx, ax                       ; 0x0672
    mov ax, 0x1e                     ; 0x0674
    imul word [bp + 0x8]             ; 0x0677
    mov dx, ax                       ; 0x067a
    add cx, ax                       ; 0x067c
    mov ax, 3                        ; 0x067e
    imul word [bp - 0x0004]          ; 0x0681
    mov dx, ax                       ; 0x0684
    add cx, ax                       ; 0x0686
    mov bx, cx                       ; 0x0688
    pop ax                           ; 0x068a
    mov byte [bx - 0x7cdc], al       ; 0x068b
    mov al, byte [bx - 0x7cdc]       ; 0x068f
    sub ah, ah                       ; 0x0693
    mov cx, ax                       ; 0x0695
    push cx                          ; 0x0697
    mov ax, 0x15e                    ; 0x0698
    imul word [bp - 0x0002]          ; 0x069b
    mov cx, word [bp - 0x0008]       ; 0x069e
    shl cx, 1                        ; 0x06a1
    shl cx, 1                        ; 0x06a3
    add ax, cx                       ; 0x06a5
    mov bx, ax                       ; 0x06a7
    mov al, byte [bx + 0x6ac2]       ; 0x06a9
    sub ah, ah                       ; 0x06ad
    push ax                          ; 0x06af
    call ds_app_09f0                 ; 0x06b0
    pop cx                           ; 0x06b3
    pop cx                           ; 0x06b4
    add ax, cx                       ; 0x06b5
    push ax                          ; 0x06b7
    mov ax, 0x5a                     ; 0x06b8
    imul word [bp + 0x6]             ; 0x06bb
    mov cx, ax                       ; 0x06be
    mov ax, 0x1e                     ; 0x06c0
    imul word [bp + 0x8]             ; 0x06c3
    mov dx, ax                       ; 0x06c6
    add cx, ax                       ; 0x06c8
    mov ax, 3                        ; 0x06ca
    imul word [bp - 0x0004]          ; 0x06cd
    mov dx, ax                       ; 0x06d0
    add cx, ax                       ; 0x06d2
    mov bx, cx                       ; 0x06d4
    pop ax                           ; 0x06d6
    mov byte [bx - 0x7cdc], al       ; 0x06d7
    inc word [bp - 0x0004]           ; 0x06db
@..api_idx_000a_2.l8:
    mov ax, 0x15e                    ; 0x06de
    imul word [bp - 0x0002]          ; 0x06e1
    add ax, word [bp + 0xa]          ; 0x06e4
    mov bx, ax                       ; 0x06e7
    mov al, byte [bx + 0x6a1a]       ; 0x06e9
    sub ah, ah                       ; 0x06ed
    push ax                          ; 0x06ef
    mov al, byte [bx + 0x6a1e]       ; 0x06f0
    sub ah, ah                       ; 0x06f4
    mov cx, ax                       ; 0x06f6
    pop ax                           ; 0x06f8
    add ax, cx                       ; 0x06f9
    cmp ax, word [bp - 0x0004]       ; 0x06fb
    jle short @..api_idx_000a_2.l9   ; 0x06fe
    jmp near @..api_idx_000a_2.l3    ; 0x0700
@..api_idx_000a_2.l9:
    ret                              ; 0x0703
