; auto-generated
api_idx_0002_USJS:
    mov ax, 0xfffe                   ; 0x4573
    call aztec_csav                  ; 0x4576
    mov word [bp - 0x0002], 0xffff   ; 0x4579
    mov bx, word [bp + 0x6]          ; 0x457e
    mov al, byte [bx + 0x38]         ; 0x4581
    sub ah, ah                       ; 0x4584
    jmp near @..api_idx_0002_USJS.l3 ; 0x4586
jumptable_45f0_case_0:
    mov word [bp - 0x0002], 0        ; 0x4589
    mov bx, word [bp + 0x6]          ; 0x458e
    mov al, byte [bx + 0x37]         ; 0x4591
    sub ah, ah                       ; 0x4594
    test ax, 8                       ; 0x4596
    je short @..api_idx_0002_USJS.l1 ; 0x4599
    mov word [bp - 0x0002], 0xfffe   ; 0x459b
@..api_idx_0002_USJS.l1:
    jmp near @..api_idx_0002_USJS.l4 ; 0x45a0
jumptable_45f0_case_4:
    mov word [bp - 0x0002], 1        ; 0x45a3
    jmp near @..api_idx_0002_USJS.l4 ; 0x45a8
jumptable_45f0_case_5:
    mov word [bp - 0x0002], 2        ; 0x45ab
    jmp short @..api_idx_0002_USJS.l4 ; 0x45b0
jumptable_45f0_case_6:
    mov word [bp - 0x0002], 3        ; 0x45b2
    jmp short @..api_idx_0002_USJS.l4 ; 0x45b7
jumptable_45f0_case_7:
    mov word [bp - 0x0002], 4        ; 0x45b9
    jmp short @..api_idx_0002_USJS.l4 ; 0x45be
jumptable_45f0_case_8:
    mov word [bp - 0x0002], 5        ; 0x45c0
    jmp short @..api_idx_0002_USJS.l4 ; 0x45c5
jumptable_45f0_case_9:
    mov word [bp - 0x0002], 6        ; 0x45c7
    jmp short @..api_idx_0002_USJS.l4 ; 0x45cc
jumptable_45f0_case_10:
    mov word [bp - 0x0002], 7        ; 0x45ce
    jmp short @..api_idx_0002_USJS.l4 ; 0x45d3
jumptable_45f0_case_11:
    mov word [bp - 0x0002], 1        ; 0x45d5
    jmp short @..api_idx_0002_USJS.l4 ; 0x45da
jumptable_45f0_case_13:
    mov bx, word [bp + 0x6]          ; 0x45dc
    mov al, byte [bx + 0x37]         ; 0x45df
    sub ah, ah                       ; 0x45e2
    test ax, 8                       ; 0x45e4
    je short @..api_idx_0002_USJS.l2 ; 0x45e7
    mov word [bp - 0x0002], 1        ; 0x45e9
@..api_idx_0002_USJS.l2:
    jmp short @..api_idx_0002_USJS.l4 ; 0x45ee
jumptable_45f0:
    dw jumptable_45f0_case_0 - IMAGE_BASE + __zres_end ; 0x45f0
    dw jumptable_45f0_case_0 - IMAGE_BASE + __zres_end ; 0x45f2
    dw jumptable_45f0_case_0 - IMAGE_BASE + __zres_end ; 0x45f4
    dw jumptable_45f0_case_0 - IMAGE_BASE + __zres_end ; 0x45f6
    dw jumptable_45f0_case_4 - IMAGE_BASE + __zres_end ; 0x45f8
    dw jumptable_45f0_case_5 - IMAGE_BASE + __zres_end ; 0x45fa
    dw jumptable_45f0_case_6 - IMAGE_BASE + __zres_end ; 0x45fc
    dw jumptable_45f0_case_7 - IMAGE_BASE + __zres_end ; 0x45fe
    dw jumptable_45f0_case_8 - IMAGE_BASE + __zres_end ; 0x4600
    dw jumptable_45f0_case_9 - IMAGE_BASE + __zres_end ; 0x4602
    dw jumptable_45f0_case_10 - IMAGE_BASE + __zres_end ; 0x4604
    dw jumptable_45f0_case_11 - IMAGE_BASE + __zres_end ; 0x4606
    dw jumptable_45f0_case_0 - IMAGE_BASE + __zres_end ; 0x4608
    dw jumptable_45f0_case_13 - IMAGE_BASE + __zres_end ; 0x460a
    dw jumptable_45f0_case_13 - IMAGE_BASE + __zres_end ; 0x460c
    dw jumptable_45f0_case_13 - IMAGE_BASE + __zres_end ; 0x460e
    dw jumptable_45f0_case_0 - IMAGE_BASE + __zres_end ; 0x4610
@..api_idx_0002_USJS.l3:
    cmp ax, strict word 0x11         ; 0x4612
    jae short @..api_idx_0002_USJS.l4 ; 0x4615
    xchg bx, ax                      ; 0x4617
    shl bx, 1                        ; 0x4618
    jmp [cs:bx + jumptable_45f0 - IMAGE_BASE + __zres_end] ; 0x461a
@..api_idx_0002_USJS.l4:
    mov ax, 0x248                    ; 0x461f
    imul word [bp + 0x4]             ; 0x4622
    mov bx, ax                       ; 0x4625
    mov al, byte [bx + member_state + 0x3] ; 0x4627
    sub ah, ah                       ; 0x462b
    push ax                          ; 0x462d
    mov ax, word [bp + 0x6]          ; 0x462e
    add ax, strict word 0x32         ; 0x4631
    push ax                          ; 0x4634
    call test_bit                    ; 0x4635
    add sp, byte 4                   ; 0x4638
    cmp ax, strict word 1            ; 0x463b
    jne short @..api_idx_0002_USJS.l5 ; 0x463e
    mov ax, 0x248                    ; 0x4640
    imul word [bp + 0x4]             ; 0x4643
    mov bx, ax                       ; 0x4646
    mov al, byte [bx + member_state + 0x1] ; 0x4648
    sub ah, ah                       ; 0x464c
    push ax                          ; 0x464e
    mov ax, word [bp + 0x6]          ; 0x464f
    add ax, strict word 0x34         ; 0x4652
    push ax                          ; 0x4655
    call test_bit                    ; 0x4656
    add sp, byte 4                   ; 0x4659
    cmp ax, strict word 1            ; 0x465c
    jne short @..api_idx_0002_USJS.l5 ; 0x465f
    mov ax, 0x248                    ; 0x4661
    imul word [bp + 0x4]             ; 0x4664
    mov bx, ax                       ; 0x4667
    mov al, byte [bx + member_state + 0x2] ; 0x4669
    sub ah, ah                       ; 0x466d
    push ax                          ; 0x466f
    mov ax, word [bp + 0x6]          ; 0x4670
    add ax, strict word 0x36         ; 0x4673
    push ax                          ; 0x4676
    call test_bit                    ; 0x4677
    add sp, byte 4                   ; 0x467a
    cmp ax, strict word 1            ; 0x467d
    je short @..api_idx_0002_USJS.l6 ; 0x4680
@..api_idx_0002_USJS.l5:
    mov word [bp - 0x0002], 0xffff   ; 0x4682
@..api_idx_0002_USJS.l6:
    mov ax, word [bp - 0x0002]       ; 0x4687
    ret                              ; 0x468a
