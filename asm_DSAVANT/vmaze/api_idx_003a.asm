api_idx_003a:
    mov ax, 0xffc6                   ; 0x94ef
    call ds_aztec_csav               ; 0x94f2
    mov ax, 0                        ; 0x94f5
    push ax                          ; 0x94f8
    mov ax, 0x34                     ; 0x94f9
    push ax                          ; 0x94fc
    lea ax, word [bp - 0x003a]       ; 0x94fd
    push ax                          ; 0x9500
    call ds_aztec_setmem             ; 0x9501
    add sp, byte 6                   ; 0x9504
    mov word [bp - 0x003a], 1        ; 0x9507
    mov word [bp - 0x0038], 1        ; 0x950c
    mov word [bp - 0x0036], 1        ; 0x9511
    mov word [bp - 0x0030], 1        ; 0x9516
    mov word [bp - 0x002c], 1        ; 0x951b
    mov word [bp - 0x0002], 0        ; 0x9520
@..api_idx_003a.l1:
    mov ax, word [bp - 0x0002]       ; 0x9525
    shl ax, 1                        ; 0x9528
    shl ax, 1                        ; 0x952a
    mov bx, ax                       ; 0x952c
    cmp byte [bx - 0x7688], 0x1b     ; 0x952e
    jne short @..api_idx_003a.l2     ; 0x9533
    mov byte [bx - 0x7688], 8        ; 0x9535
@..api_idx_003a.l2:
    push word [bp - 0x0002]          ; 0x953a
    mov ax, 0x26                     ; 0x953d
    imul word [bp + 0x4]             ; 0x9540
    add ax, 0x8506                   ; 0x9543
    push ax                          ; 0x9546
    call ds_leaf_loc_3ebb            ; 0x9547
    add sp, byte 4                   ; 0x954a
    test ax, ax                      ; 0x954d
    je short @..api_idx_003a.l3      ; 0x954f
    mov ax, word [bp - 0x0002]       ; 0x9551
    shl ax, 1                        ; 0x9554
    shl ax, 1                        ; 0x9556
    mov bx, ax                       ; 0x9558
    mov al, byte [bx - 0x7688]       ; 0x955a
    sub ah, ah                       ; 0x955e
    shl ax, 1                        ; 0x9560
    mov bx, ax                       ; 0x9562
    add bx, bp                       ; 0x9564
    mov word [bx - 0x003a], 1        ; 0x9566
@..api_idx_003a.l3:
    inc word [bp - 0x0002]           ; 0x956b
    mov ax, word [bp - 0x0002]       ; 0x956e
    cmp ax, strict word 0x1a         ; 0x9571
    jl short @..api_idx_003a.l1      ; 0x9574
    mov word [bp - 0x0002], 0        ; 0x9576
@..api_idx_003a.l4:
    push word [bp - 0x0002]          ; 0x957b
    mov ax, 0x26                     ; 0x957e
    imul word [bp + 0x4]             ; 0x9581
    add ax, 0x8506                   ; 0x9584
    push ax                          ; 0x9587
    call ds_leaf_loc_3ebb            ; 0x9588
    add sp, byte 4                   ; 0x958b
    test ax, ax                      ; 0x958e
    je short @..api_idx_003a.l5      ; 0x9590
    mov ax, word [bp - 0x0002]       ; 0x9592
    shl ax, 1                        ; 0x9595
    mov bx, ax                       ; 0x9597
    add bx, bp                       ; 0x9599
    mov word [bx - 0x003a], 2        ; 0x959b
@..api_idx_003a.l5:
    inc word [bp - 0x0002]           ; 0x95a0
    mov ax, word [bp - 0x0002]       ; 0x95a3
    cmp ax, strict word 0x1a         ; 0x95a6
    jl short @..api_idx_003a.l4      ; 0x95a9
    push word [bp + 0x4]             ; 0x95ab
    call loc_94a6                    ; 0x95ae
    pop cx                           ; 0x95b1
    test ax, ax                      ; 0x95b2
    je short @..api_idx_003a.l6      ; 0x95b4
    ret                              ; 0x95b6
@..api_idx_003a.l6:
    mov ax, 0x1a                     ; 0x95b7
    push ax                          ; 0x95ba
    call ds_app_09f0                 ; 0x95bb
    pop cx                           ; 0x95be
    mov word [bp - 0x0002], ax       ; 0x95bf
    shl ax, 1                        ; 0x95c2
    shl ax, 1                        ; 0x95c4
    mov bx, ax                       ; 0x95c6
    mov al, byte [bx - 0x768a]       ; 0x95c8
    sub ah, ah                       ; 0x95cc
    mov word [bp - 0x0004], ax       ; 0x95ce
    mov ax, 0                        ; 0x95d1
    cmp word [bp - 0x0004], byte 0   ; 0x95d4
    jle short @..api_idx_003a.l7     ; 0x95d8
    mov ax, 0x26                     ; 0x95da
    imul word [bp + 0x4]             ; 0x95dd
    mov bx, ax                       ; 0x95e0
    mov al, byte [bx - 0x7b18]       ; 0x95e2
    sub ah, ah                       ; 0x95e6
    mov cx, 0xc                      ; 0x95e8
    imul cx                          ; 0x95eb
    add ax, word [bp - 0x0004]       ; 0x95ed
    mov bx, ax                       ; 0x95f0
    mov al, byte [bx - 0x7622]       ; 0x95f2
    cbw                              ; 0x95f6
@..api_idx_003a.l7:
    mov word [bp - 0x0006], ax       ; 0x95f7
    mov ax, word [bp - 0x0002]       ; 0x95fa
    shl ax, 1                        ; 0x95fd
    mov bx, ax                       ; 0x95ff
    add bx, bp                       ; 0x9601
    cmp word [bx - 0x003a], byte 0   ; 0x9603
    je short @..api_idx_003a.l6      ; 0x9607
    mov ax, 0x64                     ; 0x9609
    push ax                          ; 0x960c
    call ds_app_09f0                 ; 0x960d
    pop cx                           ; 0x9610
    add ax, word [bp - 0x0006]       ; 0x9611
    cmp ax, strict word 0xffdd       ; 0x9614
    jl short @..api_idx_003a.l6      ; 0x9617
    mov ax, 4                        ; 0x9619
    push ax                          ; 0x961c
    call ds_app_09f0                 ; 0x961d
    pop cx                           ; 0x9620
    test ax, ax                      ; 0x9621
    je short @..api_idx_003a.l8      ; 0x9623
    push word [bp - 0x0002]          ; 0x9625
    mov ax, 0x26                     ; 0x9628
    imul word [bp + 0x4]             ; 0x962b
    add ax, 0x8506                   ; 0x962e
    push ax                          ; 0x9631
    call ds_leaf_loc_3ebb            ; 0x9632
    add sp, byte 4                   ; 0x9635
    test ax, ax                      ; 0x9638
    je short @..api_idx_003a.l8      ; 0x963a
    jmp near @..api_idx_003a.l6      ; 0x963c
@..api_idx_003a.l8:
    mov al, byte [bp - 0x0002]       ; 0x963f
    push ax                          ; 0x9642
    mov ax, 0x26                     ; 0x9643
    imul word [bp + 0x4]             ; 0x9646
    mov bx, ax                       ; 0x9649
    pop ax                           ; 0x964b
    mov byte [bx - 0x7b15], al       ; 0x964c
    push word [bp + 0x4]             ; 0x9650
    call loc_946a                    ; 0x9653
    pop cx                           ; 0x9656
    ret                              ; 0x9657
loc_9658:
    mov ax, 0                        ; 0x9658
    call ds_aztec_csav               ; 0x965b
    mov ax, 0x64                     ; 0x965e
    push ax                          ; 0x9661
    mov ax, 0xff9c                   ; 0x9662
    push ax                          ; 0x9665
    mov ax, 0x26                     ; 0x9666
    imul word [bp + 0x4]             ; 0x9669
    mov bx, ax                       ; 0x966c
    mov al, byte [bx - 0x7b18]       ; 0x966e
    sub ah, ah                       ; 0x9672
    mov cx, 0xc                      ; 0x9674
    imul cx                          ; 0x9677
    push ax                          ; 0x9679
    mov ax, 0x26                     ; 0x967a
    imul word [bp + 0x6]             ; 0x967d
    mov bx, ax                       ; 0x9680
    mov al, byte [bx - 0x7b18]       ; 0x9682
    sub ah, ah                       ; 0x9686
    mov cx, ax                       ; 0x9688
    pop ax                           ; 0x968a
    add ax, cx                       ; 0x968b
    mov bx, ax                       ; 0x968d
    mov al, byte [bx - 0x7622]       ; 0x968f
    cbw                              ; 0x9693
    add ax, word [bp + 0x8]          ; 0x9694
    push ax                          ; 0x9697
    call ds_app_0a09                 ; 0x9698
    add sp, byte 6                   ; 0x969b
    push ax                          ; 0x969e
    mov ax, 0x26                     ; 0x969f
    imul word [bp + 0x4]             ; 0x96a2
    mov bx, ax                       ; 0x96a5
    mov al, byte [bx - 0x7b18]       ; 0x96a7
    sub ah, ah                       ; 0x96ab
    mov cx, 0xc                      ; 0x96ad
    imul cx                          ; 0x96b0
    mov cx, ax                       ; 0x96b2
    mov ax, 0x26                     ; 0x96b4
    imul word [bp + 0x6]             ; 0x96b7
    mov bx, ax                       ; 0x96ba
    mov al, byte [bx - 0x7b18]       ; 0x96bc
    sub ah, ah                       ; 0x96c0
    mov dx, ax                       ; 0x96c2
    add cx, ax                       ; 0x96c4
    mov bx, cx                       ; 0x96c6
    pop ax                           ; 0x96c8
    mov byte [bx - 0x7622], al       ; 0x96c9
    ret                              ; 0x96cd
