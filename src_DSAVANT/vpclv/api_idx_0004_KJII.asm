; auto-generated
api_idx_0004_KJII:
    mov ax, 0xfffc                   ; 0x4884
    call aztec_csav                  ; 0x4887
    mov ax, 0x248                    ; 0x488a
    imul word [bp + 0x4]             ; 0x488d
    mov bx, ax                       ; 0x4890
    cmp word [bx + pc_spell_power_cap], byte 0x14 ; 0x4892
    jle short @..api_idx_0004_KJII.l1 ; 0x4897
    ret                              ; 0x4899
@..api_idx_0004_KJII.l1:
    mov al, byte [bx + cell_key_grid + 0x134] ; 0x489a
    sub ah, ah                       ; 0x489e
    mov word [bp - 0x0004], ax       ; 0x48a0
    mov word [bp - 0x0002], 0        ; 0x48a3
    mov al, byte [bx + bss_5e2a + 0x3] ; 0x48a8
    sub ah, ah                       ; 0x48ac
    jmp short @..api_idx_0004_KJII.l2 ; 0x48ae
jumptable_48eb_case_0:
    mov ax, 4                        ; 0x48b0
    push ax                          ; 0x48b3
    call random_below                ; 0x48b4
    pop cx                           ; 0x48b7
    inc ax                           ; 0x48b8
    inc ax                           ; 0x48b9
    mov word [bp - 0x0002], ax       ; 0x48ba
    jmp short @..api_idx_0004_KJII.l3 ; 0x48bd
jumptable_48eb_case_1:
    mov ax, 3                        ; 0x48bf
    push ax                          ; 0x48c2
    call random_below                ; 0x48c3
    pop cx                           ; 0x48c6
    inc ax                           ; 0x48c7
    mov word [bp - 0x0002], ax       ; 0x48c8
    jmp short @..api_idx_0004_KJII.l3 ; 0x48cb
jumptable_48eb_case_2:
    mov ax, 4                        ; 0x48cd
    push ax                          ; 0x48d0
    call random_below                ; 0x48d1
    pop cx                           ; 0x48d4
    inc ax                           ; 0x48d5
    mov word [bp - 0x0002], ax       ; 0x48d6
    jmp short @..api_idx_0004_KJII.l3 ; 0x48d9
jumptable_48eb_case_11:
    mov ax, 4                        ; 0x48db
    push ax                          ; 0x48de
    call random_below                ; 0x48df
    pop cx                           ; 0x48e2
    inc ax                           ; 0x48e3
    inc ax                           ; 0x48e4
    inc ax                           ; 0x48e5
    mov word [bp - 0x0002], ax       ; 0x48e6
    jmp short @..api_idx_0004_KJII.l3 ; 0x48e9
jumptable_48eb:
    dw jumptable_48eb_case_0 - IMAGE_BASE + __zres_end ; 0x48eb
    dw jumptable_48eb_case_1 - IMAGE_BASE + __zres_end ; 0x48ed
    dw jumptable_48eb_case_2 - IMAGE_BASE + __zres_end ; 0x48ef
    dw jumptable_48eb_case_2 - IMAGE_BASE + __zres_end ; 0x48f1
    dw jumptable_48eb_case_0 - IMAGE_BASE + __zres_end ; 0x48f3
    dw jumptable_48eb_case_1 - IMAGE_BASE + __zres_end ; 0x48f5
    dw jumptable_48eb_case_2 - IMAGE_BASE + __zres_end ; 0x48f7
    dw jumptable_48eb_case_1 - IMAGE_BASE + __zres_end ; 0x48f9
    dw jumptable_48eb_case_0 - IMAGE_BASE + __zres_end ; 0x48fb
    dw jumptable_48eb_case_1 - IMAGE_BASE + __zres_end ; 0x48fd
    dw jumptable_48eb_case_0 - IMAGE_BASE + __zres_end ; 0x48ff
    dw jumptable_48eb_case_11 - IMAGE_BASE + __zres_end ; 0x4901
    dw jumptable_48eb_case_0 - IMAGE_BASE + __zres_end ; 0x4903
    dw jumptable_48eb_case_11 - IMAGE_BASE + __zres_end ; 0x4905
@..api_idx_0004_KJII.l2:
    cmp ax, strict word 0xe          ; 0x4907
    jae short @..api_idx_0004_KJII.l3 ; 0x490a
    xchg bx, ax                      ; 0x490c
    shl bx, 1                        ; 0x490d
    jmp [cs:bx + jumptable_48eb - IMAGE_BASE + __zres_end] ; 0x490f
@..api_idx_0004_KJII.l3:
    cmp word [bp - 0x0004], byte 8   ; 0x4914
    jge short @..api_idx_0004_KJII.l4 ; 0x4918
    dec word [bp - 0x0002]           ; 0x491a
@..api_idx_0004_KJII.l4:
    mov ax, 0x248                    ; 0x491d
    imul word [bp + 0x4]             ; 0x4920
    mov bx, ax                       ; 0x4923
    mov ax, word [bx + pc_spell_power_cap] ; 0x4925
    push ax                          ; 0x4929
    mov al, byte [bx + bss_5e2a + 0x11] ; 0x492a
    sub ah, ah                       ; 0x492e
    mov cx, ax                       ; 0x4930
    pop ax                           ; 0x4932
    cmp ax, cx                       ; 0x4933
    jge short @..api_idx_0004_KJII.l5 ; 0x4935
    mov word [bp - 0x0002], 0        ; 0x4937
@..api_idx_0004_KJII.l5:
    mov al, byte [bx + bss_5e2a + 0x10] ; 0x493c
    cbw                              ; 0x4940
    sub ax, word [bp - 0x0002]       ; 0x4941
    mov byte [bx + bss_5e2a + 0x10], al ; 0x4944
    cmp byte [bx + bss_5e2a + 0x10], 0 ; 0x4948
    jge short @..api_idx_0004_KJII.l6 ; 0x494d
    mov byte [bx + bss_5e2a + 0x10], 0 ; 0x494f
@..api_idx_0004_KJII.l6:
    ret                              ; 0x4954
