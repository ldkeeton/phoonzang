api_idx_0004_2:
    mov ax, 0xfffc                   ; 0x05e6
    call ds_dispatch_f40b            ; 0x05e9
    call ds_dispatch_ec17            ; 0x05ec
    mov ax, word [bp + 0x4]          ; 0x05ef
    cwd                              ; 0x05f2
    les bx, word [0x0002]            ; 0x05f3
    mov cx, word [es:bx]             ; 0x05f7
    mov bx, word [es:bx + 0x2]       ; 0x05fa
    add ax, cx                       ; 0x05fe
    adc dx, bx                       ; 0x0600
    mov word [bp - 0x0002], dx       ; 0x0602
    mov word [bp - 0x0004], ax       ; 0x0605
@..api_idx_0004_2.l1:
    les bx, word [0x0002]            ; 0x0608
    mov ax, word [es:bx]             ; 0x060c
    mov dx, word [es:bx + 0x2]       ; 0x060f
    cmp dx, word [bp - 0x0002]       ; 0x0613
    jg short @..api_idx_0004_2.l2    ; 0x0616
    jne short @..api_idx_0004_2.l3   ; 0x0618
    cmp ax, word [bp - 0x0004]       ; 0x061a
    jb short @..api_idx_0004_2.l3    ; 0x061d
@..api_idx_0004_2.l2:
    jmp short @..api_idx_0004_2.l6   ; 0x061f
@..api_idx_0004_2.l3:
    call ds_dispatch_baef            ; 0x0621
    test ax, ax                      ; 0x0624
    je short @..api_idx_0004_2.l4    ; 0x0626
    ret                              ; 0x0628
@..api_idx_0004_2.l4:
    call loc_059a                    ; 0x0629
    test ax, ax                      ; 0x062c
    jne short @..api_idx_0004_2.l5   ; 0x062e
    call loc_05c0                    ; 0x0630
@..api_idx_0004_2.l5:
    jmp short @..api_idx_0004_2.l1   ; 0x0633
@..api_idx_0004_2.l6:
    ret                              ; 0x0635
loc_0636:
    mov ax, 0                        ; 0x0636
    call ds_dispatch_f40b            ; 0x0639
    mov ax, 0                        ; 0x063c
    push ax                          ; 0x063f
    mov ax, 8                        ; 0x0640
    push ax                          ; 0x0643
    mov ax, 0x8cfe                   ; 0x0644
    push ax                          ; 0x0647
    call ds_dispatch_f306            ; 0x0648
    add sp, byte 6                   ; 0x064b
    mov word [data_82ea], 0          ; 0x064e
    mov ax, word [bp + 0x4]          ; 0x0654
    jmp short @..local.l12           ; 0x0657
@..local.l8:
    mov ax, word [bp + 0x6]          ; 0x0659
    add word [data_8f44], ax         ; 0x065c
    jmp short @..local.l13           ; 0x0660
@..local.l9:
    mov ax, word [bp + 0x6]          ; 0x0662
    add word [data_8f46], ax         ; 0x0665
    jmp short @..local.l13           ; 0x0669
@..local.l10:
    mov ax, word [bp + 0x6]          ; 0x066b
    sub word [data_8f44], ax         ; 0x066e
    jmp short @..local.l13           ; 0x0672
@..local.l11:
    mov ax, word [bp + 0x6]          ; 0x0674
    sub word [data_8f46], ax         ; 0x0677
    jmp short @..local.l13           ; 0x067b
@..local.l12:
    cmp ax, strict word 0            ; 0x067d
    je short @..local.l8             ; 0x0680
    cmp ax, strict word 1            ; 0x0682
    je short @..local.l9             ; 0x0685
    cmp ax, strict word 2            ; 0x0687
    je short @..local.l10            ; 0x068a
    cmp ax, strict word 3            ; 0x068c
    je short @..local.l11            ; 0x068f
@..local.l13:
    ret                              ; 0x0691
loc_0692:
    mov ax, 0                        ; 0x0692
    call ds_dispatch_f40b            ; 0x0695
    mov ax, word [data_8f46]         ; 0x0698
    mov word [data_8f3a], ax         ; 0x069b
    mov ax, word [data_8f44]         ; 0x069e
    mov word [data_8f38], ax         ; 0x06a1
    mov ax, word [data_8f42]         ; 0x06a4
    mov word [data_8f36], ax         ; 0x06a7
    mov ax, word [data_8f40]         ; 0x06aa
    mov word [data_8f34], ax         ; 0x06ad
    mov ax, word [data_8f3e]         ; 0x06b0
    mov word [data_8f32], ax         ; 0x06b3
    mov ax, word [data_830c]         ; 0x06b6
    mov word [data_8f3c], ax         ; 0x06b9
    mov ax, word [data_82ee]         ; 0x06bc
    mov word [data_8f30], ax         ; 0x06bf
    ret                              ; 0x06c2
loc_06c3:
    mov ax, 0                        ; 0x06c3
    call ds_dispatch_f40b            ; 0x06c6
    mov ax, word [bp + 0x4]          ; 0x06c9
    jmp short @..local.l18           ; 0x06cc
@..local.l14:
    mov ax, 4                        ; 0x06ce
    push ax                          ; 0x06d1
    mov ax, word [bp + 0x6]          ; 0x06d2
    mov cx, 6                        ; 0x06d5
    shl ax, cl                       ; 0x06d8
    mov cx, word [bp + 0xa]          ; 0x06da
    shl cx, 1                        ; 0x06dd
    shl cx, 1                        ; 0x06df
    shl cx, 1                        ; 0x06e1
    add ax, cx                       ; 0x06e3
    add ax, word [bp + 0x8]          ; 0x06e5
    push ax                          ; 0x06e8
    mov ax, word [data_0e14]         ; 0x06e9
    add ax, 0x90                     ; 0x06ec
    push ax                          ; 0x06ef
    call ds_dispatch_ecf6            ; 0x06f0
    add sp, byte 6                   ; 0x06f3
    ret                              ; 0x06f6
@..local.l15:
    mov ax, 4                        ; 0x06f7
    push ax                          ; 0x06fa
    mov ax, word [bp + 0x6]          ; 0x06fb
    mov cx, 6                        ; 0x06fe
    shl ax, cl                       ; 0x0701
    mov cx, word [bp + 0xa]          ; 0x0703
    shl cx, 1                        ; 0x0706
    shl cx, 1                        ; 0x0708
    shl cx, 1                        ; 0x070a
    add ax, cx                       ; 0x070c
    add ax, word [bp + 0x8]          ; 0x070e
    push ax                          ; 0x0711
    mov ax, word [data_0e14]         ; 0x0712
    add ax, 0x290                    ; 0x0715
    push ax                          ; 0x0718
    call ds_dispatch_ecf6            ; 0x0719
    add sp, byte 6                   ; 0x071c
    ret                              ; 0x071f
@..local.l16:
    push word [bp + 0x6]             ; 0x0720
    push word [bp + 0xa]             ; 0x0723
    push word [bp + 0x8]             ; 0x0726
    push word [bp + 0xe]             ; 0x0729
    push word [bp + 0xc]             ; 0x072c
    call loc_1823                    ; 0x072f
    add sp, byte 0x0a                ; 0x0732
    ret                              ; 0x0735
@..local.l17:
    push word [bp + 0x6]             ; 0x0736
    push word [bp + 0xa]             ; 0x0739
    push word [bp + 0x8]             ; 0x073c
    push word [bp + 0xe]             ; 0x073f
    push word [bp + 0xc]             ; 0x0742
    call loc_189b                    ; 0x0745
    add sp, byte 0x0a                ; 0x0748
    ret                              ; 0x074b
@..local.l18:
    cmp ax, strict word 0            ; 0x074c
    jne short @..local.l19           ; 0x074f
    jmp near @..local.l14            ; 0x0751
@..local.l19:
    cmp ax, strict word 1            ; 0x0754
    je short @..local.l15            ; 0x0757
    cmp ax, strict word 2            ; 0x0759
    je short @..local.l16            ; 0x075c
    cmp ax, strict word 3            ; 0x075e
    je short @..local.l17            ; 0x0761
    ret                              ; 0x0763
