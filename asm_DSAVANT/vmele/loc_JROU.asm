; auto-generated
loc_JROU:
    mov ax, 0                        ; 0x299f
    call aztec_csav                  ; 0x29a2
    jmp short @..loc_JROU.l3         ; 0x29a5
@..loc_JROU.l1:
    push word [bp + 0x8]             ; 0x29a7
    push word [bp + 0x6]             ; 0x29aa
    push word [bp + 0x4]             ; 0x29ad
    call api_idx_0002_JUSU           ; 0x29b0
    add sp, byte 6                   ; 0x29b3
    test ax, ax                      ; 0x29b6
    jne short @..loc_JROU.l2         ; 0x29b8
    ret                              ; 0x29ba
@..loc_JROU.l2:
    inc word [bp + 0x4]              ; 0x29bb
@..loc_JROU.l3:
    cmp word [bp + 0x4], byte 3      ; 0x29be
    jle short @..loc_JROU.l1         ; 0x29c2
    ret                              ; 0x29c4
