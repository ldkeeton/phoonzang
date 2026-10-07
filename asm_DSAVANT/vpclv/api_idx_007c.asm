api_idx_007c:
    mov ax, 0xff84                   ; 0x0572
    call ds_dispatch_f40b            ; 0x0575
    mov ax, 0                        ; 0x0578
    push ax                          ; 0x057b
    push ax                          ; 0x057c
    push word [data_9418]            ; 0x057d
    push word [data_9416]            ; 0x0581
    call ds_dispatch_e942            ; 0x0585
    add sp, byte 8                   ; 0x0588
    mov ax, 0                        ; 0x058b
    push ax                          ; 0x058e
    push ax                          ; 0x058f
    push word [data_941c]            ; 0x0590
    push word [data_941a]            ; 0x0594
    call ds_dispatch_e942            ; 0x0598
    add sp, byte 8                   ; 0x059b
    mov ax, 0x12                     ; 0x059e
    push ax                          ; 0x05a1
    mov ax, 0xe                      ; 0x05a2
    push ax                          ; 0x05a5
    push word [bp + 0x4]             ; 0x05a6
    call api_idx_0010                ; 0x05a9
    add sp, byte 6                   ; 0x05ac
    mov ax, 0                        ; 0x05af
    push ax                          ; 0x05b2
    push ax                          ; 0x05b3
    call ds_dispatch_e823            ; 0x05b4
    add sp, byte 4                   ; 0x05b7
    mov ax, 0x4c                     ; 0x05ba
    push ax                          ; 0x05bd
    mov ax, 0x248                    ; 0x05be
    imul word [bp + 0x4]             ; 0x05c1
    add ax, 0x5bf4                   ; 0x05c4
    push ax                          ; 0x05c7
    call ds_dispatch_fa90            ; 0x05c8
    pop cx                           ; 0x05cb
    mov cx, 6                        ; 0x05cc
    imul cx                          ; 0x05cf
    mov cx, data_0002                ; 0x05d1
    cwd                              ; 0x05d4
    idiv cx                          ; 0x05d5
    mov cx, ax                       ; 0x05d7
    mov ax, 0x28                     ; 0x05d9
    sub ax, cx                       ; 0x05dc
    push ax                          ; 0x05de
    call ds_dispatch_e809            ; 0x05df
    add sp, byte 4                   ; 0x05e2
    mov ax, 0                        ; 0x05e5
    push ax                          ; 0x05e8
    mov ax, 0x248                    ; 0x05e9
    imul word [bp + 0x4]             ; 0x05ec
    add ax, 0x5bf4                   ; 0x05ef
    push ax                          ; 0x05f2
    call ds_dispatch_e84e            ; 0x05f3
    add sp, byte 4                   ; 0x05f6
    mov ax, 0                        ; 0x05f9
    push ax                          ; 0x05fc
    mov ax, 1                        ; 0x05fd
    push ax                          ; 0x0600
    call ds_dispatch_e823            ; 0x0601
    add sp, byte 4                   ; 0x0604
    mov ax, 6                        ; 0x0607
    push ax                          ; 0x060a
    mov ax, 0x5a                     ; 0x060b
    push ax                          ; 0x060e
    call ds_dispatch_e809            ; 0x060f
    add sp, byte 4                   ; 0x0612
    lea ax, word [bp - 0x0058]       ; 0x0615
    push ax                          ; 0x0618
    mov ax, 0x248                    ; 0x0619
    imul word [bp + 0x4]             ; 0x061c
    mov bx, ax                       ; 0x061f
    mov al, byte [bx + 0x5e2c]       ; 0x0621
    sub ah, ah                       ; 0x0625
    add ax, 0x8c                     ; 0x0627
    push ax                          ; 0x062a
    call ds_dispatch_b53b            ; 0x062b
    add sp, byte 4                   ; 0x062e
    mov ax, 0                        ; 0x0631
    push ax                          ; 0x0634
    mov al, byte [bp - 0x0058]       ; 0x0635
    sub ah, ah                       ; 0x0638
    push ax                          ; 0x063a
    call ds_dispatch_e830            ; 0x063b
    add sp, byte 4                   ; 0x063e
    mov ax, 0                        ; 0x0641
    push ax                          ; 0x0644
    mov ax, 0x2d                     ; 0x0645
    push ax                          ; 0x0648
    call ds_dispatch_e830            ; 0x0649
    add sp, byte 4                   ; 0x064c
    lea ax, word [bp - 0x0058]       ; 0x064f
    push ax                          ; 0x0652
    mov ax, 0x248                    ; 0x0653
    imul word [bp + 0x4]             ; 0x0656
    mov bx, ax                       ; 0x0659
    mov al, byte [bx + 0x5e2b]       ; 0x065b
    sub ah, ah                       ; 0x065f
    add ax, strict word 0x64         ; 0x0661
    push ax                          ; 0x0664
    call ds_dispatch_b53b            ; 0x0665
    add sp, byte 4                   ; 0x0668
    mov ax, 0                        ; 0x066b
    push ax                          ; 0x066e
    lea ax, word [bp - 0x0058]       ; 0x066f
    push ax                          ; 0x0672
    call ds_dispatch_e84e            ; 0x0673
    add sp, byte 4                   ; 0x0676
    mov ax, 0                        ; 0x0679
    push ax                          ; 0x067c
    mov ax, 0x84                     ; 0x067d
    push ax                          ; 0x0680
    call ds_dispatch_e823            ; 0x0681
    add sp, byte 4                   ; 0x0684
    mov ax, 0xc                      ; 0x0687
    push ax                          ; 0x068a
    mov ax, 0x5a                     ; 0x068b
    push ax                          ; 0x068e
    call ds_dispatch_e809            ; 0x068f
    add sp, byte 4                   ; 0x0692
    lea ax, word [bp - 0x0058]       ; 0x0695
    push ax                          ; 0x0698
    mov ax, 0x248                    ; 0x0699
    imul word [bp + 0x4]             ; 0x069c
    mov bx, ax                       ; 0x069f
    mov al, byte [bx + 0x5e2d]       ; 0x06a1
    sub ah, ah                       ; 0x06a5
    add ax, strict word 0x78         ; 0x06a7
    push ax                          ; 0x06aa
    call ds_dispatch_b53b            ; 0x06ab
    add sp, byte 4                   ; 0x06ae
    mov ax, 0                        ; 0x06b1
    push ax                          ; 0x06b4
    lea ax, word [bp - 0x0058]       ; 0x06b5
    push ax                          ; 0x06b8
    call ds_dispatch_e84e            ; 0x06b9
    add sp, byte 4                   ; 0x06bc
    mov ax, 0x12                     ; 0x06bf
    push ax                          ; 0x06c2
    mov ax, 0x5a                     ; 0x06c3
    push ax                          ; 0x06c6
    call ds_dispatch_e809            ; 0x06c7
    add sp, byte 4                   ; 0x06ca
    lea ax, word [bp - 0x0058]       ; 0x06cd
    push ax                          ; 0x06d0
    mov ax, 0xc8                     ; 0x06d1
    push ax                          ; 0x06d4
    call ds_dispatch_b53b            ; 0x06d5
    add sp, byte 4                   ; 0x06d8
    mov ax, 0                        ; 0x06db
    push ax                          ; 0x06de
    lea ax, word [bp - 0x0058]       ; 0x06df
    push ax                          ; 0x06e2
    call ds_dispatch_e84e            ; 0x06e3
    add sp, byte 4                   ; 0x06e6
    mov ax, 0                        ; 0x06e9
    push ax                          ; 0x06ec
    mov ax, 4                        ; 0x06ed
    push ax                          ; 0x06f0
    mov ax, 0x248                    ; 0x06f1
    imul word [bp + 0x4]             ; 0x06f4
    mov bx, ax                       ; 0x06f7
    push word [bx + 0x5c18]          ; 0x06f9
    call ds_dispatch_b2e7            ; 0x06fd
    add sp, byte 6                   ; 0x0700
    mov ax, 0x248                    ; 0x0703
    imul word [bp + 0x4]             ; 0x0706
    mov bx, ax                       ; 0x0709
    mov ax, word [bx + 0x5bfc]       ; 0x070b
    mov dx, word [bx + 0x5bfe]       ; 0x070f
    mov cx, 0x16d                    ; 0x0713
    mov bx, 0                        ; 0x0716
    call ds_dispatch_f99f            ; 0x0719
    add ax, strict word 0xffee       ; 0x071c
    adc dx, byte 0xff                ; 0x071f
    mov cx, 4                        ; 0x0722
    mov bx, 0                        ; 0x0725
    call ds_dispatch_f99f            ; 0x0728
    push ax                          ; 0x072b
    push dx                          ; 0x072c
    mov ax, 0x248                    ; 0x072d
    imul word [bp + 0x4]             ; 0x0730
    mov bx, ax                       ; 0x0733
    mov ax, word [bx + 0x5c1a]       ; 0x0735
    cwd                              ; 0x0739
    mov cx, ax                       ; 0x073a
    mov bx, dx                       ; 0x073c
    pop dx                           ; 0x073e
    pop ax                           ; 0x073f
    add ax, cx                       ; 0x0740
    adc dx, bx                       ; 0x0742
    mov cx, ax                       ; 0x0744
    mov bx, dx                       ; 0x0746
    add ax, strict word 0xffff       ; 0x0748
    adc dx, byte 0xff                ; 0x074b
    mov cx, ax                       ; 0x074e
    mov bx, dx                       ; 0x0750
    mov ax, 0x14                     ; 0x0752
    mov dx, 0                        ; 0x0755
    sub ax, cx                       ; 0x0758
    sbb dx, bx                       ; 0x075a
    push ax                          ; 0x075c
    push dx                          ; 0x075d
    mov ax, 0x248                    ; 0x075e
    imul word [bp + 0x4]             ; 0x0761
    mov bx, ax                       ; 0x0764
    mov al, byte [bx + 0x5d67]       ; 0x0766
    sub ah, ah                       ; 0x076a
    cwd                              ; 0x076c
    mov cx, ax                       ; 0x076d
    mov bx, dx                       ; 0x076f
    pop dx                           ; 0x0771
