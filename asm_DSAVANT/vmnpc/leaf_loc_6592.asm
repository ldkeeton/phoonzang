leaf_loc_6592:
    mov word [bp - 0x005c], 0        ; 0x6592
    jmp short loc_65b2               ; 0x6597
jumptable_6599:
    dw loc_63c8 - IMAGE_BASE + 0x5055          ; 0x6599
    dw loc_6485 - IMAGE_BASE + 0x5055          ; 0x659b
    dw loc_641a - IMAGE_BASE + 0x5055          ; 0x659d
    dw loc_6462 - IMAGE_BASE + 0x5055          ; 0x659f
    dw loc_6485 - IMAGE_BASE + 0x5055          ; 0x65a1
    dw leaf_loc_6592 - IMAGE_BASE + 0x5055     ; 0x65a3
loc_65a5:
    cmp ax, strict word 6            ; 0x65a5
    jae short loc_65b2               ; 0x65a8
    xchg bx, ax                      ; 0x65aa
    shl bx, 1                        ; 0x65ab
    jmp [cs:bx - 0x4a20]             ; 0x65ad
loc_65b2:
    cmp word [bp - 0x005c], byte 0   ; 0x65b2
    je short loc_65bb                ; 0x65b6
    jmp near loc_6359                ; 0x65b8
loc_65bb:
    cmp word [bp - 0x0060], byte 5   ; 0x65bb
    jne short loc_65c5               ; 0x65bf
    mov ax, 0                        ; 0x65c1
    ret                              ; 0x65c4
loc_65c5:
    mov ax, 0x248                    ; 0x65c5
    imul word [bp + 0x4]             ; 0x65c8
    mov bx, ax                       ; 0x65cb
    mov al, byte [bx + 0x5d6b]       ; 0x65cd
    sub ah, ah                       ; 0x65d1
    push ax                          ; 0x65d3
    add bx, word [bss_9136]          ; 0x65d4
    mov al, byte [bx + 0x5db2]       ; 0x65d8
    cbw                              ; 0x65dc
    add ax, word [bss_964e]          ; 0x65dd
    mov cx, 3                        ; 0x65e1
    cwd                              ; 0x65e4
    idiv cx                          ; 0x65e5
    mov cx, ax                       ; 0x65e7
    pop ax                           ; 0x65e9
    add ax, cx                       ; 0x65ea
    add ax, word [bp - 0x0002]       ; 0x65ec
    add ax, strict word 0xfff6       ; 0x65ef
    mov word [bp - 0x0002], ax       ; 0x65f2
    mov ax, 0x5f                     ; 0x65f5
    push ax                          ; 0x65f8
    mov ax, 0                        ; 0x65f9
    push ax                          ; 0x65fc
    mov al, byte [bss_91c7]          ; 0x65fd
    sub ah, ah                       ; 0x6600
    mov bx, ax                       ; 0x6602
    mov al, byte [bx - 0x7622]       ; 0x6604
    cbw                              ; 0x6608
    add ax, word [bss_964e]          ; 0x6609
    mov cx, 3                        ; 0x660d
    cwd                              ; 0x6610
    idiv cx                          ; 0x6611
    add ax, word [bp - 0x0002]       ; 0x6613
    push ax                          ; 0x6616
    call ds_dispatch_b7c2            ; 0x6617
    add sp, byte 6                   ; 0x661a
    mov word [bp - 0x0002], ax       ; 0x661d
    mov ax, 0x64                     ; 0x6620
    push ax                          ; 0x6623
    call ds_dispatch_b7a9            ; 0x6624
    pop cx                           ; 0x6627
    add ax, word [bss_9d64]          ; 0x6628
    mov word [bp - 0x0004], ax       ; 0x662c
    mov ax, 5                        ; 0x662f
    push ax                          ; 0x6632
    call ds_dispatch_b7a9            ; 0x6633
    pop cx                           ; 0x6636
    add ax, word [bss_9d64]          ; 0x6637
    add ax, strict word 0xa          ; 0x663b
    mov word [bss_9d64], ax          ; 0x663e
    lea ax, word [bp - 0x005a]       ; 0x6641
    push ax                          ; 0x6644
    mov ax, 0x637                    ; 0x6645
    push ax                          ; 0x6648
    call ds_dispatch_b53b            ; 0x6649
    add sp, byte 4                   ; 0x664c
    mov ax, 0x5e                     ; 0x664f
    push ax                          ; 0x6652
    mov ax, 0x248                    ; 0x6653
    imul word [bp + 0x4]             ; 0x6656
    add ax, 0x5bf4                   ; 0x6659
    push ax                          ; 0x665c
    lea ax, word [bp - 0x005a]       ; 0x665d
    push ax                          ; 0x6660
    call ds_dispatch_b300            ; 0x6661
    add sp, byte 6                   ; 0x6664
    mov ax, 0x55                     ; 0x6667
    push ax                          ; 0x666a
    mov ax, 0                        ; 0x666b
    push ax                          ; 0x666e
    mov ax, 1                        ; 0x666f
    push ax                          ; 0x6672
    lea ax, word [bp - 0x005a]       ; 0x6673
    push ax                          ; 0x6676
    call loc_130b                    ; 0x6677
    add sp, byte 8                   ; 0x667a
    mov word [bp - 0x000a], 0        ; 0x667d
    mov ax, word [bp - 0x0004]       ; 0x6682
    cmp ax, word [bp - 0x0002]       ; 0x6685
    jge short loc_66d9               ; 0x6688
    cmp word [bss_9d62], byte 3      ; 0x668a
    jne short loc_66a2               ; 0x668f
    mov ax, 3                        ; 0x6691
    push ax                          ; 0x6694
    mov ax, 0x1c                     ; 0x6695
    push ax                          ; 0x6698
    push word [bp + 0x4]             ; 0x6699
    call loc_8662                    ; 0x669c
    add sp, byte 6                   ; 0x669f
loc_66a2:
    mov ax, 0x55                     ; 0x66a2
    push ax                          ; 0x66a5
    mov ax, 1                        ; 0x66a6
    push ax                          ; 0x66a9
    push ax                          ; 0x66aa
    mov ax, 0x638                    ; 0x66ab
    push ax                          ; 0x66ae
    call api_idx_0050                ; 0x66af
    add sp, byte 8                   ; 0x66b2
    mov ax, 0xa                      ; 0x66b5
    push ax                          ; 0x66b8
    call ds_dispatch_b7a9            ; 0x66b9
    pop cx                           ; 0x66bc
    add ax, strict word 5            ; 0x66bd
    mov word [bp - 0x0006], ax       ; 0x66c0
    mov ax, 0xa                      ; 0x66c3
    push ax                          ; 0x66c6
    call ds_dispatch_b7a9            ; 0x66c7
    pop cx                           ; 0x66ca
    add ax, strict word 5            ; 0x66cb
    mov word [bp - 0x0008], ax       ; 0x66ce
    mov word [bp - 0x000a], 1        ; 0x66d1
    jmp near loc_6767                ; 0x66d6
loc_66d9:
    mov ax, word [bp - 0x0002]       ; 0x66d9
    imul word [bss_9d62]             ; 0x66dc
    cmp ax, word [bp - 0x0004]       ; 0x66e0
    jl short loc_66eb                ; 0x66e3
    cmp word [bp - 0x0004], byte 0x5f ; 0x66e5
    jl short loc_6733                ; 0x66e9
loc_66eb:
    mov ax, 0x16                     ; 0x66eb
    push ax                          ; 0x66ee
    mov ax, 1                        ; 0x66ef
    push ax                          ; 0x66f2
    push ax                          ; 0x66f3
    mov ax, 0x63a                    ; 0x66f4
    push ax                          ; 0x66f7
    call api_idx_0050                ; 0x66f8
    add sp, byte 8                   ; 0x66fb
    mov ax, 0xa                      ; 0x66fe
    push ax                          ; 0x6701
    call ds_dispatch_b7a9            ; 0x6702
    pop cx                           ; 0x6705
    mov cx, ax                       ; 0x6706
    add ax, strict word 0xa          ; 0x6708
    mov cx, ax                       ; 0x670b
    mov ax, 0                        ; 0x670d
    sub ax, cx                       ; 0x6710
    mov word [bp - 0x0006], ax       ; 0x6712
    mov ax, 0xa                      ; 0x6715
    push ax                          ; 0x6718
    call ds_dispatch_b7a9            ; 0x6719
    pop cx                           ; 0x671c
    mov cx, ax                       ; 0x671d
    add ax, strict word 0xa          ; 0x671f
    mov cx, ax                       ; 0x6722
    mov ax, 0                        ; 0x6724
    sub ax, cx                       ; 0x6727
    mov word [bp - 0x0008], ax       ; 0x6729
    mov word [bp - 0x000a], 0xffff   ; 0x672c
    jmp short loc_6767               ; 0x6731
loc_6733:
    mov ax, 0x55                     ; 0x6733
    push ax                          ; 0x6736
    mov ax, 1                        ; 0x6737
    push ax                          ; 0x673a
    push ax                          ; 0x673b
    mov ax, 0x639                    ; 0x673c
    push ax                          ; 0x673f
    call api_idx_0050                ; 0x6740
    add sp, byte 8                   ; 0x6743
    mov ax, 0xa                      ; 0x6746
    push ax                          ; 0x6749
    call ds_dispatch_b7a9            ; 0x674a
    pop cx                           ; 0x674d
    add ax, strict word 0xfffb       ; 0x674e
    mov word [bp - 0x0006], ax       ; 0x6751
    mov ax, 0xa                      ; 0x6754
    push ax                          ; 0x6757
    call ds_dispatch_b7a9            ; 0x6758
    pop cx                           ; 0x675b
    add ax, strict word 0xfffb       ; 0x675c
    mov word [bp - 0x0008], ax       ; 0x675f
    mov word [bp - 0x000a], 0        ; 0x6762
loc_6767:
    push word [bp - 0x0008]          ; 0x6767
    push word [bp - 0x0006]          ; 0x676a
    push word [bp + 0x4]             ; 0x676d
    call loc_85f9                    ; 0x6770
    add sp, byte 6                   ; 0x6773
    mov ax, word [bp - 0x000a]       ; 0x6776
    ret                              ; 0x6779
