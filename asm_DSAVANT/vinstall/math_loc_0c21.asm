math_loc_0c21:
    push bp                          ; 0x0c21
    mov bp, sp                       ; 0x0c22
    mov ax, word [bp + 0x4]          ; 0x0c24
    mov cx, data_0004                ; 0x0c27
    cwd                              ; 0x0c2a
    idiv cx                          ; 0x0c2b
    mov ax, dx                       ; 0x0c2d
    inc ax                           ; 0x0c2f
    mov word [bp + 0x4], ax          ; 0x0c30
    cmp ax, strict word 1            ; 0x0c33
    jne short @..math_loc_0c21.l1    ; 0x0c36
    cmp word [data_29e6], byte 0     ; 0x0c38
    jne short @..math_loc_0c21.l1    ; 0x0c3d
    inc word [bp + 0x4]              ; 0x0c3f
@..math_loc_0c21.l1:
    cmp word [bp + 0x4], byte 2      ; 0x0c42
    jne short @..math_loc_0c21.l2    ; 0x0c46
    cmp word [data_29e8], byte 0     ; 0x0c48
    jne short @..math_loc_0c21.l2    ; 0x0c4d
    inc word [bp + 0x4]              ; 0x0c4f
@..math_loc_0c21.l2:
    cmp word [bp + 0x4], byte 3      ; 0x0c52
    jne short @..math_loc_0c21.l3    ; 0x0c56
    cmp word [data_29ea], byte 0     ; 0x0c58
    jne short @..math_loc_0c21.l3    ; 0x0c5d
    inc word [bp + 0x4]              ; 0x0c5f
@..math_loc_0c21.l3:
    cmp word [bp + 0x4], byte 4      ; 0x0c62
    jne short @..math_loc_0c21.l4    ; 0x0c66
    cmp word [data_29ec], byte 0     ; 0x0c68
    jne short @..math_loc_0c21.l4    ; 0x0c6d
    mov word [bp + 0x4], 1           ; 0x0c6f
@..math_loc_0c21.l4:
    cmp word [bp + 0x4], byte 1      ; 0x0c74
    jne short @..math_loc_0c21.l5    ; 0x0c78
    cmp word [data_29e6], byte 0     ; 0x0c7a
    jne short @..math_loc_0c21.l5    ; 0x0c7f
    inc word [bp + 0x4]              ; 0x0c81
@..math_loc_0c21.l5:
    cmp word [bp + 0x4], byte 2      ; 0x0c84
    jne short @..math_loc_0c21.l6    ; 0x0c88
    cmp word [data_29e8], byte 0     ; 0x0c8a
    jne short @..math_loc_0c21.l6    ; 0x0c8f
    inc word [bp + 0x4]              ; 0x0c91
@..math_loc_0c21.l6:
    cmp word [bp + 0x4], byte 3      ; 0x0c94
    jne short @..math_loc_0c21.l7    ; 0x0c98
    cmp word [data_29ea], byte 0     ; 0x0c9a
    jne short @..math_loc_0c21.l7    ; 0x0c9f
    inc word [bp + 0x4]              ; 0x0ca1
@..math_loc_0c21.l7:
    cmp word [bp + 0x4], byte 4      ; 0x0ca4
    jne short @..math_loc_0c21.l8    ; 0x0ca8
    cmp word [data_29ec], byte 0     ; 0x0caa
    jne short @..math_loc_0c21.l8    ; 0x0caf
    mov word [bp + 0x4], 0           ; 0x0cb1
@..math_loc_0c21.l8:
    mov ax, word [bp + 0x4]          ; 0x0cb6
    shl ax, 1                        ; 0x0cb9
    mov bx, ax                       ; 0x0cbb
    db 0xff, 0xb7, 0x02, 0x00 ; push word [bx + 0x2]
    mov ax, 0x10                     ; 0x0cc1
    push ax                          ; 0x0cc4
    mov ax, 0xd                      ; 0x0cc5
    push ax                          ; 0x0cc8
    call loc_040f                    ; 0x0cc9
    add sp, byte 6                   ; 0x0ccc
    mov ax, word [bp + 0x4]          ; 0x0ccf
    mov sp, bp                       ; 0x0cd2
    pop bp                           ; 0x0cd4
    ret                              ; 0x0cd5
