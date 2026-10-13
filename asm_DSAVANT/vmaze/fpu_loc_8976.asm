; auto-generated
fpu_loc_8976:
    jmp short loc_89b9               ; 0x8976
jumptable_8978:
    dw loc_89b9 - IMAGE_BASE + 0x5055          ; 0x8978
    dw loc_88af - IMAGE_BASE + 0x5055          ; 0x897a
    dw loc_88b5 - IMAGE_BASE + 0x5055          ; 0x897c
    dw loc_88c2 - IMAGE_BASE + 0x5055          ; 0x897e
    dw loc_88c8 - IMAGE_BASE + 0x5055          ; 0x8980
    dw loc_88ce - IMAGE_BASE + 0x5055          ; 0x8982
    dw loc_88d4 - IMAGE_BASE + 0x5055          ; 0x8984
    dw loc_88da - IMAGE_BASE + 0x5055          ; 0x8986
    dw loc_88e0 - IMAGE_BASE + 0x5055          ; 0x8988
    dw fpu_loc_8925 - IMAGE_BASE + 0x5055      ; 0x898a
    dw fpu_loc_892e - IMAGE_BASE + 0x5055      ; 0x898c
    dw fpu_loc_8934 - IMAGE_BASE + 0x5055      ; 0x898e
    dw fpu_loc_893a - IMAGE_BASE + 0x5055      ; 0x8990
    dw fpu_loc_8943 - IMAGE_BASE + 0x5055      ; 0x8992
    dw fpu_loc_8948 - IMAGE_BASE + 0x5055      ; 0x8994
    dw fpu_loc_894d - IMAGE_BASE + 0x5055      ; 0x8996
    dw fpu_loc_894f - IMAGE_BASE + 0x5055      ; 0x8998
    dw fpu_loc_8954 - IMAGE_BASE + 0x5055      ; 0x899a
    dw fpu_loc_8959 - IMAGE_BASE + 0x5055      ; 0x899c
    dw fpu_loc_895e - IMAGE_BASE + 0x5055      ; 0x899e
    dw fpu_loc_8960 - IMAGE_BASE + 0x5055      ; 0x89a0
    dw fpu_loc_8962 - IMAGE_BASE + 0x5055      ; 0x89a2
    dw fpu_loc_8967 - IMAGE_BASE + 0x5055      ; 0x89a4
    dw fpu_loc_896c - IMAGE_BASE + 0x5055      ; 0x89a6
    dw fpu_loc_8971 - IMAGE_BASE + 0x5055      ; 0x89a8
    dw fpu_loc_8976 - IMAGE_BASE + 0x5055      ; 0x89aa
loc_89ac:
    cmp ax, strict word 0x1a         ; 0x89ac
    jae short loc_89b9               ; 0x89af
    xchg bx, ax                      ; 0x89b1
    shl bx, 1                        ; 0x89b2
    jmp [cs:bx - 0x2641]             ; 0x89b4
loc_89b9:
    cmp word [bss_830a], byte 5      ; 0x89b9
    je short loc_89c1                ; 0x89be
    ret                              ; 0x89c0
loc_89c1:
    cmp word [bss_9bd0], byte 1      ; 0x89c1
    jne short loc_89cc               ; 0x89c6
    inc word [bss_8d12]              ; 0x89c8
loc_89cc:
    jmp near loc_8879                ; 0x89cc
loc_89cf:
    ret                              ; 0x89cf
