; auto-generated
string_loc_HJSM:
    cmp word [bp - 0x0014], byte 0xff ; 0x5784
    je short @..string_loc_HJSM.l1   ; 0x5788
    mov word [bss_5b3e], 1           ; 0x578a
@..string_loc_HJSM.l1:
    jmp near loc_QMPV                ; 0x5790
loc_NVTI_5793:
    mov word [bp - 0x0014], 0xffff   ; 0x5793
    mov ax, word [bp - 0x0016]       ; 0x5798
    jmp short loc_QLNN               ; 0x579b
