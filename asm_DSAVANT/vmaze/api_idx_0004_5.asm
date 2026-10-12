api_idx_0004_5:
    mov ax, 0xfffc                   ; 0x358c
    call ds_aztec_csav               ; 0x358f
    mov al, byte [bp + 0x4]          ; 0x3592
    push ax                          ; 0x3595
    mov ax, 0x11                     ; 0x3596
    imul word [bss_931e]             ; 0x3599
    mov bx, ax                       ; 0x359d
    pop ax                           ; 0x359f
    mov byte [bx - 0x6cd4], al       ; 0x35a0
    mov al, byte [bp + 0x18]         ; 0x35a4
    mov byte [bx - 0x6cd2], al       ; 0x35a7
    cmp word [bp + 0x4], strict word 0xfa ; 0x35ab
    jl short @..api_idx_0004_5.l1    ; 0x35b0
    jmp near @..api_idx_0004_5.l13   ; 0x35b2
@..api_idx_0004_5.l1:
    mov ax, 0x15e                    ; 0x35b5
    imul word [bp + 0x4]             ; 0x35b8
    mov cx, word [bp + 0xa]          ; 0x35bb
    shl cx, 1                        ; 0x35be
    add ax, cx                       ; 0x35c0
    add ax, word [bp + 0x1a]         ; 0x35c2
    mov bx, ax                       ; 0x35c5
    mov al, byte [bx + 0x6a52]       ; 0x35c7
    sub ah, ah                       ; 0x35cb
    mov word [bp - 0x0002], ax       ; 0x35cd
    mov ax, 0x15e                    ; 0x35d0
    imul word [bp + 0x4]             ; 0x35d3
    add ax, word [bp + 0xa]          ; 0x35d6
    mov bx, ax                       ; 0x35d9
    mov al, byte [bx + 0x6a9b]       ; 0x35db
    sub ah, ah                       ; 0x35df
    mov word [bp - 0x0004], ax       ; 0x35e1
    cmp word [bp + 0x18], byte 0     ; 0x35e4
    jg short @..api_idx_0004_5.l2    ; 0x35e8
    jmp near @..api_idx_0004_5.l11   ; 0x35ea
@..api_idx_0004_5.l2:
    cmp word [bp + 0x1e], byte 0     ; 0x35ed
    jg short @..api_idx_0004_5.l3    ; 0x35f1
    jmp near @..api_idx_0004_5.l11   ; 0x35f3
@..api_idx_0004_5.l3:
    mov ax, 0x64                     ; 0x35f6
    sub ax, word [bp + 0x18]         ; 0x35f9
    mov cx, 0x64                     ; 0x35fc
    cwd                              ; 0x35ff
    idiv cx                          ; 0x3600
    mov ax, dx                       ; 0x3602
    push ax                          ; 0x3604
    mov ax, 0x11                     ; 0x3605
    imul word [bss_931e]             ; 0x3608
    mov bx, ax                       ; 0x360c
    pop ax                           ; 0x360e
    mov byte [bx - 0x6cd2], al       ; 0x360f
    cmp word [bp + 0x1e], byte 1     ; 0x3613
    je short @..api_idx_0004_5.l4    ; 0x3617
    jmp near @..api_idx_0004_5.l6    ; 0x3619
@..api_idx_0004_5.l4:
    mov ax, word [dseg_03ae]         ; 0x361c
    sub ax, word [bp - 0x0002]       ; 0x361f
    imul word [bp + 0x18]            ; 0x3622
    add ax, strict word 0xffce       ; 0x3625
    cwd                              ; 0x3628
    idiv cx                          ; 0x3629
    mov cx, ax                       ; 0x362b
    mov ax, word [bp + 0x6]          ; 0x362d
    sub ax, cx                       ; 0x3630
    mov word [bx - 0x6ce0], ax       ; 0x3632
    cmp word [bp + 0x1a], byte 0     ; 0x3636
    je short @..api_idx_0004_5.l5    ; 0x363a
    mov ax, 0x15e                    ; 0x363c
    imul word [bp + 0x4]             ; 0x363f
    mov cx, word [bp + 0xa]          ; 0x3642
    shl cx, 1                        ; 0x3645
    add ax, cx                       ; 0x3647
    add ax, word [bp + 0x1a]         ; 0x3649
    mov bx, ax                       ; 0x364c
    mov al, byte [bx + 0x6a52]       ; 0x364e
    sub ah, ah                       ; 0x3652
    mov cx, ax                       ; 0x3654
    mov ax, 0xa0                     ; 0x3656
    sub ax, cx                       ; 0x3659
    shl ax, 1                        ; 0x365b
    push ax                          ; 0x365d
    mov ax, 0x11                     ; 0x365e
    imul word [bss_931e]             ; 0x3661
    mov bx, ax                       ; 0x3665
    mov al, byte [bx - 0x6cd2]       ; 0x3667
    sub ah, ah                       ; 0x366b
    mov cx, ax                       ; 0x366d
    pop ax                           ; 0x366f
    imul cx                          ; 0x3670
    mov cx, 0x64                     ; 0x3672
    cwd                              ; 0x3675
    idiv cx                          ; 0x3676
    sub word [bx - 0x6ce0], ax       ; 0x3678
@..api_idx_0004_5.l5:
    mov ax, word [dseg_03dc]         ; 0x367c
    sub ax, word [bp - 0x0004]       ; 0x367f
    imul word [bp + 0x18]            ; 0x3682
    add ax, strict word 0xffce       ; 0x3685
    mov cx, 0x64                     ; 0x3688
    cwd                              ; 0x368b
    idiv cx                          ; 0x368c
    mov cx, ax                       ; 0x368e
    mov ax, word [bp + 0x8]          ; 0x3690
    sub ax, cx                       ; 0x3693
    push ax                          ; 0x3695
    mov ax, 0x11                     ; 0x3696
    imul word [bss_931e]             ; 0x3699
    mov bx, ax                       ; 0x369d
    pop ax                           ; 0x369f
    mov word [bx - 0x6cde], ax       ; 0x36a0
    jmp near @..api_idx_0004_5.l10   ; 0x36a4
@..api_idx_0004_5.l6:
    cmp word [bp + 0x1e], byte 2     ; 0x36a7
    je short @..api_idx_0004_5.l7    ; 0x36ab
    jmp near @..api_idx_0004_5.l9    ; 0x36ad
@..api_idx_0004_5.l7:
    mov ax, 0x11                     ; 0x36b0
    imul word [bss_931e]             ; 0x36b3
    mov bx, ax                       ; 0x36b7
    mov al, byte [bx - 0x6cd2]       ; 0x36b9
    sub ah, ah                       ; 0x36bd
    mov cx, 0xa0                     ; 0x36bf
    sub cx, word [bp - 0x0002]       ; 0x36c2
    imul cx                          ; 0x36c5
    mov cx, 0x64                     ; 0x36c7
    cwd                              ; 0x36ca
    idiv cx                          ; 0x36cb
    add ax, word [bp - 0x0002]       ; 0x36cd
    add ax, word [bp + 0x6]          ; 0x36d0
    mov word [bx - 0x6ce0], ax       ; 0x36d3
    cmp word [bp + 0x1a], byte 0     ; 0x36d7
    je short @..api_idx_0004_5.l8    ; 0x36db
    mov ax, 0x15e                    ; 0x36dd
    imul word [bp + 0x4]             ; 0x36e0
    mov cx, word [bp + 0xa]          ; 0x36e3
    shl cx, 1                        ; 0x36e6
    add ax, cx                       ; 0x36e8
    add ax, word [bp + 0x1a]         ; 0x36ea
    mov bx, ax                       ; 0x36ed
    mov al, byte [bx + 0x6a52]       ; 0x36ef
    sub ah, ah                       ; 0x36f3
    mov cx, ax                       ; 0x36f5
    mov ax, 0xa0                     ; 0x36f7
    sub ax, cx                       ; 0x36fa
    shl ax, 1                        ; 0x36fc
    push ax                          ; 0x36fe
    mov ax, 0x11                     ; 0x36ff
    imul word [bss_931e]             ; 0x3702
    mov bx, ax                       ; 0x3706
    mov al, byte [bx - 0x6cd2]       ; 0x3708
    sub ah, ah                       ; 0x370c
    mov cx, ax                       ; 0x370e
    pop ax                           ; 0x3710
    imul cx                          ; 0x3711
    mov cx, 0x64                     ; 0x3713
    cwd                              ; 0x3716
    idiv cx                          ; 0x3717
    sub word [bx - 0x6ce0], ax       ; 0x3719
@..api_idx_0004_5.l8:
    mov ax, 0x11                     ; 0x371d
    imul word [bss_931e]             ; 0x3720
    mov bx, ax                       ; 0x3724
    mov al, byte [bx - 0x6cd2]       ; 0x3726
    sub ah, ah                       ; 0x372a
    mov cx, 0x42                     ; 0x372c
    sub cx, word [bp - 0x0004]       ; 0x372f
    imul cx                          ; 0x3732
    mov cx, 0x64                     ; 0x3734
    cwd                              ; 0x3737
    idiv cx                          ; 0x3738
    add ax, word [bp - 0x0004]       ; 0x373a
    add ax, word [bp + 0x8]          ; 0x373d
    mov word [bx - 0x6cde], ax       ; 0x3740
    jmp short @..api_idx_0004_5.l10  ; 0x3744
@..api_idx_0004_5.l9:
    cmp word [bp + 0x1e], byte 3     ; 0x3746
    jne short @..api_idx_0004_5.l10  ; 0x374a
    mov ax, word [bp + 0x6]          ; 0x374c
    push ax                          ; 0x374f
    mov ax, 0x11                     ; 0x3750
    imul word [bss_931e]             ; 0x3753
    mov bx, ax                       ; 0x3757
    pop ax                           ; 0x3759
    mov word [bx - 0x6ce0], ax       ; 0x375a
    mov ax, word [bp + 0x8]          ; 0x375e
    mov word [bx - 0x6cde], ax       ; 0x3761
@..api_idx_0004_5.l10:
    jmp short @..api_idx_0004_5.l12  ; 0x3765
@..api_idx_0004_5.l11:
    mov ax, word [bp - 0x0002]       ; 0x3767
    add ax, word [bp + 0x6]          ; 0x376a
    push ax                          ; 0x376d
    mov ax, 0x11                     ; 0x376e
    imul word [bss_931e]             ; 0x3771
    mov bx, ax                       ; 0x3775
    pop ax                           ; 0x3777
    mov word [bx - 0x6ce0], ax       ; 0x3778
    mov ax, word [bp - 0x0004]       ; 0x377c
    add ax, word [bp + 0x8]          ; 0x377f
    mov word [bx - 0x6cde], ax       ; 0x3782
@..api_idx_0004_5.l12:
    jmp short @..api_idx_0004_5.l14  ; 0x3786
@..api_idx_0004_5.l13:
    mov ax, word [bp + 0x6]          ; 0x3788
    push ax                          ; 0x378b
    mov ax, 0x11                     ; 0x378c
    imul word [bss_931e]             ; 0x378f
    mov bx, ax                       ; 0x3793
    pop ax                           ; 0x3795
    mov word [bx - 0x6ce0], ax       ; 0x3796
    mov ax, word [bp + 0x8]          ; 0x379a
    mov word [bx - 0x6cde], ax       ; 0x379d
@..api_idx_0004_5.l14:
    mov al, byte [bp + 0xa]          ; 0x37a1
    push ax                          ; 0x37a4
    mov ax, 0x11                     ; 0x37a5
    imul word [bss_931e]             ; 0x37a8
    mov bx, ax                       ; 0x37ac
    pop ax                           ; 0x37ae
    mov byte [bx - 0x6cd8], al       ; 0x37af
    mov al, byte [bp + 0xc]          ; 0x37b3
    mov byte [bx - 0x6cd7], al       ; 0x37b6
    mov al, byte [bp + 0xe]          ; 0x37ba
    mov byte [bx - 0x6cd6], al       ; 0x37bd
    mov al, byte [bp + 0x10]         ; 0x37c1
    mov byte [bx - 0x6cd5], al       ; 0x37c4
    mov ax, word [bp + 0x12]         ; 0x37c8
    mov word [bx - 0x6cdc], ax       ; 0x37cb
    mov ax, word [bp + 0x14]         ; 0x37cf
    mov word [bx - 0x6cda], ax       ; 0x37d2
    mov al, byte [bp + 0x16]         ; 0x37d6
    mov byte [bx - 0x6cd3], al       ; 0x37d9
    mov al, byte [bp + 0x1a]         ; 0x37dd
    mov byte [bx - 0x6cd1], al       ; 0x37e0
    mov al, byte [bp + 0x1c]         ; 0x37e4
    mov byte [bx - 0x6cd0], al       ; 0x37e7
    inc word [bss_931e]              ; 0x37eb
    mov ax, word [bss_931e]          ; 0x37ef
    cmp ax, strict word 0x78         ; 0x37f2
    jl short @..api_idx_0004_5.l16   ; 0x37f5
@..api_idx_0004_5.l15:
    mov ax, 0                        ; 0x37f7
    push ax                          ; 0x37fa
    call ds_app_0a27                 ; 0x37fb
    pop cx                           ; 0x37fe
    jmp short @..api_idx_0004_5.l15  ; 0x37ff
@..api_idx_0004_5.l16:
    ret                              ; 0x3801
