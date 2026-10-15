; auto-generated
string_loc_SQRJ:
    cmp word [bp - 0x0014], byte 0xff ; 0x5784
    je short @..string_loc_SQRJ.l1   ; 0x5788
    mov word [bss_5b3e], 1           ; 0x578a
@..string_loc_SQRJ.l1:
    jmp near loc_OGLL                ; 0x5790
loc_JQTQ:
    mov word [bp - 0x0014], 0xffff   ; 0x5793
    mov ax, word [bp - 0x0016]       ; 0x5798
    jmp short loc_GRPI               ; 0x579b
