; auto-generated
loc_MLQO:
    mov ax, 0                        ; 0x4b29
    call aztec_csav                  ; 0x4b2c
    cmp word [bp + 0x6], byte 0      ; 0x4b2f
    jge short @..loc_MLQO.l2         ; 0x4b33
    mov bx, word [bp + 0x4]          ; 0x4b35
    cmp byte [bx + bss_597c], 0      ; 0x4b38
    jbe short @..loc_MLQO.l1         ; 0x4b3d
    dec byte [bx + bss_597c]         ; 0x4b3f
@..loc_MLQO.l1:
    jmp short @..loc_MLQO.l3         ; 0x4b43
@..loc_MLQO.l2:
    cmp word [bp + 0x6], byte 0      ; 0x4b45
    jle short @..loc_MLQO.l3         ; 0x4b49
    mov bx, word [bp + 0x4]          ; 0x4b4b
    mov al, byte [bx + bss_597c]     ; 0x4b4e
    sub ah, ah                       ; 0x4b52
    cmp ax, word [bp + 0x8]          ; 0x4b54
    jge short @..loc_MLQO.l3         ; 0x4b57
    inc byte [bx + bss_597c]         ; 0x4b59
@..loc_MLQO.l3:
    ret                              ; 0x4b5d
