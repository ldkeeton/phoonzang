; auto-generated
loc_GTUI:
    mov ax, 0                        ; 0x86c6
    call aztec_csav                  ; 0x86c9
    mov word [bss_9e62], 1           ; 0x86cc
    mov ax, word [bp + 0x4]          ; 0x86d2
    jmp short @..loc_GTUI.l1         ; 0x86d5
loc_TVPR:
    mov word [bss_9e62], 0           ; 0x86d7
    jmp short @..loc_GTUI.l2         ; 0x86dd
loc_RQHG_86df:
    mov word [bss_9e52], 1           ; 0x86df
    jmp short @..loc_GTUI.l2         ; 0x86e5
loc_RQHG_86e7:
    mov word [bss_9e54], 1           ; 0x86e7
    jmp short @..loc_GTUI.l2         ; 0x86ed
loc_RQHG_86ef:
    mov word [bss_9e56], 1           ; 0x86ef
    jmp short @..loc_GTUI.l2         ; 0x86f5
loc_RQHG_86f7:
    mov word [bss_9e58], 1           ; 0x86f7
    jmp short @..loc_GTUI.l2         ; 0x86fd
loc_RQHG_86ff:
    mov word [bss_9e5a], 1           ; 0x86ff
    jmp short @..loc_GTUI.l2         ; 0x8705
loc_RQHG_8707:
    mov word [bss_9e5c], 1           ; 0x8707
    jmp short @..loc_GTUI.l2         ; 0x870d
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
    jmp [cs:bx + jumptable_8717 - IMAGE_BASE + __zres_end] ; 0x8732
@..loc_GTUI.l2:
    ret                              ; 0x8737
