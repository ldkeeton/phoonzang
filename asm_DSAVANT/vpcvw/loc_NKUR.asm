; auto-generated
loc_NKUR:
    mov ax, 0                        ; 0x3cde
    call aztec_csav                  ; 0x3ce1
    mov bx, word [bp + 0x4]          ; 0x3ce4
    cmp byte [bx + 0x6], 0           ; 0x3ce7
    jbe short @..loc_NKUR.l1         ; 0x3ceb
    dec byte [bx + 0x6]              ; 0x3ced
    mov bx, word [bp + 0x4]          ; 0x3cf0
    cmp byte [bx + 0x6], 0           ; 0x3cf3
    jne short @..loc_NKUR.l1         ; 0x3cf7
    mov word [bx], 0                 ; 0x3cf9
@..loc_NKUR.l1:
    ret                              ; 0x3cfd
