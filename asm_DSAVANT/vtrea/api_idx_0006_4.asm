api_idx_0006_4:
    mov ax, 0xfffa                   ; 0x550e
    call ds_dispatch_f40b            ; 0x5511
    mov ax, word [dseg_8d12]         ; 0x5514
    shl ax, 1                        ; 0x5517
    mov si, ax                       ; 0x5519
    mov bx, word [dseg_0e12]         ; 0x551b
    mov ax, word [bx + si + 0x3c0]   ; 0x551f
    mov word [bp - 0x0004], ax       ; 0x5523
    cmp word [bx + si + 0x1e0], byte 0 ; 0x5526
    jle short @..api_idx_0006_4.l1   ; 0x552b
    mov ax, 0                        ; 0x552d
    push ax                          ; 0x5530
    push word [bx + si + 0x1e0]      ; 0x5531
    call loc_0d87                    ; 0x5535
    add sp, byte 4                   ; 0x5538
@..api_idx_0006_4.l1:
    cmp word [dseg_830c], byte 0x0e  ; 0x553b
    je short @..api_idx_0006_4.l2    ; 0x5540
    jmp near @..api_idx_0006_4.l7    ; 0x5542
@..api_idx_0006_4.l2:
    cmp word [dseg_8f3e], byte 8     ; 0x5545
    je short @..api_idx_0006_4.l3    ; 0x554a
    jmp near @..api_idx_0006_4.l7    ; 0x554c
@..api_idx_0006_4.l3:
    cmp word [dseg_8f42], byte 7     ; 0x554f
    jne short @..api_idx_0006_4.l7   ; 0x5554
    cmp word [dseg_8f40], byte 2     ; 0x5556
    jne short @..api_idx_0006_4.l7   ; 0x555b
    mov ax, 1                        ; 0x555d
    push ax                          ; 0x5560
    call api_idx_000a_2              ; 0x5561
    pop cx                           ; 0x5564
    mov word [bp - 0x0002], 0        ; 0x5565
    jmp short @..api_idx_0006_4.l6   ; 0x556a
@..api_idx_0006_4.l4:
    mov ax, 0x248                    ; 0x556c
    imul word [bp - 0x0002]          ; 0x556f
    mov bx, ax                       ; 0x5572
    cmp byte [bx + 0x5e2f], 3        ; 0x5574
    jae short @..api_idx_0006_4.l5   ; 0x5579
    mov ax, 0xc8                     ; 0x557b
    push ax                          ; 0x557e
    call ds_dispatch_b7a9            ; 0x557f
    pop cx                           ; 0x5582
    push ax                          ; 0x5583
    mov ax, 0x248                    ; 0x5584
    imul word [bp - 0x0002]          ; 0x5587
    mov bx, ax                       ; 0x558a
    mov al, byte [bx + 0x5da1]       ; 0x558c
    sub ah, ah                       ; 0x5590
    mov cx, ax                       ; 0x5592
    pop ax                           ; 0x5594
    cmp ax, cx                       ; 0x5595
    jle short @..api_idx_0006_4.l5   ; 0x5597
    mov ax, 0x32                     ; 0x5599
    push ax                          ; 0x559c
    mov ax, 0xa                      ; 0x559d
    push ax                          ; 0x55a0
    push ax                          ; 0x55a1
    mov ax, 8                        ; 0x55a2
    push ax                          ; 0x55a5
    mov ax, 5                        ; 0x55a6
    push ax                          ; 0x55a9
    mov ax, 0x149b                   ; 0x55aa
    push ax                          ; 0x55ad
    push word [bp - 0x0002]          ; 0x55ae
    call api_idx_0056                ; 0x55b1
    add sp, byte 0x0e                ; 0x55b4
@..api_idx_0006_4.l5:
    inc word [bp - 0x0002]           ; 0x55b7
@..api_idx_0006_4.l6:
    mov ax, word [bp - 0x0002]       ; 0x55ba
    cmp ax, word [dseg_69c8]         ; 0x55bd
    jl short @..api_idx_0006_4.l4    ; 0x55c1
@..api_idx_0006_4.l7:
    mov ax, 8                        ; 0x55c3
    push ax                          ; 0x55c6
    mov ax, 0                        ; 0x55c7
    push ax                          ; 0x55ca
    push word [bp - 0x0004]          ; 0x55cb
    call ds_dispatch_ed3a            ; 0x55ce
    add sp, byte 6                   ; 0x55d1
    mov word [bp - 0x0006], ax       ; 0x55d4
    mov ax, 0                        ; 0x55d7
    push ax                          ; 0x55da
    push word [bp - 0x0006]          ; 0x55db
    mov ax, word [dseg_830c]         ; 0x55de
    mov cx, 4                        ; 0x55e1
    shl ax, cl                       ; 0x55e4
    add ax, 0x8d14                   ; 0x55e6
    push ax                          ; 0x55e9
    call ds_dispatch_ec41            ; 0x55ea
    add sp, byte 6                   ; 0x55ed
    mov ax, 1                        ; 0x55f0
    push ax                          ; 0x55f3
    mov ax, 0xb                      ; 0x55f4
    push ax                          ; 0x55f7
    push word [bp - 0x0004]          ; 0x55f8
    call ds_dispatch_ed3a            ; 0x55fb
    add sp, byte 6                   ; 0x55fe
    cmp ax, strict word 1            ; 0x5601
    jne short @..api_idx_0006_4.l8   ; 0x5604
    mov ax, 0                        ; 0x5606
    push ax                          ; 0x5609
    push word [bp - 0x0006]          ; 0x560a
    mov ax, word [dseg_830c]         ; 0x560d
    mov cx, 4                        ; 0x5610
    shl ax, cl                       ; 0x5613
    add ax, 0x5642                   ; 0x5615
    push ax                          ; 0x5618
    call ds_dispatch_ec41            ; 0x5619
    add sp, byte 6                   ; 0x561c
@..api_idx_0006_4.l8:
    mov ax, 2                        ; 0x561f
    push ax                          ; 0x5622
    mov ax, 9                        ; 0x5623
    push ax                          ; 0x5626
    push word [bp - 0x0004]          ; 0x5627
    call ds_dispatch_ed3a            ; 0x562a
    add sp, byte 6                   ; 0x562d
    mov word [bp - 0x0006], ax       ; 0x5630
    cmp ax, strict word 0            ; 0x5633
    jle short @..api_idx_0006_4.l9   ; 0x5636
    mov ax, 1                        ; 0x5638
    push ax                          ; 0x563b
    mov bx, word [dseg_0e12]         ; 0x563c
    mov si, word [dseg_8d12]         ; 0x5640
    mov al, byte [bx + si + 0x960]   ; 0x5644
    sub ah, ah                       ; 0x5648
    push ax                          ; 0x564a
    mov ax, word [dseg_830c]         ; 0x564b
    mov cx, 4                        ; 0x564e
    shl ax, cl                       ; 0x5651
    add ax, 0x8d14                   ; 0x5653
    push ax                          ; 0x5656
    call ds_dispatch_ec41            ; 0x5657
    add sp, byte 6                   ; 0x565a
    cmp word [bp - 0x0006], byte 1   ; 0x565d
    jle short @..api_idx_0006_4.l9   ; 0x5661
    mov ax, 1                        ; 0x5663
    push ax                          ; 0x5666
    mov bx, word [dseg_0e12]         ; 0x5667
    mov si, word [dseg_8d12]         ; 0x566b
    mov al, byte [bx + si + 0x960]   ; 0x566f
    sub ah, ah                       ; 0x5673
    push ax                          ; 0x5675
    mov ax, word [dseg_830c]         ; 0x5676
    mov cx, 4                        ; 0x5679
    shl ax, cl                       ; 0x567c
    add ax, 0x5642                   ; 0x567e
    push ax                          ; 0x5681
    call ds_dispatch_ec41            ; 0x5682
    add sp, byte 6                   ; 0x5685
@..api_idx_0006_4.l9:
    ret                              ; 0x5688
