; auto-generated
loc_VNLN:
    push ax                          ; 0x4556
    mov ax, 0                        ; 0x4557
    push ax                          ; 0x455a
    push word [bp + 0x4]             ; 0x455b
    call api_idx_0002_SLJI           ; 0x455e
    add sp, byte 8                   ; 0x4561
    mov ax, 0x1f                     ; 0x4564
    push ax                          ; 0x4567
    mov ax, 3                        ; 0x4568
    push ax                          ; 0x456b
    push ax                          ; 0x456c
    push word [bp + 0x4]             ; 0x456d
    call api_idx_0002_SLJI           ; 0x4570
    add sp, byte 8                   ; 0x4573
    jmp short @..loc_JPIR.l2         ; 0x4576
jumptable_45b6_case_13:
    mov ax, 4                        ; 0x4578
    push ax                          ; 0x457b
    mov ax, 6                        ; 0x457c
    push ax                          ; 0x457f
    push ax                          ; 0x4580
    push word [bp + 0x4]             ; 0x4581
    call api_idx_001c_HVVI           ; 0x4584
    add sp, byte 8                   ; 0x4587
    mov ax, 9                        ; 0x458a
    push ax                          ; 0x458d
    mov ax, 2                        ; 0x458e
    push ax                          ; 0x4591
    mov ax, 0                        ; 0x4592
    push ax                          ; 0x4595
    push word [bp + 0x4]             ; 0x4596
    call api_idx_0002_SLJI           ; 0x4599
    add sp, byte 8                   ; 0x459c
    mov ax, 0x11                     ; 0x459f
    push ax                          ; 0x45a2
    mov ax, 2                        ; 0x45a3
    push ax                          ; 0x45a6
    mov ax, 1                        ; 0x45a7
    push ax                          ; 0x45aa
    push word [bp + 0x4]             ; 0x45ab
    call api_idx_0002_SLJI           ; 0x45ae
    add sp, byte 8                   ; 0x45b1
    jmp short @..loc_JPIR.l2         ; 0x45b4
jumptable_45b6:
    dw jumptable_45b6_case_0 - IMAGE_BASE + __zres_end ; 0x45b6
    dw jumptable_45b6_case_1 - IMAGE_BASE + __zres_end ; 0x45b8
    dw jumptable_45b6_case_2 - IMAGE_BASE + __zres_end ; 0x45ba
    dw jumptable_45b6_case_3 - IMAGE_BASE + __zres_end ; 0x45bc
    dw jumptable_45b6_case_4 - IMAGE_BASE + __zres_end ; 0x45be
    dw jumptable_45b6_case_5 - IMAGE_BASE + __zres_end ; 0x45c0
    dw jumptable_45b6_case_6 - IMAGE_BASE + __zres_end ; 0x45c2
    dw jumptable_45b6_case_7 - IMAGE_BASE + __zres_end ; 0x45c4
    dw jumptable_45b6_case_8 - IMAGE_BASE + __zres_end ; 0x45c6
    dw jumptable_45b6_case_9 - IMAGE_BASE + __zres_end ; 0x45c8
    dw jumptable_45b6_case_10 - IMAGE_BASE + __zres_end ; 0x45ca
    dw jumptable_45b6_case_11 - IMAGE_BASE + __zres_end ; 0x45cc
    dw jumptable_45b6_case_12 - IMAGE_BASE + __zres_end ; 0x45ce
    dw jumptable_45b6_case_13 - IMAGE_BASE + __zres_end ; 0x45d0
@..loc_JPIR.l1:
    cmp ax, strict word 0xe          ; 0x45d2
    jae short @..loc_JPIR.l2         ; 0x45d5
    xchg bx, ax                      ; 0x45d7
    shl bx, 1                        ; 0x45d8
    jmp [cs:bx - 0x6a03]             ; 0x45da
@..loc_JPIR.l2:
    ret                              ; 0x45df
