api_idx_0012_2:
    mov ax, 0xffee                   ; 0x4665
    call ds_dispatch_f40b            ; 0x4668
    cmp word [bp + 0x4], byte 4      ; 0x466b
    jge short @..api_idx_0012_2.l1   ; 0x466f
    cmp word [bp + 0x6], byte 0      ; 0x4671
    jle short @..api_idx_0012_2.l1   ; 0x4675
    cmp word [bp + 0x6], byte 4      ; 0x4677
    jge short @..api_idx_0012_2.l1   ; 0x467b
    mov ax, 1                        ; 0x467d
    jmp short @..api_idx_0012_2.l2   ; 0x4680
@..api_idx_0012_2.l1:
    mov ax, 0                        ; 0x4682
@..api_idx_0012_2.l2:
    mov word [bp - 0x0012], ax       ; 0x4685
    cmp word [bp - 0x0012], byte 0   ; 0x4688
    jne short math_loc_4691          ; 0x468c
    jmp near loc_483c                ; 0x468e
