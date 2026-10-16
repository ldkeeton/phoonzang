; auto-generated
leaf_loc_VHMP:
    mov word [bp - 0x0002], 3        ; 0x45b2
    jmp short loc_SKRT               ; 0x45b7
loc_JPGH:
    mov word [bp - 0x0002], 4        ; 0x45b9
    jmp short loc_SKRT               ; 0x45be
loc_TIUJ:
    mov word [bp - 0x0002], 5        ; 0x45c0
    jmp short loc_SKRT               ; 0x45c5
loc_IPVI:
    mov word [bp - 0x0002], 6        ; 0x45c7
    jmp short loc_SKRT               ; 0x45cc
loc_SUUR:
    mov word [bp - 0x0002], 7        ; 0x45ce
    jmp short loc_SKRT               ; 0x45d3
loc_OTPG:
    mov word [bp - 0x0002], 1        ; 0x45d5
    jmp short loc_SKRT               ; 0x45da
loc_KOVM:
    mov bx, word [bp + 0x6]          ; 0x45dc
    mov al, byte [bx + 0x37]         ; 0x45df
    sub ah, ah                       ; 0x45e2
    test ax, 8                       ; 0x45e4
    je short @..api_idx_0002_VMLV.l1 ; 0x45e7
    mov word [bp - 0x0002], 1        ; 0x45e9
@..api_idx_0002_VMLV.l1:
    jmp short loc_SKRT               ; 0x45ee
jumptable_45f0:
    dw leaf_loc_KOJL - IMAGE_BASE + 0x5055     ; 0x45f0
    dw leaf_loc_KOJL - IMAGE_BASE + 0x5055     ; 0x45f2
    dw leaf_loc_KOJL - IMAGE_BASE + 0x5055     ; 0x45f4
    dw leaf_loc_KOJL - IMAGE_BASE + 0x5055     ; 0x45f6
    dw leaf_loc_MKJK - IMAGE_BASE + 0x5055     ; 0x45f8
    dw leaf_loc_LHLU - IMAGE_BASE + 0x5055     ; 0x45fa
    dw leaf_loc_VHMP - IMAGE_BASE + 0x5055     ; 0x45fc
    dw loc_JPGH - IMAGE_BASE + 0x5055          ; 0x45fe
    dw loc_TIUJ - IMAGE_BASE + 0x5055          ; 0x4600
    dw loc_IPVI - IMAGE_BASE + 0x5055          ; 0x4602
    dw loc_SUUR - IMAGE_BASE + 0x5055          ; 0x4604
    dw loc_OTPG - IMAGE_BASE + 0x5055          ; 0x4606
    dw leaf_loc_KOJL - IMAGE_BASE + 0x5055     ; 0x4608
    dw loc_KOVM - IMAGE_BASE + 0x5055          ; 0x460a
    dw loc_KOVM - IMAGE_BASE + 0x5055          ; 0x460c
    dw loc_KOVM - IMAGE_BASE + 0x5055          ; 0x460e
    dw leaf_loc_KOJL - IMAGE_BASE + 0x5055     ; 0x4610
@..api_idx_0002_VMLV.l2:
    cmp ax, strict word 0x11         ; 0x4612
    jae short loc_SKRT               ; 0x4615
    xchg bx, ax                      ; 0x4617
    shl bx, 1                        ; 0x4618
    jmp [cs:bx - 0x69c9]             ; 0x461a
loc_SKRT:
    mov ax, 0x248                    ; 0x461f
    imul word [bp + 0x4]             ; 0x4622
    mov bx, ax                       ; 0x4625
    mov al, byte [bx + 0x5e2d]       ; 0x4627
    sub ah, ah                       ; 0x462b
    push ax                          ; 0x462d
    mov ax, word [bp + 0x6]          ; 0x462e
    add ax, strict word 0x32         ; 0x4631
    push ax                          ; 0x4634
    call ds_leaf_loc_PRVP            ; 0x4635
    add sp, byte 4                   ; 0x4638
    cmp ax, strict word 1            ; 0x463b
    jne short loc_QSIR               ; 0x463e
    mov ax, 0x248                    ; 0x4640
    imul word [bp + 0x4]             ; 0x4643
    mov bx, ax                       ; 0x4646
    mov al, byte [bx + 0x5e2b]       ; 0x4648
    sub ah, ah                       ; 0x464c
    push ax                          ; 0x464e
    mov ax, word [bp + 0x6]          ; 0x464f
    add ax, strict word 0x34         ; 0x4652
    push ax                          ; 0x4655
    call ds_leaf_loc_PRVP            ; 0x4656
    add sp, byte 4                   ; 0x4659
    cmp ax, strict word 1            ; 0x465c
    jne short loc_QSIR               ; 0x465f
    mov ax, 0x248                    ; 0x4661
    imul word [bp + 0x4]             ; 0x4664
    mov bx, ax                       ; 0x4667
    mov al, byte [bx + 0x5e2c]       ; 0x4669
    sub ah, ah                       ; 0x466d
    push ax                          ; 0x466f
    mov ax, word [bp + 0x6]          ; 0x4670
    add ax, strict word 0x36         ; 0x4673
    push ax                          ; 0x4676
    call ds_leaf_loc_PRVP            ; 0x4677
    add sp, byte 4                   ; 0x467a
    cmp ax, strict word 1            ; 0x467d
    je short loc_NIIG                ; 0x4680
loc_QSIR:
    mov word [bp - 0x0002], 0xffff   ; 0x4682
loc_NIIG:
    mov ax, word [bp - 0x0002]       ; 0x4687
    ret                              ; 0x468a
