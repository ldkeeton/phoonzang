leaf_loc_185a:
    mov ax, 0x16                     ; 0x185a
    ret                              ; 0x185d
jumptable_185e:
    dw 0x6872
    dw 0x687f
    dw 0x6883
    dw 0x6887
    dw 0x6894
    dw jumptable_185e_case_5 - IMAGE_BASE
@..local.l36:
    sub ax, strict word 5            ; 0x186a
    cmp ax, strict word 6            ; 0x186d
    jae short @..local.l37           ; 0x1870
    xchg bx, ax                      ; 0x1872
    shl bx, 1                        ; 0x1873
    jmp [cs:bx + 0x68a5]             ; 0x1875
@..local.l37:
    cmp word [bp + 0x8], byte 0x0d   ; 0x187a
    jne short @..local.l38           ; 0x187e
    mov ax, 0x12                     ; 0x1880
    ret                              ; 0x1883
@..local.l38:
    cmp word [bp + 0x4], byte 1      ; 0x1884
    jne short @..local.l40           ; 0x1888
    mov ax, word [bp + 0x8]          ; 0x188a
    jmp short @..local.l39           ; 0x188d
