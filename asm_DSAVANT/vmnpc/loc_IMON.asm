; auto-generated
loc_IMON:
    mov word [bss_9e5e], 1           ; 0x870f
    jmp short @..loc_TNVN.l2         ; 0x8715
jumptable_8717:
    dw loc_RGQP - IMAGE_BASE + 0x5055          ; 0x8717
    dw loc_UTPP - IMAGE_BASE + 0x5055          ; 0x8719
    dw loc_PNRV - IMAGE_BASE + 0x5055          ; 0x871b
    dw loc_GIPL - IMAGE_BASE + 0x5055          ; 0x871d
    dw loc_VNRU - IMAGE_BASE + 0x5055          ; 0x871f
    dw loc_OLRT - IMAGE_BASE + 0x5055          ; 0x8721
    dw loc_MTQS - IMAGE_BASE + 0x5055          ; 0x8723
    dw loc_IMON - IMAGE_BASE + 0x5055          ; 0x8725
@..loc_TNVN.l1:
    sub ax, strict word 0xffff       ; 0x8727
    cmp ax, strict word 8            ; 0x872a
    jae short @..loc_TNVN.l2         ; 0x872d
    xchg bx, ax                      ; 0x872f
    shl bx, 1                        ; 0x8730
    jmp [cs:bx - 0x28a2]             ; 0x8732
@..loc_TNVN.l2:
    ret                              ; 0x8737
