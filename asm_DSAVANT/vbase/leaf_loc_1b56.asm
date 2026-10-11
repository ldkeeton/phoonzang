leaf_loc_1b56:
    mov ax, 0x5f                     ; 0x1b56
    ret                              ; 0x1b59
jumptable_1b5a:
    dw 0x6a65
    dw jumptable_1b5a_case_1 - IMAGE_BASE
    dw 0x6a6d
    dw 0x6a71
    dw jumptable_1b5a_case_4 - IMAGE_BASE
    dw 0x6a79
    dw 0x6a7d
    dw 0x6a81
    dw 0x6a85
    dw jumptable_1b5a_case_9 - IMAGE_BASE
    dw 0x6a8d
    dw 0x6a91
    dw jumptable_1b5a_case_12 - IMAGE_BASE
    dw 0x6a99
    dw jumptable_1b5a_case_14 - IMAGE_BASE
    dw 0x6aa1
    dw 0x6aa5
    dw 0x6aa9
    dw jumptable_1b5a_case_18 - IMAGE_BASE
    dw 0x6ab1
    dw 0x6ab5
    dw jumptable_1b5a_case_21 - IMAGE_BASE
    dw 0x6abd
    dw 0x6ac1
    dw 0x6ac5
    dw 0x6ac9
    dw jumptable_1b5a_case_26 - IMAGE_BASE
    dw jumptable_1b5a_case_27 - IMAGE_BASE
    dw jumptable_1b5a_case_28 - IMAGE_BASE
    dw jumptable_1b5a_case_29 - IMAGE_BASE
    dw jumptable_1b5a_case_30 - IMAGE_BASE
    dw jumptable_1b5a_case_31 - IMAGE_BASE
    dw jumptable_1b5a_case_32 - IMAGE_BASE
    dw jumptable_1b5a_case_33 - IMAGE_BASE
    dw jumptable_1b5a_case_34 - IMAGE_BASE
    dw jumptable_1b5a_case_35 - IMAGE_BASE
    dw jumptable_1b5a_case_36 - IMAGE_BASE
    dw 0x6af9
    dw 0x6afd
    dw 0x6b01
    dw jumptable_1b5a_case_40 - IMAGE_BASE
    dw jumptable_1b5a_case_41 - IMAGE_BASE
    dw 0x6b0d
    dw 0x6b11
    dw 0x6b15
    dw 0x6b19
    dw 0x6b1d
    dw 0x6b21
    dw 0x6b25
    dw 0x6b29
    dw 0x6b2d
    dw jumptable_1b5a_case_51 - IMAGE_BASE
    dw 0x6b35
    dw 0x6b39
    dw jumptable_1b5a_case_54 - IMAGE_BASE
    dw 0x6b41
    dw jumptable_1b5a_case_56 - IMAGE_BASE
    dw 0x6b49
    dw 0x6b4d
    dw jumptable_1b5a_case_59 - IMAGE_BASE
    dw 0x6b55
    dw 0x6b59
    dw jumptable_1b5a_case_62 - IMAGE_BASE
    dw 0x6b61
    dw 0x6b65
    dw 0x6b69
    dw jumptable_1b5a_case_66 - IMAGE_BASE
    dw 0x6b71
    dw 0x6b75
    dw jumptable_1b5a_case_69 - IMAGE_BASE
    dw 0x6b7d
    dw jumptable_1b5a_case_71 - IMAGE_BASE
    dw 0x6b85
    dw 0x6b89
    dw 0x6b8d
    dw 0x6b91
    dw 0x6b95
    dw jumptable_1b5a_case_77 - IMAGE_BASE
    dw jumptable_1b5a_case_78 - IMAGE_BASE
@..local.l60:
    cmp ax, strict word 0x4f         ; 0x1bf8
    jae short @..local.l61           ; 0x1bfb
    xchg bx, ax                      ; 0x1bfd
    shl bx, 1                        ; 0x1bfe
    jmp [cs:bx + 0x6ba1]             ; 0x1c00
@..local.l61:
    mov ax, 0xffff                   ; 0x1c05
    ret                              ; 0x1c08
loc_1c09:
    mov ax, 0                        ; 0x1c09
    call ds_dispatch_f40b            ; 0x1c0c
    mov ax, word [bp + 0x6]          ; 0x1c0f
    push ax                          ; 0x1c12
    cmp ax, strict word 1            ; 0x1c13
    pop ax                           ; 0x1c16
    jge short @..local.l62           ; 0x1c17
    mov ax, 1                        ; 0x1c19
@..local.l62:
    push ax                          ; 0x1c1c
    mov ax, 0x248                    ; 0x1c1d
    imul word [bp + 0x4]             ; 0x1c20
    mov bx, ax                       ; 0x1c23
    pop ax                           ; 0x1c25
    mov byte [bx + 0x5d54], al       ; 0x1c26
    mov ax, word [bp + 0x8]          ; 0x1c2a
    push ax                          ; 0x1c2d
    cmp ax, strict word 1            ; 0x1c2e
    pop ax                           ; 0x1c31
    jge short @..local.l63           ; 0x1c32
    mov ax, 1                        ; 0x1c34
@..local.l63:
    mov byte [bx + 0x5d55], al       ; 0x1c37
    mov ax, word [bp + 0xa]          ; 0x1c3b
    push ax                          ; 0x1c3e
    cmp ax, strict word 1            ; 0x1c3f
    pop ax                           ; 0x1c42
    jge short @..local.l64           ; 0x1c43
    mov ax, 1                        ; 0x1c45
@..local.l64:
    mov byte [bx + 0x5d56], al       ; 0x1c48
    mov ax, word [bp + 0xc]          ; 0x1c4c
    push ax                          ; 0x1c4f
    cmp ax, strict word 1            ; 0x1c50
    pop ax                           ; 0x1c53
    jge short @..local.l65           ; 0x1c54
    mov ax, 1                        ; 0x1c56
@..local.l65:
    mov byte [bx + 0x5d57], al       ; 0x1c59
    mov ax, word [bp + 0xe]          ; 0x1c5d
    push ax                          ; 0x1c60
    cmp ax, strict word 1            ; 0x1c61
    pop ax                           ; 0x1c64
    jge short @..local.l66           ; 0x1c65
    mov ax, 1                        ; 0x1c67
@..local.l66:
    mov byte [bx + 0x5d58], al       ; 0x1c6a
    mov ax, word [bp + 0x10]         ; 0x1c6e
    push ax                          ; 0x1c71
    cmp ax, strict word 1            ; 0x1c72
    pop ax                           ; 0x1c75
    jge short @..local.l67           ; 0x1c76
    mov ax, 1                        ; 0x1c78
@..local.l67:
    mov byte [bx + 0x5d59], al       ; 0x1c7b
    ret                              ; 0x1c7f
