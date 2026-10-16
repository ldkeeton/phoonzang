; auto-generated
loc_IVPQ:
    mov word [bp - 0x0004], 0xf      ; 0x1feb
    jmp short @..api_idx_0008_NLUK.l16 ; 0x1ff0
jumptable_1ff2:
    dw jumptable_1ff2_case_0 - IMAGE_BASE + 0x5055 ; 0x1ff2
    dw loc_MHOR - IMAGE_BASE + 0x5055          ; 0x1ff4
    dw loc_VLQH - IMAGE_BASE + 0x5055          ; 0x1ff6
    dw loc_PIVO - IMAGE_BASE + 0x5055          ; 0x1ff8
    dw loc_PLLI - IMAGE_BASE + 0x5055          ; 0x1ffa
    dw loc_RNIO - IMAGE_BASE + 0x5055          ; 0x1ffc
    dw loc_NMPJ - IMAGE_BASE + 0x5055          ; 0x1ffe
    dw jumptable_1ff2_case_0 - IMAGE_BASE + 0x5055 ; 0x2000
    dw jumptable_1ff2_case_0 - IMAGE_BASE + 0x5055 ; 0x2002
    dw jumptable_1ff2_case_0 - IMAGE_BASE + 0x5055 ; 0x2004
    dw loc_JJML - IMAGE_BASE + 0x5055          ; 0x2006
    dw loc_IVPQ - IMAGE_BASE + 0x5055          ; 0x2008
@..api_idx_0008_NLUK.l15:
    cmp ax, strict word 0xc          ; 0x200a
    jae short @..api_idx_0008_NLUK.l16 ; 0x200d
    xchg bx, ax                      ; 0x200f
    shl bx, 1                        ; 0x2010
    jmp [cs:bx + 0x7039]             ; 0x2012
jumptable_1ff2_case_0:
@..api_idx_0008_NLUK.l16:
    mov ax, word [bp - 0x0004]       ; 0x2017
    ret                              ; 0x201a
