; auto-generated
fpu_loc_GKLO:
    jmp short loc_TOGI               ; 0x8976
jumptable_8978:
    dw loc_TOGI - IMAGE_BASE + 0x5055          ; 0x8978
    dw loc_HKHK - IMAGE_BASE + 0x5055          ; 0x897a
    dw loc_UVPQ - IMAGE_BASE + 0x5055          ; 0x897c
    dw loc_QOUK - IMAGE_BASE + 0x5055          ; 0x897e
    dw loc_KMJH - IMAGE_BASE + 0x5055          ; 0x8980
    dw loc_RPQO - IMAGE_BASE + 0x5055          ; 0x8982
    dw loc_UHPG - IMAGE_BASE + 0x5055          ; 0x8984
    dw loc_NSOM - IMAGE_BASE + 0x5055          ; 0x8986
    dw loc_OUGQ - IMAGE_BASE + 0x5055          ; 0x8988
    dw fpu_loc_QRSN - IMAGE_BASE + 0x5055      ; 0x898a
    dw fpu_loc_JGOI - IMAGE_BASE + 0x5055      ; 0x898c
    dw fpu_loc_SHUV - IMAGE_BASE + 0x5055      ; 0x898e
    dw fpu_loc_UPVI - IMAGE_BASE + 0x5055      ; 0x8990
    dw fpu_loc_ONNU - IMAGE_BASE + 0x5055      ; 0x8992
    dw fpu_loc_SHMG - IMAGE_BASE + 0x5055      ; 0x8994
    dw fpu_loc_SQUQ_894d - IMAGE_BASE + 0x5055 ; 0x8996
    dw fpu_loc_QMTI - IMAGE_BASE + 0x5055      ; 0x8998
    dw fpu_loc_MOSG - IMAGE_BASE + 0x5055      ; 0x899a
    dw fpu_loc_UIPP - IMAGE_BASE + 0x5055      ; 0x899c
    dw fpu_loc_SQUQ_895e - IMAGE_BASE + 0x5055 ; 0x899e
    dw fpu_loc_SQUQ_8960 - IMAGE_BASE + 0x5055 ; 0x89a0
    dw fpu_loc_MQKN - IMAGE_BASE + 0x5055      ; 0x89a2
    dw fpu_loc_QSUH - IMAGE_BASE + 0x5055      ; 0x89a4
    dw fpu_loc_KQHM - IMAGE_BASE + 0x5055      ; 0x89a6
    dw fpu_loc_RPSN - IMAGE_BASE + 0x5055      ; 0x89a8
    dw fpu_loc_GKLO - IMAGE_BASE + 0x5055      ; 0x89aa
loc_MILN:
    cmp ax, strict word 0x1a         ; 0x89ac
    jae short loc_TOGI               ; 0x89af
    xchg bx, ax                      ; 0x89b1
    shl bx, 1                        ; 0x89b2
    jmp [cs:bx - 0x2641]             ; 0x89b4
loc_TOGI:
    cmp word [bss_830a], byte 5      ; 0x89b9
    je short loc_RJRR                ; 0x89be
    ret                              ; 0x89c0
loc_RJRR:
    cmp word [bss_9bd0], byte 1      ; 0x89c1
    jne short loc_VMJM               ; 0x89c6
    inc word [bss_8d12]              ; 0x89c8
loc_VMJM:
    jmp near loc_ILRT                ; 0x89cc
loc_NUGN_89cf:
    ret                              ; 0x89cf
