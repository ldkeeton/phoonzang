; auto-generated
loc_VVHO:
    mov word [bss_9e5e], 1           ; 0x870f
    jmp short @..loc_GTUI.l2         ; 0x8715
jumptable_8717:
    dw loc_TVPR - IMAGE_BASE + __zres_end      ; 0x8717
    dw loc_RQHG_86df - IMAGE_BASE + __zres_end ; 0x8719
    dw loc_RQHG_86e7 - IMAGE_BASE + __zres_end ; 0x871b
    dw loc_RQHG_86ef - IMAGE_BASE + __zres_end ; 0x871d
    dw loc_RQHG_86f7 - IMAGE_BASE + __zres_end ; 0x871f
    dw loc_RQHG_86ff - IMAGE_BASE + __zres_end ; 0x8721
    dw loc_RQHG_8707 - IMAGE_BASE + __zres_end ; 0x8723
    dw loc_VVHO - IMAGE_BASE + __zres_end      ; 0x8725
@..loc_GTUI.l1:
    sub ax, strict word 0xffff       ; 0x8727
    cmp ax, strict word 8            ; 0x872a
    jae short @..loc_GTUI.l2         ; 0x872d
    xchg bx, ax                      ; 0x872f
    shl bx, 1                        ; 0x8730
    jmp [cs:bx - 0x28a2]             ; 0x8732
@..loc_GTUI.l2:
    ret                              ; 0x8737
