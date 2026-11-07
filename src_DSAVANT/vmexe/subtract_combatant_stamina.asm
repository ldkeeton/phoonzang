; auto-generated
subtract_combatant_stamina:
    mov ax, 0                        ; 0x182b
    call $csav                  ; 0x182e
    mov ax, word [bp + 6]            ; 0x1831
    mov bx, word [bp + 4]            ; 0x1834
    sub word [bx + 6], ax            ; 0x1837
    mov bx, word [bp + 4]            ; 0x183a
    cmp word [bx + 6], byte 0        ; 0x183d
    jge short .return1               ; 0x1841
    mov word [bx + 6], 0             ; 0x1843
.return1:
    ret                              ; 0x1848
