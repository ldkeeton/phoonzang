; auto-generated
loc_VJNU:
    mov ax, 0                        ; 0x0636
    call aztec_csav                  ; 0x0639
    mov ax, 0                        ; 0x063c
    push ax                          ; 0x063f
    mov ax, 8                        ; 0x0640
    push ax                          ; 0x0643
    mov ax, bss_8cfe                 ; 0x0644
    push ax                          ; 0x0647
    call aztec_setmem                ; 0x0648
    add sp, byte 6                   ; 0x064b
    mov word [bss_82ea], 0           ; 0x064e
    mov ax, word [bp + 0x4]          ; 0x0654
    jmp short @..loc_VJNU.l5         ; 0x0657
@..loc_VJNU.l1:
    mov ax, word [bp + 0x6]          ; 0x0659
    add word [bss_8f44], ax          ; 0x065c
    jmp short @..loc_VJNU.l6         ; 0x0660
@..loc_VJNU.l2:
    mov ax, word [bp + 0x6]          ; 0x0662
    add word [bss_8f46], ax          ; 0x0665
    jmp short @..loc_VJNU.l6         ; 0x0669
@..loc_VJNU.l3:
    mov ax, word [bp + 0x6]          ; 0x066b
    sub word [bss_8f44], ax          ; 0x066e
    jmp short @..loc_VJNU.l6         ; 0x0672
@..loc_VJNU.l4:
    mov ax, word [bp + 0x6]          ; 0x0674
    sub word [bss_8f46], ax          ; 0x0677
    jmp short @..loc_VJNU.l6         ; 0x067b
@..loc_VJNU.l5:
    cmp ax, strict word 0            ; 0x067d
    je short @..loc_VJNU.l1          ; 0x0680
    cmp ax, strict word 1            ; 0x0682
    je short @..loc_VJNU.l2          ; 0x0685
    cmp ax, strict word 2            ; 0x0687
    je short @..loc_VJNU.l3          ; 0x068a
    cmp ax, strict word 3            ; 0x068c
    je short @..loc_VJNU.l4          ; 0x068f
@..loc_VJNU.l6:
    ret                              ; 0x0691
