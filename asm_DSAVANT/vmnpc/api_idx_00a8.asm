api_idx_00a8:
    mov ax, 0xff58                   ; 0x8ead
    db 0xe8, 0x58, 0x65 ; call 0xf40b
    push word [bp + 0x4]             ; 0x8eb3
    lea ax, word [bp - 0x0052]       ; 0x8eb6
    push ax                          ; 0x8eb9
    db 0xe8, 0xa7, 0x64 ; call 0xf364
    add sp, byte 4                   ; 0x8ebd
    mov word [bp - 0x00a8], 0        ; 0x8ec0
    mov word [bp - 0x00a4], 0        ; 0x8ec6
@..api_idx_00a8.l1:
    mov bx, word [bp - 0x00a4]       ; 0x8ecc
    add bx, bp                       ; 0x8ed0
    cmp byte [bx - 0x0052], 0x20     ; 0x8ed2
    jne short @..api_idx_00a8.l2     ; 0x8ed6
    inc word [bp - 0x00a4]           ; 0x8ed8
    jmp short @..api_idx_00a8.l1     ; 0x8edc
@..api_idx_00a8.l2:
    push word [bp - 0x00a4]          ; 0x8ede
    lea ax, word [bp - 0x0052]       ; 0x8ee2
    push ax                          ; 0x8ee5
    call api_idx_0002_12             ; 0x8ee6
    add sp, byte 4                   ; 0x8ee9
    mov word [bp - 0x00a6], ax       ; 0x8eec
    cmp ax, strict word 0xffff       ; 0x8ef0
    je short @..api_idx_00a8.l5      ; 0x8ef3
    sub ax, word [bp - 0x00a4]       ; 0x8ef5
    push ax                          ; 0x8ef9
    mov ax, word [bp - 0x00a4]       ; 0x8efa
    lea cx, word [bp - 0x0052]       ; 0x8efe
    add ax, cx                       ; 0x8f01
    push ax                          ; 0x8f03
    lea ax, word [bp - 0x00a2]       ; 0x8f04
    push ax                          ; 0x8f08
    call string_loc_ae4e             ; 0x8f09
    add sp, byte 6                   ; 0x8f0c
    mov ax, word [bp - 0x00a6]       ; 0x8f0f
    sub ax, word [bp - 0x00a4]       ; 0x8f13
    mov bx, ax                       ; 0x8f17
    add bx, bp                       ; 0x8f19
    mov byte [bx - 0x00a2], 0x20     ; 0x8f1b
    mov byte [bx - 0x00a1], 0        ; 0x8f20
    lea ax, word [bp - 0x00a2]       ; 0x8f25
    push ax                          ; 0x8f29
    call api_idx_00a6                ; 0x8f2a
    pop cx                           ; 0x8f2d
    mov word [bp - 0x0002], 0        ; 0x8f2e
    jmp short @..api_idx_00a8.l4     ; 0x8f33
@..api_idx_00a8.l3:
    mov bx, word [bp - 0x0002]       ; 0x8f35
    add bx, bp                       ; 0x8f38
    mov al, byte [bx - 0x00a2]       ; 0x8f3a
    mov cx, word [bp - 0x00a8]       ; 0x8f3e
    add cx, word [bp - 0x0002]       ; 0x8f42
    mov si, cx                       ; 0x8f45
    mov bx, word [bp + 0x4]          ; 0x8f47
    mov byte [bx + si], al           ; 0x8f4a
    inc word [bp - 0x0002]           ; 0x8f4c
@..api_idx_00a8.l4:
    lea ax, word [bp - 0x00a2]       ; 0x8f4f
    push ax                          ; 0x8f53
    db 0xe8, 0x39, 0x6b ; call 0xfa90
    pop cx                           ; 0x8f57
    cmp ax, word [bp - 0x0002]       ; 0x8f58
    jg short @..api_idx_00a8.l3      ; 0x8f5b
    lea ax, word [bp - 0x00a2]       ; 0x8f5d
    push ax                          ; 0x8f61
    db 0xe8, 0x2b, 0x6b ; call 0xfa90
    pop cx                           ; 0x8f65
    add word [bp - 0x00a8], ax       ; 0x8f66
@..api_idx_00a8.l5:
    mov ax, word [bp - 0x00a6]       ; 0x8f6a
    mov word [bp - 0x00a4], ax       ; 0x8f6e
    cmp ax, strict word 0xffff       ; 0x8f72
    je short @..api_idx_00a8.l6      ; 0x8f75
    jmp near @..api_idx_00a8.l1      ; 0x8f77
@..api_idx_00a8.l6:
    mov bx, word [bp + 0x4]          ; 0x8f7a
    mov si, word [bp - 0x00a8]       ; 0x8f7d
    mov byte [bx + si], 0            ; 0x8f81
    ret                              ; 0x8f84
