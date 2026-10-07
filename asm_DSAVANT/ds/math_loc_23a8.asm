math_loc_23a8:
    mov ax, 0                        ; 0x23a8
    call loc_4652                    ; 0x23ab
    cmp byte [data_5987], 5          ; 0x23ae
    jne short @..math_loc_23a8.l1    ; 0x23b3
    cmp word [bp + 0x6], byte 1      ; 0x23b5
    jne short @..math_loc_23a8.l1    ; 0x23b9
    mov ax, 1                        ; 0x23bb
    jmp short @..math_loc_23a8.l2    ; 0x23be
@..math_loc_23a8.l1:
    mov ax, 0                        ; 0x23c0
@..math_loc_23a8.l2:
    mov word [bp + 0x6], ax          ; 0x23c3
    mov ax, 0x3a                     ; 0x23c6
    push ax                          ; 0x23c9
    mov ax, 0x14                     ; 0x23ca
    imul word [bp + 0x6]             ; 0x23cd
    add ax, 0x5912                   ; 0x23d0
    push ax                          ; 0x23d3
    mov ax, 0x69ca                   ; 0x23d4
    push ax                          ; 0x23d7
    call math_loc_2359               ; 0x23d8
    add sp, byte 6                   ; 0x23db
    push word [bp + 0x4]             ; 0x23de
    mov ax, 0x69ca                   ; 0x23e1
    push ax                          ; 0x23e4
    call strlen_3                    ; 0x23e5
    add sp, byte 4                   ; 0x23e8
    mov ax, 0x69ca                   ; 0x23eb
    ret                              ; 0x23ee
