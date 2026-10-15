; auto-generated
loc_RVNQ:
    mov ax, 0                        ; 0x9d06
    call aztec_csav                  ; 0x9d09
    mov ax, word [bp + 0x4]          ; 0x9d0c
    cmp ax, word [bss_b046]          ; 0x9d0f
    jge short @..loc_RVNQ.l1         ; 0x9d13
    mov cx, 5                        ; 0x9d15
    imul cx                          ; 0x9d18
    add ax, word [bss_b050]          ; 0x9d1a
    ret                              ; 0x9d1e
@..loc_RVNQ.l1:
    mov ax, word [bp + 0x4]          ; 0x9d1f
    sub ax, word [bss_b046]          ; 0x9d22
    mov cx, 5                        ; 0x9d26
    imul cx                          ; 0x9d29
    add ax, word [bss_b052]          ; 0x9d2b
    ret                              ; 0x9d2f
