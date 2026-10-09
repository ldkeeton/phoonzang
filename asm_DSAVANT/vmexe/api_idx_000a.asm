api_idx_000a:
    mov ax, 0xfff6                   ; 0x0456
    call ds_dispatch_f40b            ; 0x0459
    mov ax, word [bp + 0x4]          ; 0x045c
    shl ax, 1                        ; 0x045f
    mov bx, ax                       ; 0x0461
    mov bx, word [bx - 0x7b7e]       ; 0x0463
    cmp byte [bx + 0x19f], 0xff      ; 0x0467
    jne short @..api_idx_000a.l1     ; 0x046c
    ret                              ; 0x046e
@..api_idx_000a.l1:
    mov al, byte [bx + 0x19f]        ; 0x046f
    cbw                              ; 0x0473
    mov word [bp - 0x0002], ax       ; 0x0474
    mov word [bp - 0x000a], 0        ; 0x0477
    cmp word [bp + 0xa], byte 0xff   ; 0x047c
    jne short @..api_idx_000a.l2     ; 0x0480
    mov word [bp + 0xa], 0           ; 0x0482
    mov cx, 0x15e                    ; 0x0487
    imul cx                          ; 0x048a
    mov bx, ax                       ; 0x048c
    mov al, byte [bx + 0x6b75]       ; 0x048e
    sub ah, ah                       ; 0x0492
    cmp ax, 0xfe                     ; 0x0494
    je short @..api_idx_000a.l2      ; 0x0497
    mov word [bp - 0x000a], 1        ; 0x0499
@..api_idx_000a.l2:
    mov ax, 0x15e                    ; 0x049e
    imul word [bp - 0x0002]          ; 0x04a1
    add ax, word [bp + 0xa]          ; 0x04a4
    mov bx, ax                       ; 0x04a7
    mov al, byte [bx + 0x6a1a]       ; 0x04a9
    sub ah, ah                       ; 0x04ad
    mov word [bp - 0x0004], ax       ; 0x04af
    jmp near @..api_idx_000a.l8      ; 0x04b2
@..api_idx_000a.l3:
    mov ax, 0x15e                    ; 0x04b5
    imul word [bp - 0x0002]          ; 0x04b8
    add ax, word [bp - 0x0004]       ; 0x04bb
    mov bx, ax                       ; 0x04be
    mov al, byte [bx + 0x6a22]       ; 0x04c0
    sub ah, ah                       ; 0x04c4
    mov word [bp - 0x0006], ax       ; 0x04c6
    cmp word [bp + 0xa], byte 0      ; 0x04c9
    jne short @..api_idx_000a.l6     ; 0x04cd
    mov ax, 0x15e                    ; 0x04cf
    imul word [bp - 0x0002]          ; 0x04d2
    mov bx, ax                       ; 0x04d5
    cmp byte [bx + 0x6b75], 0        ; 0x04d7
    jbe short @..api_idx_000a.l6     ; 0x04dc
    mov al, byte [bx + 0x6b75]       ; 0x04de
    sub ah, ah                       ; 0x04e2
    cmp ax, 0xfe                     ; 0x04e4
    jge short @..api_idx_000a.l6     ; 0x04e7
    cmp ax, 0xfd                     ; 0x04e9
    jne short @..api_idx_000a.l4     ; 0x04ec
    mov word [bp - 0x0006], 0        ; 0x04ee
    mov word [bp - 0x0008], 0        ; 0x04f3
    jmp short @..api_idx_000a.l5     ; 0x04f8
@..api_idx_000a.l4:
    mov word [bp - 0x0008], ax       ; 0x04fa
    mov ax, word [bp + 0x4]          ; 0x04fd
    shl ax, 1                        ; 0x0500
    mov bx, ax                       ; 0x0502
    mov bx, word [bx - 0x7b70]       ; 0x0504
    cmp byte [bx + 0xd7], 0x47       ; 0x0508
    jne short @..api_idx_000a.l5     ; 0x050d
    cmp word [bp - 0x000a], byte 0   ; 0x050f
    jne short @..api_idx_000a.l5     ; 0x0513
    mov word [bp - 0x0006], 1        ; 0x0515
    mov word [bp - 0x0008], 0xb      ; 0x051a
@..api_idx_000a.l5:
    jmp short @..api_idx_000a.l7     ; 0x051f
@..api_idx_000a.l6:
    mov ax, 0x15e                    ; 0x0521
    imul word [bp - 0x0002]          ; 0x0524
    add ax, word [bp - 0x0004]       ; 0x0527
    mov bx, ax                       ; 0x052a
    mov al, byte [bx + 0x6a2c]       ; 0x052c
    sub ah, ah                       ; 0x0530
    push ax                          ; 0x0532
    call ds_dispatch_b7a9            ; 0x0533
    pop cx                           ; 0x0536
    add word [bp - 0x0006], ax       ; 0x0537
    mov ax, 0x15e                    ; 0x053a
    imul word [bp - 0x0002]          ; 0x053d
    add ax, word [bp - 0x0006]       ; 0x0540
    mov bx, ax                       ; 0x0543
    mov al, byte [bx + 0x6a40]       ; 0x0545
    sub ah, ah                       ; 0x0549
    mov word [bp - 0x0008], ax       ; 0x054b
    cmp word [bp - 0x000a], byte 0   ; 0x054e
    je short @..api_idx_000a.l7      ; 0x0552
    mov al, byte [bx + 0x6a4a]       ; 0x0554
    sub ah, ah                       ; 0x0558
    push ax                          ; 0x055a
    call ds_dispatch_b7a9            ; 0x055b
    pop cx                           ; 0x055e
    add word [bp - 0x0008], ax       ; 0x055f
@..api_idx_000a.l7:
    mov al, byte [bp + 0xa]          ; 0x0562
    push ax                          ; 0x0565
    mov ax, 3                        ; 0x0566
    imul word [bp + 0x6]             ; 0x0569
    mov cx, ax                       ; 0x056c
    add ax, word [bp + 0x8]          ; 0x056e
    mov bx, ax                       ; 0x0571
    pop ax                           ; 0x0573
    mov byte [bx - 0x7bd0], al       ; 0x0574
    mov al, byte [bp - 0x0006]       ; 0x0578
    push ax                          ; 0x057b
    mov ax, 0x5a                     ; 0x057c
    imul word [bp + 0x6]             ; 0x057f
    mov cx, ax                       ; 0x0582
    mov ax, 0x1e                     ; 0x0584
    imul word [bp + 0x8]             ; 0x0587
    mov dx, ax                       ; 0x058a
    add cx, ax                       ; 0x058c
    mov ax, 3                        ; 0x058e
    imul word [bp - 0x0004]          ; 0x0591
    mov dx, ax                       ; 0x0594
    add cx, ax                       ; 0x0596
    mov bx, cx                       ; 0x0598
    pop ax                           ; 0x059a
    mov byte [bx - 0x7cde], al       ; 0x059b
    mov al, byte [bp - 0x0008]       ; 0x059f
    mov byte [bx - 0x7cdd], al       ; 0x05a2
    mov ax, 0x15e                    ; 0x05a6
    imul word [bp - 0x0002]          ; 0x05a9
    mov cx, word [bp - 0x0008]       ; 0x05ac
    shl cx, 1                        ; 0x05af
    shl cx, 1                        ; 0x05b1
    add ax, cx                       ; 0x05b3
    mov bx, ax                       ; 0x05b5
    mov al, byte [bx + 0x6ac1]       ; 0x05b7
    inc al                           ; 0x05bb
    push ax                          ; 0x05bd
    mov ax, 0x5a                     ; 0x05be
    imul word [bp + 0x6]             ; 0x05c1
    mov cx, ax                       ; 0x05c4
    mov ax, 0x1e                     ; 0x05c6
    imul word [bp + 0x8]             ; 0x05c9
    mov dx, ax                       ; 0x05cc
    add cx, ax                       ; 0x05ce
    mov ax, 3                        ; 0x05d0
    imul word [bp - 0x0004]          ; 0x05d3
    mov dx, ax                       ; 0x05d6
    add cx, ax                       ; 0x05d8
    mov bx, cx                       ; 0x05da
    pop ax                           ; 0x05dc
    mov byte [bx - 0x7cdc], al       ; 0x05dd
    mov al, byte [bx - 0x7cdc]       ; 0x05e1
    sub ah, ah                       ; 0x05e5
    mov cx, ax                       ; 0x05e7
    push cx                          ; 0x05e9
    mov ax, 0x15e                    ; 0x05ea
    imul word [bp - 0x0002]          ; 0x05ed
    mov cx, word [bp - 0x0008]       ; 0x05f0
    shl cx, 1                        ; 0x05f3
    shl cx, 1                        ; 0x05f5
    add ax, cx                       ; 0x05f7
    mov bx, ax                       ; 0x05f9
    mov al, byte [bx + 0x6ac2]       ; 0x05fb
    sub ah, ah                       ; 0x05ff
    push ax                          ; 0x0601
    call ds_dispatch_b7a9            ; 0x0602
    pop cx                           ; 0x0605
    pop cx                           ; 0x0606
    add ax, cx                       ; 0x0607
    push ax                          ; 0x0609
    mov ax, 0x5a                     ; 0x060a
    imul word [bp + 0x6]             ; 0x060d
    mov cx, ax                       ; 0x0610
    mov ax, 0x1e                     ; 0x0612
    imul word [bp + 0x8]             ; 0x0615
    mov dx, ax                       ; 0x0618
    add cx, ax                       ; 0x061a
    mov ax, 3                        ; 0x061c
    imul word [bp - 0x0004]          ; 0x061f
    mov dx, ax                       ; 0x0622
    add cx, ax                       ; 0x0624
    mov bx, cx                       ; 0x0626
    pop ax                           ; 0x0628
    mov byte [bx - 0x7cdc], al       ; 0x0629
    inc word [bp - 0x0004]           ; 0x062d
@..api_idx_000a.l8:
    mov ax, 0x15e                    ; 0x0630
    imul word [bp - 0x0002]          ; 0x0633
    add ax, word [bp + 0xa]          ; 0x0636
    mov bx, ax                       ; 0x0639
    mov al, byte [bx + 0x6a1a]       ; 0x063b
    sub ah, ah                       ; 0x063f
    push ax                          ; 0x0641
    mov al, byte [bx + 0x6a1e]       ; 0x0642
    sub ah, ah                       ; 0x0646
    mov cx, ax                       ; 0x0648
    pop ax                           ; 0x064a
    add ax, cx                       ; 0x064b
    cmp ax, word [bp - 0x0004]       ; 0x064d
    jle short @..api_idx_000a.l9     ; 0x0650
    jmp near @..api_idx_000a.l3      ; 0x0652
@..api_idx_000a.l9:
    ret                              ; 0x0655
