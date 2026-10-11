api_idx_0022:
    mov ax, 0xffde                   ; 0x9491
    call ds_dispatch_f40b            ; 0x9494
    mov word [bp - 0x000c], 0        ; 0x9497
    mov ax, word [bss_5218]          ; 0x949c
    mov word [bp - 0x000e], ax       ; 0x949f
    cmp byte [bss_5987], 5           ; 0x94a2
    jne short @..api_idx_0022.l1     ; 0x94a7
    cmp ax, strict word 0            ; 0x94a9
    jle short @..api_idx_0022.l1     ; 0x94ac
    inc ax                           ; 0x94ae
    inc ax                           ; 0x94af
    jmp short @..api_idx_0022.l2     ; 0x94b0
@..api_idx_0022.l1:
    mov ax, word [bp - 0x000e]       ; 0x94b2
@..api_idx_0022.l2:
    mov word [bp - 0x000e], ax       ; 0x94b5
    mov ax, 0x3a                     ; 0x94b8
    push ax                          ; 0x94bb
    mov ax, 0x5912                   ; 0x94bc
    push ax                          ; 0x94bf
    lea ax, word [bp - 0x0022]       ; 0x94c0
    push ax                          ; 0x94c3
    call 0xd112                      ; 0x94c4
    add sp, byte 6                   ; 0x94c7
    cmp word [bp - 0x000e], byte 0   ; 0x94ca
    je short @..api_idx_0022.l3      ; 0x94ce
    mov word [bp - 0x000c], 1        ; 0x94d0
    mov ax, 1                        ; 0x94d5
    push ax                          ; 0x94d8
    push ax                          ; 0x94d9
    mov ax, 0                        ; 0x94da
    push ax                          ; 0x94dd
    lea ax, word [bp - 0x0022]       ; 0x94de
    push ax                          ; 0x94e1
    call 0xd1a8                      ; 0x94e2
    add sp, byte 8                   ; 0x94e5
@..api_idx_0022.l3:
    mov ax, 0                        ; 0x94e8
    push ax                          ; 0x94eb
    push ax                          ; 0x94ec
    push word [bss_93f0]             ; 0x94ed
    push word [bss_93ee]             ; 0x94f1
    call ds_dispatch_e942            ; 0x94f5
    add sp, byte 8                   ; 0x94f8
    mov ax, 0x4a                     ; 0x94fb
    push ax                          ; 0x94fe
    mov ax, 0x42                     ; 0x94ff
    push ax                          ; 0x9502
    mov ax, 0x12                     ; 0x9503
    push ax                          ; 0x9506
    mov ax, 0xe                      ; 0x9507
    push ax                          ; 0x950a
    call ds_dispatch_e928            ; 0x950b
    add sp, byte 8                   ; 0x950e
    mov word [bp - 0x0008], dx       ; 0x9511
    mov word [bp - 0x000a], ax       ; 0x9514
    push word [bp + 0x4]             ; 0x9517
    call api_idx_007c                ; 0x951a
    pop cx                           ; 0x951d
    mov ax, 8                        ; 0x951e
    push ax                          ; 0x9521
    mov ax, 0xb                      ; 0x9522
    push ax                          ; 0x9525
    mov ax, 0x4a                     ; 0x9526
    push ax                          ; 0x9529
    mov ax, 0x26                     ; 0x952a
    push ax                          ; 0x952d
    mov ax, 0x11                     ; 0x952e
    push ax                          ; 0x9531
    mov ax, 0xc                      ; 0x9532
    push ax                          ; 0x9535
    mov ax, 0                        ; 0x9536
    push ax                          ; 0x9539
    call ds_dispatch_baa6            ; 0x953a
    add sp, byte 0x0e                ; 0x953d
    mov ax, 0xa                      ; 0x9540
    push ax                          ; 0x9543
    mov ax, 9                        ; 0x9544
    push ax                          ; 0x9547
    mov ax, 0x4a                     ; 0x9548
    push ax                          ; 0x954b
    mov ax, 0x43                     ; 0x954c
    push ax                          ; 0x954f
    mov ax, 0x11                     ; 0x9550
    push ax                          ; 0x9553
    mov ax, 0x27                     ; 0x9554
    push ax                          ; 0x9557
    mov ax, 1                        ; 0x9558
    push ax                          ; 0x955b
    call ds_dispatch_baa6            ; 0x955c
    add sp, byte 0x0e                ; 0x955f
    mov ax, 2                        ; 0x9562
    push ax                          ; 0x9565
    mov ax, 1                        ; 0x9566
    push ax                          ; 0x9569
    mov ax, 0x18                     ; 0x956a
    push ax                          ; 0x956d
    mov ax, 0x97                     ; 0x956e
    push ax                          ; 0x9571
    mov ax, 0x58                     ; 0x9572
    push ax                          ; 0x9575
    mov ax, 0x454                    ; 0x9576
    push ax                          ; 0x9579
    call api_idx_0058                ; 0x957a
    add sp, byte 0x0c                ; 0x957d
    mov word [bp - 0x0004], dx       ; 0x9580
    mov word [bp - 0x0006], ax       ; 0x9583
    call ds_dispatch_ec17            ; 0x9586
@..api_idx_0022.l4:
    mov ax, 0                        ; 0x9589
    push ax                          ; 0x958c
    push word [bp - 0x0008]          ; 0x958d
    push word [bp - 0x000a]          ; 0x9590
    call ds_dispatch_e94f            ; 0x9593
    add sp, byte 6                   ; 0x9596
    mov ax, word [bp + 0x4]          ; 0x9599
    shl ax, 1                        ; 0x959c
    mov bx, ax                       ; 0x959e
    push word [bx + 0x69bc]          ; 0x95a0
    mov ax, 0x248                    ; 0x95a4
    imul word [bp + 0x4]             ; 0x95a7
    mov bx, ax                       ; 0x95aa
    mov al, byte [bx + 0x5e2a]       ; 0x95ac
    sub ah, ah                       ; 0x95b0
    push ax                          ; 0x95b2
    call api_idx_0016                ; 0x95b3
    add sp, byte 4                   ; 0x95b6
    mov ax, 0x12                     ; 0x95b9
    push ax                          ; 0x95bc
    mov ax, 0xe                      ; 0x95bd
    push ax                          ; 0x95c0
    push word [bp + 0x4]             ; 0x95c1
    call api_idx_0010                ; 0x95c4
    add sp, byte 6                   ; 0x95c7
    mov ax, 0x4a                     ; 0x95ca
    push ax                          ; 0x95cd
    mov ax, 0x42                     ; 0x95ce
    push ax                          ; 0x95d1
    mov ax, 0x12                     ; 0x95d2
    push ax                          ; 0x95d5
    mov ax, 0xe                      ; 0x95d6
    push ax                          ; 0x95d9
    call ds_dispatch_e8da            ; 0x95da
    add sp, byte 8                   ; 0x95dd
@..api_idx_0022.l5:
    mov ax, 0x59fe                   ; 0x95e0
    push ax                          ; 0x95e3
    call ds_dispatch_b90d            ; 0x95e4
    pop cx                           ; 0x95e7
    dec ax                           ; 0x95e8
    mov word [bp - 0x0002], ax       ; 0x95e9
    cmp word [bss_5b3e], byte 0      ; 0x95ec
    je short @..api_idx_0022.l5      ; 0x95f1
    mov ax, word [bp - 0x0002]       ; 0x95f3
    jmp short @..api_idx_0022.l8     ; 0x95f6
@..api_idx_0022.l6:
    mov ax, 0x248                    ; 0x95f8
    imul word [bp + 0x4]             ; 0x95fb
    mov bx, ax                       ; 0x95fe
    mov al, byte [bx + 0x5e2a]       ; 0x9600
    sub ah, ah                       ; 0x9604
    add ax, strict word 0x20         ; 0x9606
    mov cx, 0x21                     ; 0x9609
    cwd                              ; 0x960c
    idiv cx                          ; 0x960d
    mov ax, dx                       ; 0x960f
    mov byte [bx + 0x5e2a], al       ; 0x9611
    jmp short @..api_idx_0022.l9     ; 0x9615
@..api_idx_0022.l7:
    mov ax, 0x248                    ; 0x9617
    imul word [bp + 0x4]             ; 0x961a
    mov bx, ax                       ; 0x961d
    mov al, byte [bx + 0x5e2a]       ; 0x961f
    sub ah, ah                       ; 0x9623
    inc ax                           ; 0x9625
    mov cx, 0x21                     ; 0x9626
    cwd                              ; 0x9629
    idiv cx                          ; 0x962a
    mov ax, dx                       ; 0x962c
    mov byte [bx + 0x5e2a], al       ; 0x962e
    jmp short @..api_idx_0022.l9     ; 0x9632
@..api_idx_0022.l8:
    cmp ax, strict word 0            ; 0x9634
    je short @..api_idx_0022.l6      ; 0x9637
    cmp ax, strict word 1            ; 0x9639
    je short @..api_idx_0022.l7      ; 0x963c
@..api_idx_0022.l9:
    cmp word [bp - 0x0002], byte 2   ; 0x963e
    je short @..api_idx_0022.l10     ; 0x9642
    jmp near @..api_idx_0022.l4      ; 0x9644
@..api_idx_0022.l10:
    mov ax, 1                        ; 0x9647
    push ax                          ; 0x964a
    push ax                          ; 0x964b
    mov ax, 0x18                     ; 0x964c
    push ax                          ; 0x964f
    mov ax, 0x97                     ; 0x9650
    push ax                          ; 0x9653
    mov ax, 0x58                     ; 0x9654
    push ax                          ; 0x9657
    call ds_dispatch_be5f            ; 0x9658
    add sp, byte 0x0a                ; 0x965b
    mov ax, 0                        ; 0x965e
    push ax                          ; 0x9661
    mov ax, 1                        ; 0x9662
    push ax                          ; 0x9665
    mov ax, 0x18                     ; 0x9666
    push ax                          ; 0x9669
    mov ax, 0x97                     ; 0x966a
    push ax                          ; 0x966d
    mov ax, 0x58                     ; 0x966e
    push ax                          ; 0x9671
    call ds_dispatch_be5f            ; 0x9672
    add sp, byte 0x0a                ; 0x9675
    mov ax, 1                        ; 0x9678
    push ax                          ; 0x967b
    push word [bp - 0x0004]          ; 0x967c
    push word [bp - 0x0006]          ; 0x967f
    call ds_dispatch_e94f            ; 0x9682
    add sp, byte 6                   ; 0x9685
    mov ax, 1                        ; 0x9688
    push ax                          ; 0x968b
    push word [bp - 0x0008]          ; 0x968c
    push word [bp - 0x000a]          ; 0x968f
    call ds_dispatch_e94f            ; 0x9692
    add sp, byte 6                   ; 0x9695
    mov ax, 0x12                     ; 0x9698
    push ax                          ; 0x969b
    mov ax, 0xe                      ; 0x969c
    push ax                          ; 0x969f
    push word [bp + 0x4]             ; 0x96a0
    call api_idx_0010                ; 0x96a3
    add sp, byte 6                   ; 0x96a6
    mov ax, 0xc7                     ; 0x96a9
    push ax                          ; 0x96ac
    mov ax, 0x13f                    ; 0x96ad
    push ax                          ; 0x96b0
    mov ax, 0                        ; 0x96b1
    push ax                          ; 0x96b4
    push ax                          ; 0x96b5
    call ds_dispatch_e8da            ; 0x96b6
    add sp, byte 8                   ; 0x96b9
    cmp word [bp - 0x000c], byte 1   ; 0x96bc
    jne short @..api_idx_0022.l11    ; 0x96c0
    mov ax, 1                        ; 0x96c2
    push ax                          ; 0x96c5
    push ax                          ; 0x96c6
    push word [bp - 0x000e]          ; 0x96c7
    lea ax, word [bp - 0x0022]       ; 0x96ca
    push ax                          ; 0x96cd
    call 0xd1a8                      ; 0x96ce
    add sp, byte 8                   ; 0x96d1
@..api_idx_0022.l11:
    ret                              ; 0x96d4
