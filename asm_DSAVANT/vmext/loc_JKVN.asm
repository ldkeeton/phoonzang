; auto-generated
loc_JKVN:
    mov ax, 0                        ; 0x059a
    call aztec_csav                  ; 0x059d
    call loc_RMHJ                    ; 0x05a0
    test ax, ax                      ; 0x05a3
    je short @..loc_JKVN.l1          ; 0x05a5
    mov ax, word [bss_82e8]          ; 0x05a7
    inc ax                           ; 0x05aa
    mov cx, 2                        ; 0x05ab
    cwd                              ; 0x05ae
    idiv cx                          ; 0x05af
    mov word [bss_82e8], dx          ; 0x05b1
    call loc_ULLV                    ; 0x05b5
    mov ax, 1                        ; 0x05b8
    ret                              ; 0x05bb
@..loc_JKVN.l1:
    mov ax, 0                        ; 0x05bc
    ret                              ; 0x05bf
