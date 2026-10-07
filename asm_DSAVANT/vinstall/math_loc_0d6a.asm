math_loc_0d6a:
    push bp                          ; 0x0d6a
    mov bp, sp                       ; 0x0d6b
    add sp, byte 0xae                ; 0x0d6d
    push word [bp + 0x4]             ; 0x0d70
    call strlen_3                    ; 0x0d73
    pop cx                           ; 0x0d76
    cmp ax, strict word 0x4c         ; 0x0d77
    jle short @..math_loc_0d6a.l1    ; 0x0d7a
    mov ax, 0x4c                     ; 0x0d7c
    jmp short @..math_loc_0d6a.l2    ; 0x0d7f
@..math_loc_0d6a.l1:
    push word [bp + 0x4]             ; 0x0d81
    call strlen_3                    ; 0x0d84
    pop cx                           ; 0x0d87
@..math_loc_0d6a.l2:
    mov word [bp - 0x0002], ax       ; 0x0d88
    push ax                          ; 0x0d8b
    push word [bp + 0x4]             ; 0x0d8c
    lea ax, word [bp - 0x0052]       ; 0x0d8f
    push ax                          ; 0x0d92
    call string_loc_2b09             ; 0x0d93
    add sp, byte 6                   ; 0x0d96
    mov bx, word [bp - 0x0002]       ; 0x0d99
    add bx, bp                       ; 0x0d9c
    mov byte [bx - 0x0052], 0        ; 0x0d9e
    mov ax, 0x156d                   ; 0x0da2
    push ax                          ; 0x0da5
    mov ax, 0                        ; 0x0da6
    push ax                          ; 0x0da9
    mov ax, 0x16                     ; 0x0daa
    push ax                          ; 0x0dad
    call loc_040f                    ; 0x0dae
    add sp, byte 6                   ; 0x0db1
    lea ax, word [bp - 0x0052]       ; 0x0db4
    push ax                          ; 0x0db7
    push ax                          ; 0x0db8
    call strlen_3                    ; 0x0db9
    pop cx                           ; 0x0dbc
    inc ax                           ; 0x0dbd
    mov cx, data_0002                ; 0x0dbe
    cwd                              ; 0x0dc1
    idiv cx                          ; 0x0dc2
    mov cx, ax                       ; 0x0dc4
    mov ax, 0x28                     ; 0x0dc6
    sub ax, cx                       ; 0x0dc9
    push ax                          ; 0x0dcb
    mov ax, 0x16                     ; 0x0dcc
    push ax                          ; 0x0dcf
    call loc_040f                    ; 0x0dd0
    add sp, byte 6                   ; 0x0dd3
    mov sp, bp                       ; 0x0dd6
    pop bp                           ; 0x0dd8
    ret                              ; 0x0dd9
