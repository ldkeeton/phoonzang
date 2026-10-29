; auto-generated
api_idx_0008_GUJV:
    mov ax, 0xfff8                   ; 0x5571
    call aztec_csav                  ; 0x5574
    mov ax, word [bp + 6]            ; 0x5577
    shl ax, 1                        ; 0x557a
    mov bx, ax                       ; 0x557c
    mov ax, word [bx + bss_9cd4]     ; 0x557e
    mov word [bp - 4], ax            ; 0x5582
    mov ax, 0x248                    ; 0x5585
    imul word [bp + 4]               ; 0x5588
    mov bx, ax                       ; 0x558b
    mov al, byte [bx + party_records + pc_rec.profession] ; 0x558d
    sub ah, ah                       ; 0x5591
    push ax                          ; 0x5593
    mov ax, word [bp + 6]            ; 0x5594
    shl ax, 1                        ; 0x5597
    add ax, bss_9882                 ; 0x5599
    push ax                          ; 0x559c
    call test_bit                    ; 0x559d
    add sp, byte 4                   ; 0x55a0
    test ax, ax                      ; 0x55a3
    je short .forward1               ; 0x55a5
    mov ax, 0x248                    ; 0x55a7
    imul word [bp + 4]               ; 0x55aa
    mov bx, ax                       ; 0x55ad
    mov al, byte [bx + party_records + pc_rec.glyph_set] ; 0x55af
    sub ah, ah                       ; 0x55b3
    push ax                          ; 0x55b5
    mov ax, word [bp + 6]            ; 0x55b6
    shl ax, 1                        ; 0x55b9
    add ax, bss_98be                 ; 0x55bb
    push ax                          ; 0x55be
    call test_bit                    ; 0x55bf
    add sp, byte 4                   ; 0x55c2
    test ax, ax                      ; 0x55c5
    je short .forward1               ; 0x55c7
    mov ax, 0x248                    ; 0x55c9
    imul word [bp + 4]               ; 0x55cc
    mov bx, ax                       ; 0x55cf
    mov al, byte [bx + party_records + pc_rec.gender] ; 0x55d1
    sub ah, ah                       ; 0x55d5
    push ax                          ; 0x55d7
    mov ax, word [bp + 6]            ; 0x55d8
    add ax, 0x98fa                   ; 0x55db
    push ax                          ; 0x55de
    call test_bit                    ; 0x55df
    add sp, byte 4                   ; 0x55e2
    test ax, ax                      ; 0x55e5
    jne short .forward2              ; 0x55e7
.forward1:
    mov ax, 0x9b                     ; 0x55e9
    push ax                          ; 0x55ec
    mov ax, 0x49                     ; 0x55ed
    push ax                          ; 0x55f0
    mov ax, MSG_UNUSABLE_1506        ; 0x55f1
    push ax                          ; 0x55f4
    call api_idx_0054_IJQR           ; 0x55f5
    add sp, byte 6                   ; 0x55f8
    mov ax, 0                        ; 0x55fb
    ret                              ; 0x55fe
.forward2:
    mov ax, 0                        ; 0x55ff
    push ax                          ; 0x5602
    push word [bp + 4]               ; 0x5603
    call api_idx_0004_PULL           ; 0x5606
    add sp, byte 4                   ; 0x5609
    mov word [bp - 2], ax            ; 0x560c
    cmp ax, strict word 0xffff       ; 0x560f
    jne short .forward3              ; 0x5612
    mov ax, 0x9b                     ; 0x5614
    push ax                          ; 0x5617
    mov ax, 0x49                     ; 0x5618
    push ax                          ; 0x561b
    mov ax, MSG_FULL                 ; 0x561c
    push ax                          ; 0x561f
    call api_idx_0054_IJQR           ; 0x5620
    add sp, byte 6                   ; 0x5623
    mov ax, 0                        ; 0x5626
    ret                              ; 0x5629
.forward3:
    mov ax, 0x248                    ; 0x562a
    imul word [bp + 4]               ; 0x562d
    mov bx, ax                       ; 0x5630
    mov ax, word [bx + party_records + pc_rec.f_0014] ; 0x5632
    mov dx, word [bx + party_records + pc_rec.f_0016] ; 0x5636
    mov cx, word [bp + 6]            ; 0x563a
    shl cx, 1                        ; 0x563d
    shl cx, 1                        ; 0x563f
    mov bx, cx                       ; 0x5641
    mov cx, word [bx + bss_9936]     ; 0x5643
    mov bx, word [bx + bss_9938]     ; 0x5647
    cmp dx, bx                       ; 0x564b
    jg short .forward4               ; 0x564d
    jne short .forward5              ; 0x564f
    cmp ax, cx                       ; 0x5651
    jb short .forward5               ; 0x5653
.forward4:
    jmp short .forward6              ; 0x5655
.forward5:
    mov ax, 0x9b                     ; 0x5657
    push ax                          ; 0x565a
    mov ax, 0x49                     ; 0x565b
    push ax                          ; 0x565e
    mov ax, MSG_SHORT_GP             ; 0x565f
    push ax                          ; 0x5662
    call api_idx_0054_IJQR           ; 0x5663
    add sp, byte 6                   ; 0x5666
    mov ax, 0                        ; 0x5669
    ret                              ; 0x566c
.forward6:
    mov ax, 0x9b                     ; 0x566d
    push ax                          ; 0x5670
    mov ax, 0x49                     ; 0x5671
    push ax                          ; 0x5674
    mov ax, MSG_SOLD_1507            ; 0x5675
    push ax                          ; 0x5678
    call api_idx_0054_IJQR           ; 0x5679
    add sp, byte 6                   ; 0x567c
    push word [bp - 4]               ; 0x567f
    call loc_GMVH                    ; 0x5682
    pop cx                           ; 0x5685
    test ax, ax                      ; 0x5686
    je short .forward7               ; 0x5688
    mov ax, word [bp - 4]            ; 0x568a
    add ax, 0xfe70                   ; 0x568d
    push ax                          ; 0x5690
    mov al, byte [bss_91c6]          ; 0x5691
    cbw                              ; 0x5694
    push ax                          ; 0x5695
    mov ax, 0x15                     ; 0x5696
    push ax                          ; 0x5699
    call assign_slot_bit             ; 0x569a
    add sp, byte 6                   ; 0x569d
.forward7:
    mov ax, word [bp - 2]            ; 0x56a0
    mov cx, 0x100                    ; 0x56a3
    cwd                              ; 0x56a6
    idiv cx                          ; 0x56a7
    mov word [bp - 6], ax            ; 0x56a9
    mov word [bp - 8], dx            ; 0x56ac
    mov ax, 1                        ; 0x56af
    push ax                          ; 0x56b2
    mov ax, word [bp + 6]            ; 0x56b3
    shl ax, 1                        ; 0x56b6
    mov bx, ax                       ; 0x56b8
    push word [bx + bss_9c6a]        ; 0x56ba
    mov ax, 0x248                    ; 0x56be
    imul word [bp + 4]               ; 0x56c1
    push ax                          ; 0x56c4
    mov ax, 0x78                     ; 0x56c5
    imul word [bp - 6]               ; 0x56c8
    mov cx, ax                       ; 0x56cb
    pop ax                           ; 0x56cd
    add ax, cx                       ; 0x56ce
    push ax                          ; 0x56d0
    mov ax, 0xc                      ; 0x56d1
    imul word [bp - 8]               ; 0x56d4
    mov cx, ax                       ; 0x56d7
    pop ax                           ; 0x56d9
    add ax, cx                       ; 0x56da
    add ax, 0x5c34                   ; 0x56dc
    push ax                          ; 0x56df
    push word [bp - 4]               ; 0x56e0
    push word [bp + 4]               ; 0x56e3
    call api_idx_004c_RQSO           ; 0x56e6
    add sp, byte 0xa                 ; 0x56e9
    push word [bp + 4]               ; 0x56ec
    call api_idx_004c_OGSK           ; 0x56ef
    pop cx                           ; 0x56f2
    mov ax, word [bp + 6]            ; 0x56f3
    shl ax, 1                        ; 0x56f6
    shl ax, 1                        ; 0x56f8
    mov bx, ax                       ; 0x56fa
    mov ax, word [bx + bss_9936]     ; 0x56fc
    mov dx, word [bx + bss_9938]     ; 0x5700
    push ax                          ; 0x5704
    push dx                          ; 0x5705
    mov ax, 0x248                    ; 0x5706
    imul word [bp + 4]               ; 0x5709
    mov bx, ax                       ; 0x570c
    pop dx                           ; 0x570e
    pop ax                           ; 0x570f
    sub word [bx + party_records + pc_rec.f_0014], ax ; 0x5710
    sbb word [bx + party_records + pc_rec.f_0016], dx ; 0x5714
    mov ax, word [bp + 6]            ; 0x5718
    shl ax, 1                        ; 0x571b
    mov bx, ax                       ; 0x571d
    mov word [bx + bss_9cd4], 0      ; 0x571f
    call api_idx_0004_GJHP           ; 0x5725
    mov ax, 0                        ; 0x5728
    push ax                          ; 0x572b
    push ax                          ; 0x572c
    push word [bp - 4]               ; 0x572d
    mov ax, 4                        ; 0x5730
    push ax                          ; 0x5733
    push word [bp + 4]               ; 0x5734
    call api_idx_0006_SRQN           ; 0x5737
    add sp, byte 0xa                 ; 0x573a
    ret                              ; 0x573d
