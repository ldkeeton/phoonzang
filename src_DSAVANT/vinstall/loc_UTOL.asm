; auto-generated
loc_UTOL:
    push bp                          ; 0x0c21
    mov bp, sp                       ; 0x0c22
    mov ax, word [bp + 0x4]          ; 0x0c24
    mov cx, 4                        ; 0x0c27
    cwd                              ; 0x0c2a
    idiv cx                          ; 0x0c2b
    mov ax, dx                       ; 0x0c2d
    inc ax                           ; 0x0c2f
    mov word [bp + 0x4], ax          ; 0x0c30
    cmp ax, strict word 1            ; 0x0c33
    jne short @..loc_UTOL.l1         ; 0x0c36
    cmp word [bss_29e6], byte 0      ; 0x0c38
    jne short @..loc_UTOL.l1         ; 0x0c3d
    inc word [bp + 0x4]              ; 0x0c3f
@..loc_UTOL.l1:
    cmp word [bp + 0x4], byte 2      ; 0x0c42
    jne short @..loc_UTOL.l2         ; 0x0c46
    cmp word [bss_29e8], byte 0      ; 0x0c48
    jne short @..loc_UTOL.l2         ; 0x0c4d
    inc word [bp + 0x4]              ; 0x0c4f
@..loc_UTOL.l2:
    cmp word [bp + 0x4], byte 3      ; 0x0c52
    jne short @..loc_UTOL.l3         ; 0x0c56
    cmp word [bss_29ea], byte 0      ; 0x0c58
    jne short @..loc_UTOL.l3         ; 0x0c5d
    inc word [bp + 0x4]              ; 0x0c5f
@..loc_UTOL.l3:
    cmp word [bp + 0x4], byte 4      ; 0x0c62
    jne short @..loc_UTOL.l4         ; 0x0c66
    cmp word [bss_29ec], byte 0      ; 0x0c68
    jne short @..loc_UTOL.l4         ; 0x0c6d
    mov word [bp + 0x4], 1           ; 0x0c6f
@..loc_UTOL.l4:
    cmp word [bp + 0x4], byte 1      ; 0x0c74
    jne short @..loc_UTOL.l5         ; 0x0c78
    cmp word [bss_29e6], byte 0      ; 0x0c7a
    jne short @..loc_UTOL.l5         ; 0x0c7f
    inc word [bp + 0x4]              ; 0x0c81
@..loc_UTOL.l5:
    cmp word [bp + 0x4], byte 2      ; 0x0c84
    jne short @..loc_UTOL.l6         ; 0x0c88
    cmp word [bss_29e8], byte 0      ; 0x0c8a
    jne short @..loc_UTOL.l6         ; 0x0c8f
    inc word [bp + 0x4]              ; 0x0c91
@..loc_UTOL.l6:
    cmp word [bp + 0x4], byte 3      ; 0x0c94
    jne short @..loc_UTOL.l7         ; 0x0c98
    cmp word [bss_29ea], byte 0      ; 0x0c9a
    jne short @..loc_UTOL.l7         ; 0x0c9f
    inc word [bp + 0x4]              ; 0x0ca1
@..loc_UTOL.l7:
    cmp word [bp + 0x4], byte 4      ; 0x0ca4
    jne short @..loc_UTOL.l8         ; 0x0ca8
    cmp word [bss_29ec], byte 0      ; 0x0caa
    jne short @..loc_UTOL.l8         ; 0x0caf
    mov word [bp + 0x4], 0           ; 0x0cb1
@..loc_UTOL.l8:
    mov ax, word [bp + 0x4]          ; 0x0cb6
    shl ax, 1                        ; 0x0cb9
    mov bx, ax                       ; 0x0cbb
    push word [word bx + 0x2]        ; 0x0cbd
    mov ax, 0x10                     ; 0x0cc1
    push ax                          ; 0x0cc4
    mov ax, 0xd                      ; 0x0cc5
    push ax                          ; 0x0cc8
    call put_text_at                 ; 0x0cc9
    add sp, byte 6                   ; 0x0ccc
    mov ax, word [bp + 0x4]          ; 0x0ccf
    mov sp, bp                       ; 0x0cd2
    pop bp                           ; 0x0cd4
    ret                              ; 0x0cd5
