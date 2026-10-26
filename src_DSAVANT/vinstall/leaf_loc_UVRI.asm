; auto-generated
leaf_loc_UVRI:
    push bp                          ; 0x10a4
    mov bp, sp                       ; 0x10a5
    mov ax, word [bp + 4]            ; 0x10a7
    jmp near .forward1               ; 0x10aa
jumptable_113a_case_0:
    mov ax, dseg_166c                ; 0x10ad
    push ax                          ; 0x10b0
    push word [bp + 6]               ; 0x10b1
    call aztec_strcpy                ; 0x10b4
    add sp, byte 4                   ; 0x10b7
    mov ax, dseg_166f                ; 0x10ba
    push ax                          ; 0x10bd
    push word [bp + 8]               ; 0x10be
    call aztec_strcpy                ; 0x10c1
    add sp, byte 4                   ; 0x10c4
    jmp near leaf_loc_UVRI.forward2  ; 0x10c7
jumptable_113a_case_1:
    mov ax, dseg_1672                ; 0x10ca
    push ax                          ; 0x10cd
    push word [bp + 6]               ; 0x10ce
    call aztec_strcpy                ; 0x10d1
    add sp, byte 4                   ; 0x10d4
    mov ax, dseg_1675                ; 0x10d7
    push ax                          ; 0x10da
    push word [bp + 8]               ; 0x10db
    call aztec_strcpy                ; 0x10de
    add sp, byte 4                   ; 0x10e1
    jmp short leaf_loc_UVRI.forward2 ; 0x10e4
jumptable_113a_case_2:
    mov ax, dseg_1676                ; 0x10e6
    push ax                          ; 0x10e9
    push word [bp + 6]               ; 0x10ea
    call aztec_strcpy                ; 0x10ed
    add sp, byte 4                   ; 0x10f0
    mov ax, dseg_1679                ; 0x10f3
    push ax                          ; 0x10f6
    push word [bp + 8]               ; 0x10f7
    call aztec_strcpy                ; 0x10fa
    add sp, byte 4                   ; 0x10fd
    jmp short leaf_loc_UVRI.forward2 ; 0x1100
jumptable_113a_case_3:
    mov ax, dseg_167a                ; 0x1102
    push ax                          ; 0x1105
    push word [bp + 6]               ; 0x1106
    call aztec_strcpy                ; 0x1109
    add sp, byte 4                   ; 0x110c
    mov ax, dseg_167d                ; 0x110f
    push ax                          ; 0x1112
    push word [bp + 8]               ; 0x1113
    call aztec_strcpy                ; 0x1116
    add sp, byte 4                   ; 0x1119
    jmp short leaf_loc_UVRI.forward2 ; 0x111c
jumptable_113a_case_4:
    mov ax, dseg_167e                ; 0x111e
    push ax                          ; 0x1121
    push word [bp + 6]               ; 0x1122
    call aztec_strcpy                ; 0x1125
    add sp, byte 4                   ; 0x1128
    mov ax, dseg_1681                ; 0x112b
    push ax                          ; 0x112e
    push word [bp + 8]               ; 0x112f
    call aztec_strcpy                ; 0x1132
    add sp, byte 4                   ; 0x1135
    jmp short leaf_loc_UVRI.forward2 ; 0x1138
jumptable_113a:
    dw jumptable_113a_case_0 - IMAGE_BASE      ; 0x113a
    dw jumptable_113a_case_1 - IMAGE_BASE      ; 0x113c
    dw jumptable_113a_case_2 - IMAGE_BASE      ; 0x113e
    dw jumptable_113a_case_3 - IMAGE_BASE      ; 0x1140
    dw jumptable_113a_case_4 - IMAGE_BASE      ; 0x1142
leaf_loc_UVRI.forward1:
    cmp ax, strict word 5            ; 0x1144
    jae short leaf_loc_UVRI.forward2 ; 0x1147
    xchg bx, ax                      ; 0x1149
    shl bx, 1                        ; 0x114a
    jmp [cs:bx + jumptable_113a - IMAGE_BASE] ; 0x114c
leaf_loc_UVRI.forward2:
    mov sp, bp                       ; 0x1151
    pop bp                           ; 0x1153
    ret                              ; 0x1154
