math_loc_6edc:
    mov ax, 0                        ; 0x6edc
    call ds_dispatch_f40b            ; 0x6edf
    mov ax, 0                        ; 0x6ee2
    push ax                          ; 0x6ee5
    push word [bp + 0x6]             ; 0x6ee6
    push word [bp + 0x4]             ; 0x6ee9
    call api_idx_0050                ; 0x6eec
    add sp, byte 6                   ; 0x6eef
    cmp word [data_8464], byte 0     ; 0x6ef2
    je short @..math_loc_6edc.l2     ; 0x6ef7
    mov ax, word [data_8464]         ; 0x6ef9
    cmp ax, strict word 6            ; 0x6efc
    je short @..math_loc_6edc.l2     ; 0x6eff
    mov ax, 1                        ; 0x6f01
    cmp word [data_8464], byte 3     ; 0x6f04
    jge short @..math_loc_6edc.l1    ; 0x6f09
    mov ax, 0                        ; 0x6f0b
@..math_loc_6edc.l1:
    mov cx, 6                        ; 0x6f0e
    imul cx                          ; 0x6f11
    mov bx, ax                       ; 0x6f13
    mov word [bx - 0x6f36], 0        ; 0x6f15
    mov word [data_8320], 0          ; 0x6f1b
    call loc_1a35                    ; 0x6f21
@..math_loc_6edc.l2:
    mov ax, word [data_9058]         ; 0x6f24
    mov cx, 2                        ; 0x6f27
    cwd                              ; 0x6f2a
    idiv cx                          ; 0x6f2b
    push ax                          ; 0x6f2d
    call api_idx_0004_5              ; 0x6f2e
    pop cx                           ; 0x6f31
    ret                              ; 0x6f32
