; auto-generated
loc_NKUR:
    mov ax, 0                        ; 0x3cde
    call aztec_csav                  ; 0x3ce1
    mov bx, word [bp + 4]            ; 0x3ce4
    cmp byte [bx + 6], 0             ; 0x3ce7
    jbe short .return1               ; 0x3ceb
    dec byte [bx + 6]                ; 0x3ced
    mov bx, word [bp + 4]            ; 0x3cf0
    cmp byte [bx + 6], 0             ; 0x3cf3
    jne short .return1               ; 0x3cf7
    mov word [bx], 0                 ; 0x3cf9
.return1:
    ret                              ; 0x3cfd
