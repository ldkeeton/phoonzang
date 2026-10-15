; auto-generated
loc_TRQG:
    mov ax, 0                        ; 0x182b
    call aztec_csav                  ; 0x182e
    mov ax, word [bp + 0x6]          ; 0x1831
    mov bx, word [bp + 0x4]          ; 0x1834
    sub word [bx + 0x6], ax          ; 0x1837
    mov bx, word [bp + 0x4]          ; 0x183a
    cmp word [bx + 0x6], byte 0      ; 0x183d
    jge short @..loc_TRQG.l1         ; 0x1841
    mov word [bx + 0x6], 0           ; 0x1843
@..loc_TRQG.l1:
    ret                              ; 0x1848
