; auto-generated
loc_NHST:
    mov ax, 0                        ; 0xa29f
    call aztec_csav                  ; 0xa2a2
    cmp word [bss_9e48], byte 0xff   ; 0xa2a5
    je short @..loc_NHST.l2          ; 0xa2aa
    cmp word [bss_9e46], byte 0xff   ; 0xa2ac
    je short @..loc_NHST.l1          ; 0xa2b1
    cmp word [bss_9e42], byte 0xff   ; 0xa2b3
    jne short @..loc_NHST.l2         ; 0xa2b8
@..loc_NHST.l1:
    call loc_QMIO                    ; 0xa2ba
@..loc_NHST.l2:
    cmp word [bss_9e46], byte 0xff   ; 0xa2bd
    je short @..loc_NHST.l3          ; 0xa2c2
    cmp word [bss_9e42], byte 0xff   ; 0xa2c4
    je short @..loc_NHST.l3          ; 0xa2c9
    call api_idx_0054_IUSS           ; 0xa2cb
    mov ax, word [bss_9e42]          ; 0xa2ce
    mov word [bss_9e4a], ax          ; 0xa2d1
    mov ax, word [bss_9e44]          ; 0xa2d4
    mov word [bss_9e4c], ax          ; 0xa2d7
    mov ax, word [bss_9e46]          ; 0xa2da
    mov word [bss_9e4e], ax          ; 0xa2dd
    mov word [bss_9e50], 0xffff      ; 0xa2e0
@..loc_NHST.l3:
    ret                              ; 0xa2e6
