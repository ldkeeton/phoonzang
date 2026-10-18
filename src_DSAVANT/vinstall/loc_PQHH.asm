; auto-generated
loc_PQHH:
    push bp                          ; 0x0d3f
    mov bp, sp                       ; 0x0d40
    mov ax, word [bp + 0x8]          ; 0x0d42
    inc ax                           ; 0x0d45
    mov cx, 2                        ; 0x0d46
    cwd                              ; 0x0d49
    idiv cx                          ; 0x0d4a
    mov word [bp + 0x8], dx          ; 0x0d4c
    shl dx, 1                        ; 0x0d4f
    mov bx, dx                       ; 0x0d51
    push word [bx + 0x154]           ; 0x0d53
    push word [bp + 0x6]             ; 0x0d57
    push word [bp + 0x4]             ; 0x0d5a
    call loc_STSN_040f               ; 0x0d5d
    add sp, byte 6                   ; 0x0d60
    mov ax, word [bp + 0x8]          ; 0x0d63
    mov sp, bp                       ; 0x0d66
    pop bp                           ; 0x0d68
    ret                              ; 0x0d69
loc_UIJJ:
    push bp                          ; 0x0d6a
    mov bp, sp                       ; 0x0d6b
    add sp, byte 0xae                ; 0x0d6d
    push word [bp + 0x4]             ; 0x0d70
    call aztec_strlen                ; 0x0d73
    pop cx                           ; 0x0d76
    cmp ax, strict word 0x4c         ; 0x0d77
    jle short @..loc_UIJJ.l1         ; 0x0d7a
    mov ax, 0x4c                     ; 0x0d7c
    jmp short @..loc_UIJJ.l2         ; 0x0d7f
@..loc_UIJJ.l1:
    push word [bp + 0x4]             ; 0x0d81
    call aztec_strlen                ; 0x0d84
    pop cx                           ; 0x0d87
@..loc_UIJJ.l2:
    mov word [bp - 0x0002], ax       ; 0x0d88
    push ax                          ; 0x0d8b
    push word [bp + 0x4]             ; 0x0d8c
    lea ax, word [bp - 0x0052]       ; 0x0d8f
    push ax                          ; 0x0d92
    call aztec_strncpy               ; 0x0d93
    add sp, byte 6                   ; 0x0d96
    mov bx, word [bp - 0x0002]       ; 0x0d99
    add bx, bp                       ; 0x0d9c
    mov byte [bx - 0x0052], 0        ; 0x0d9e
    mov ax, dseg_156d                ; 0x0da2
    push ax                          ; 0x0da5
    mov ax, 0                        ; 0x0da6
    push ax                          ; 0x0da9
    mov ax, 0x16                     ; 0x0daa
    push ax                          ; 0x0dad
    call loc_STSN_040f               ; 0x0dae
    add sp, byte 6                   ; 0x0db1
    lea ax, word [bp - 0x0052]       ; 0x0db4
    push ax                          ; 0x0db7
    push ax                          ; 0x0db8
    call aztec_strlen                ; 0x0db9
    pop cx                           ; 0x0dbc
    inc ax                           ; 0x0dbd
    mov cx, 2                        ; 0x0dbe
    cwd                              ; 0x0dc1
    idiv cx                          ; 0x0dc2
    mov cx, ax                       ; 0x0dc4
    mov ax, 0x28                     ; 0x0dc6
    sub ax, cx                       ; 0x0dc9
    push ax                          ; 0x0dcb
    mov ax, 0x16                     ; 0x0dcc
    push ax                          ; 0x0dcf
    call loc_STSN_040f               ; 0x0dd0
    add sp, byte 6                   ; 0x0dd3
    mov sp, bp                       ; 0x0dd6
    pop bp                           ; 0x0dd8
    ret                              ; 0x0dd9
