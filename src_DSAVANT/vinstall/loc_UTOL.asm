; auto-generated
loc_UTOL:
    push bp                          ; 0x0c21
    mov bp, sp                       ; 0x0c22
    mov ax, word [bp + 4]            ; 0x0c24
    mov cx, 4                        ; 0x0c27
    cwd                              ; 0x0c2a
    idiv cx                          ; 0x0c2b
    mov ax, dx                       ; 0x0c2d
    inc ax                           ; 0x0c2f
    mov word [bp + 4], ax            ; 0x0c30
    cmp ax, strict word 1            ; 0x0c33
    jne short .forward1              ; 0x0c36
    cmp word [bss_29e6], byte 0      ; 0x0c38
    jne short .forward1              ; 0x0c3d
    inc word [bp + 4]                ; 0x0c3f
.forward1:
    cmp word [bp + 4], byte 2        ; 0x0c42
    jne short .forward2              ; 0x0c46
    cmp word [bss_29e8], byte 0      ; 0x0c48
    jne short .forward2              ; 0x0c4d
    inc word [bp + 4]                ; 0x0c4f
.forward2:
    cmp word [bp + 4], byte 3        ; 0x0c52
    jne short .forward3              ; 0x0c56
    cmp word [bss_29ea], byte 0      ; 0x0c58
    jne short .forward3              ; 0x0c5d
    inc word [bp + 4]                ; 0x0c5f
.forward3:
    cmp word [bp + 4], byte 4        ; 0x0c62
    jne short .forward4              ; 0x0c66
    cmp word [bss_29ec], byte 0      ; 0x0c68
    jne short .forward4              ; 0x0c6d
    mov word [bp + 4], 1             ; 0x0c6f
.forward4:
    cmp word [bp + 4], byte 1        ; 0x0c74
    jne short .forward5              ; 0x0c78
    cmp word [bss_29e6], byte 0      ; 0x0c7a
    jne short .forward5              ; 0x0c7f
    inc word [bp + 4]                ; 0x0c81
.forward5:
    cmp word [bp + 4], byte 2        ; 0x0c84
    jne short .forward6              ; 0x0c88
    cmp word [bss_29e8], byte 0      ; 0x0c8a
    jne short .forward6              ; 0x0c8f
    inc word [bp + 4]                ; 0x0c91
.forward6:
    cmp word [bp + 4], byte 3        ; 0x0c94
    jne short .forward7              ; 0x0c98
    cmp word [bss_29ea], byte 0      ; 0x0c9a
    jne short .forward7              ; 0x0c9f
    inc word [bp + 4]                ; 0x0ca1
.forward7:
    cmp word [bp + 4], byte 4        ; 0x0ca4
    jne short .forward8              ; 0x0ca8
    cmp word [bss_29ec], byte 0      ; 0x0caa
    jne short .forward8              ; 0x0caf
    mov word [bp + 4], 0             ; 0x0cb1
.forward8:
    mov ax, word [bp + 4]            ; 0x0cb6
    shl ax, 1                        ; 0x0cb9
    mov bx, ax                       ; 0x0cbb
    push word [word bx + 2]          ; 0x0cbd
    mov ax, 0x10                     ; 0x0cc1
    push ax                          ; 0x0cc4
    mov ax, 0xd                      ; 0x0cc5
    push ax                          ; 0x0cc8
    call put_text_at                 ; 0x0cc9
    add sp, byte 6                   ; 0x0ccc
    mov ax, word [bp + 4]            ; 0x0ccf
    mov sp, bp                       ; 0x0cd2
    pop bp                           ; 0x0cd4
    ret                              ; 0x0cd5
