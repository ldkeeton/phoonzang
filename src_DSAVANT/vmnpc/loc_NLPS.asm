; auto-generated
loc_NLPS:
    mov ax, 0                        ; 0x86c6
    call aztec_csav                  ; 0x86c9
    mov word [bss_9e62], 1           ; 0x86cc
    mov ax, word [bp + 0x4]          ; 0x86d2
    jmp short @..loc_NLPS.l1         ; 0x86d5
jumptable_8717_case_0:
    mov word [bss_9e62], 0           ; 0x86d7
    jmp short @..loc_NLPS.l2         ; 0x86dd
jumptable_8717_case_1:
    mov word [bss_9e52], 1           ; 0x86df
    jmp short @..loc_NLPS.l2         ; 0x86e5
jumptable_8717_case_2:
    mov word [bss_9e54], 1           ; 0x86e7
    jmp short @..loc_NLPS.l2         ; 0x86ed
jumptable_8717_case_3:
    mov word [bss_9e56], 1           ; 0x86ef
    jmp short @..loc_NLPS.l2         ; 0x86f5
jumptable_8717_case_4:
    mov word [bss_9e58], 1           ; 0x86f7
    jmp short @..loc_NLPS.l2         ; 0x86fd
jumptable_8717_case_5:
    mov word [bss_9e5a], 1           ; 0x86ff
    jmp short @..loc_NLPS.l2         ; 0x8705
jumptable_8717_case_6:
    mov word [bss_9e5c], 1           ; 0x8707
    jmp short @..loc_NLPS.l2         ; 0x870d
jumptable_8717_case_7:
    mov word [bss_9e5e], 1           ; 0x870f
    jmp short @..loc_NLPS.l2         ; 0x8715
jumptable_8717:
    dw jumptable_8717_case_0 - IMAGE_BASE + __zres_end ; 0x8717
    dw jumptable_8717_case_1 - IMAGE_BASE + __zres_end ; 0x8719
    dw jumptable_8717_case_2 - IMAGE_BASE + __zres_end ; 0x871b
    dw jumptable_8717_case_3 - IMAGE_BASE + __zres_end ; 0x871d
    dw jumptable_8717_case_4 - IMAGE_BASE + __zres_end ; 0x871f
    dw jumptable_8717_case_5 - IMAGE_BASE + __zres_end ; 0x8721
    dw jumptable_8717_case_6 - IMAGE_BASE + __zres_end ; 0x8723
    dw jumptable_8717_case_7 - IMAGE_BASE + __zres_end ; 0x8725
@..loc_NLPS.l1:
    sub ax, strict word 0xffff       ; 0x8727
    cmp ax, strict word 8            ; 0x872a
    jae short @..loc_NLPS.l2         ; 0x872d
    xchg bx, ax                      ; 0x872f
    shl bx, 1                        ; 0x8730
    jmp [cs:bx + jumptable_8717 - IMAGE_BASE + __zres_end] ; 0x8732
@..loc_NLPS.l2:
    ret                              ; 0x8737
