; auto-generated
loc_LKSR:
    mov ax, 0                        ; 0x06c3
    call aztec_csav                  ; 0x06c6
    mov ax, word [bp + 0x4]          ; 0x06c9
    jmp short @..loc_LKSR.l5         ; 0x06cc
@..loc_LKSR.l1:
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
    mov ax, word [bss_0e14]          ; 0x06e9
    add ax, 0x90                     ; 0x06ec
    push ax                          ; 0x06ef
    call ds_leaf_loc_JIKQ            ; 0x06f0
    add sp, byte 6                   ; 0x06f3
    ret                              ; 0x06f6
@..loc_LKSR.l2:
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
    mov ax, word [bss_0e14]          ; 0x0712
    add ax, 0x290                    ; 0x0715
    push ax                          ; 0x0718
    call ds_leaf_loc_JIKQ            ; 0x0719
    add sp, byte 6                   ; 0x071c
    ret                              ; 0x071f
@..loc_LKSR.l3:
    push word [bp + 0x6]             ; 0x0720
    push word [bp + 0xa]             ; 0x0723
    push word [bp + 0x8]             ; 0x0726
    push word [bp + 0xe]             ; 0x0729
    push word [bp + 0xc]             ; 0x072c
    call loc_HLHU                    ; 0x072f
    add sp, byte 0x0a                ; 0x0732
    ret                              ; 0x0735
@..loc_LKSR.l4:
    push word [bp + 0x6]             ; 0x0736
    push word [bp + 0xa]             ; 0x0739
    push word [bp + 0x8]             ; 0x073c
    push word [bp + 0xe]             ; 0x073f
    push word [bp + 0xc]             ; 0x0742
    call loc_INQQ                    ; 0x0745
    add sp, byte 0x0a                ; 0x0748
    ret                              ; 0x074b
@..loc_LKSR.l5:
    cmp ax, strict word 0            ; 0x074c
    jne short @..loc_LKSR.l6         ; 0x074f
    jmp near @..loc_LKSR.l1          ; 0x0751
@..loc_LKSR.l6:
    cmp ax, strict word 1            ; 0x0754
    je short @..loc_LKSR.l2          ; 0x0757
    cmp ax, strict word 2            ; 0x0759
    je short @..loc_LKSR.l3          ; 0x075c
    cmp ax, strict word 3            ; 0x075e
    je short @..loc_LKSR.l4          ; 0x0761
    ret                              ; 0x0763
