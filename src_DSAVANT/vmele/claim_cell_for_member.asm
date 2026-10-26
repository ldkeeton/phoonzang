; auto-generated
claim_cell_for_member:
    mov ax, 0                        ; 0x299f
    call aztec_csav                  ; 0x29a2
    jmp short .forward2              ; 0x29a5
.back1:
    push word [bp + 8]               ; 0x29a7
    push word [bp + 6]               ; 0x29aa
    push word [bp + 4]               ; 0x29ad
    call api_idx_0002_MTJS           ; 0x29b0
    add sp, byte 6                   ; 0x29b3
    test ax, ax                      ; 0x29b6
    jne short .forward1              ; 0x29b8
    ret                              ; 0x29ba
.forward1:
    inc word [bp + 4]                ; 0x29bb
.forward2:
    cmp word [bp + 4], byte 3        ; 0x29be
    jle short .back1                 ; 0x29c2
    ret                              ; 0x29c4
