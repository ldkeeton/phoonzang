; auto-generated
fpu_loc_KHTM:
    jmp short loc_KLTN               ; 0x8976
jumptable_8978:
    dw loc_KLTN - IMAGE_BASE + __zres_end      ; 0x8978
    dw loc_VVQG_88af - IMAGE_BASE + __zres_end ; 0x897a
    dw loc_UKSK - IMAGE_BASE + __zres_end      ; 0x897c
    dw loc_VVQG_88c2 - IMAGE_BASE + __zres_end ; 0x897e
    dw loc_VVQG_88c8 - IMAGE_BASE + __zres_end ; 0x8980
    dw loc_VVQG_88ce - IMAGE_BASE + __zres_end ; 0x8982
    dw loc_VVQG_88d4 - IMAGE_BASE + __zres_end ; 0x8984
    dw loc_VVQG_88da - IMAGE_BASE + __zres_end ; 0x8986
    dw loc_KNTG - IMAGE_BASE + __zres_end      ; 0x8988
    dw fpu_loc_TTRR - IMAGE_BASE + __zres_end  ; 0x898a
    dw fpu_loc_VVQG_892e - IMAGE_BASE + __zres_end ; 0x898c
    dw fpu_loc_VVQG_8934 - IMAGE_BASE + __zres_end ; 0x898e
    dw fpu_loc_SLKO - IMAGE_BASE + __zres_end  ; 0x8990
    dw fpu_loc_RKSN_8943 - IMAGE_BASE + __zres_end ; 0x8992
    dw fpu_loc_RKSN_8948 - IMAGE_BASE + __zres_end ; 0x8994
    dw fpu_loc_MNIM_894d - IMAGE_BASE + __zres_end ; 0x8996
    dw fpu_loc_RKSN_894f - IMAGE_BASE + __zres_end ; 0x8998
    dw fpu_loc_RKSN_8954 - IMAGE_BASE + __zres_end ; 0x899a
    dw fpu_loc_RKSN_8959 - IMAGE_BASE + __zres_end ; 0x899c
    dw fpu_loc_MNIM_895e - IMAGE_BASE + __zres_end ; 0x899e
    dw fpu_loc_MNIM_8960 - IMAGE_BASE + __zres_end ; 0x89a0
    dw fpu_loc_RKSN_8962 - IMAGE_BASE + __zres_end ; 0x89a2
    dw fpu_loc_RKSN_8967 - IMAGE_BASE + __zres_end ; 0x89a4
    dw fpu_loc_RKSN_896c - IMAGE_BASE + __zres_end ; 0x89a6
    dw fpu_loc_RKSN_8971 - IMAGE_BASE + __zres_end ; 0x89a8
    dw fpu_loc_KHTM - IMAGE_BASE + __zres_end  ; 0x89aa
loc_QLVU:
    cmp ax, strict word 0x1a         ; 0x89ac
    jae short loc_KLTN               ; 0x89af
    xchg bx, ax                      ; 0x89b1
    shl bx, 1                        ; 0x89b2
    jmp [cs:bx - 0x2641]             ; 0x89b4
loc_KLTN:
    cmp word [bss_830a], byte 5      ; 0x89b9
    je short loc_IRJL                ; 0x89be
    ret                              ; 0x89c0
loc_IRJL:
    cmp word [bss_9bd0], byte 1      ; 0x89c1
    jne short loc_LPSH_89cc          ; 0x89c6
    inc word [bss_8d12]              ; 0x89c8
loc_LPSH_89cc:
    jmp near loc_LHIM                ; 0x89cc
loc_PLIR_89cf:
    ret                              ; 0x89cf
