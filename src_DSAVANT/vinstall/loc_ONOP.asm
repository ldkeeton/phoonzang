; auto-generated
loc_ONOP:
    push bp                          ; 0x0dda
    mov bp, sp                       ; 0x0ddb
    add sp, strict word 0xff5c       ; 0x0ddd
    mov ax, dseg_15bd                ; 0x0de1
    push ax                          ; 0x0de4
    lea ax, word [bp - 0xa2]         ; 0x0de5
    push ax                          ; 0x0de9
    call aztec_strcpy                ; 0x0dea
    add sp, byte 4                   ; 0x0ded
    cmp word [bp + 8], byte 0        ; 0x0df0
    jge short .forward1              ; 0x0df4
    mov ax, dseg_15cc                ; 0x0df6
    push ax                          ; 0x0df9
    lea ax, word [bp - 0xa2]         ; 0x0dfa
    push ax                          ; 0x0dfe
    call aztec_strcat                ; 0x0dff
    add sp, byte 4                   ; 0x0e02
    mov ax, 0                        ; 0x0e05
    sub ax, word [bp + 8]            ; 0x0e08
    mov word [bp + 8], ax            ; 0x0e0b
    jmp short .forward2              ; 0x0e0e
.forward1:
    mov ax, dseg_15d8                ; 0x0e10
    push ax                          ; 0x0e13
    lea ax, word [bp - 0xa2]         ; 0x0e14
    push ax                          ; 0x0e18
    call aztec_strcat                ; 0x0e19
    add sp, byte 4                   ; 0x0e1c
    call loc_NJKV                    ; 0x0e1f
.forward2:
    mov ax, dseg_15e1                ; 0x0e22
    push ax                          ; 0x0e25
    lea ax, word [bp - 0xa2]         ; 0x0e26
    push ax                          ; 0x0e2a
    call aztec_strcat                ; 0x0e2b
    add sp, byte 4                   ; 0x0e2e
    mov ax, word [bp + 8]            ; 0x0e31
    add ax, strict word 0x40         ; 0x0e34
    mov byte [bp - 2], al            ; 0x0e37
    mov byte [bp - 1], 0             ; 0x0e3a
    lea ax, word [bp - 2]            ; 0x0e3e
    push ax                          ; 0x0e41
    lea ax, word [bp - 0xa2]         ; 0x0e42
    push ax                          ; 0x0e46
    call aztec_strcat                ; 0x0e47
    add sp, byte 4                   ; 0x0e4a
    mov ax, dseg_15e9                ; 0x0e4d
    push ax                          ; 0x0e50
    lea ax, word [bp - 0xa2]         ; 0x0e51
    push ax                          ; 0x0e55
    call aztec_strcat                ; 0x0e56
    add sp, byte 4                   ; 0x0e59
    push word [bp + 4]               ; 0x0e5c
    lea ax, word [bp - 0xa2]         ; 0x0e5f
    push ax                          ; 0x0e63
    call aztec_strcat                ; 0x0e64
    add sp, byte 4                   ; 0x0e67
    mov ax, dseg_15f7                ; 0x0e6a
    push ax                          ; 0x0e6d
    lea ax, word [bp - 0xa2]         ; 0x0e6e
    push ax                          ; 0x0e72
    call aztec_strcat                ; 0x0e73
    add sp, byte 4                   ; 0x0e76
    push word [bp + 0xa]             ; 0x0e79
    call aztec_strlen                ; 0x0e7c
    pop cx                           ; 0x0e7f
    cmp ax, strict word 0            ; 0x0e80
    jle short .forward3              ; 0x0e83
    push word [bp + 6]               ; 0x0e85
    lea ax, word [bp - 0x52]         ; 0x0e88
    push ax                          ; 0x0e8b
    call aztec_strcpy                ; 0x0e8c
    add sp, byte 4                   ; 0x0e8f
    push word [bp + 0xa]             ; 0x0e92
    lea ax, word [bp - 0x52]         ; 0x0e95
    push ax                          ; 0x0e98
    call aztec_strcat                ; 0x0e99
    add sp, byte 4                   ; 0x0e9c
.back1:
    lea ax, word [bp - 0xa2]         ; 0x0e9f
    push ax                          ; 0x0ea3
    call loc_NNGU                    ; 0x0ea4
    pop cx                           ; 0x0ea7
    mov ax, 0                        ; 0x0ea8
    push ax                          ; 0x0eab
    lea ax, word [bp - 0x52]         ; 0x0eac
    push ax                          ; 0x0eaf
    call aztec_open                  ; 0x0eb0
    add sp, byte 4                   ; 0x0eb3
    mov word [bp - 0xa4], ax         ; 0x0eb6
    cmp word [bp - 0xa4], byte -1    ; 0x0eba
    je short .back1                  ; 0x0ebf
    push word [bp - 0xa4]            ; 0x0ec1
    call aztec_close                 ; 0x0ec5
    pop cx                           ; 0x0ec8
    jmp short .forward4              ; 0x0ec9
.forward3:
    lea ax, word [bp - 0xa2]         ; 0x0ecb
    push ax                          ; 0x0ecf
    call loc_NNGU                    ; 0x0ed0
    pop cx                           ; 0x0ed3
.forward4:
    mov sp, bp                       ; 0x0ed4
    pop bp                           ; 0x0ed6
    ret                              ; 0x0ed7
