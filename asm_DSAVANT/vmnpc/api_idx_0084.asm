api_idx_0084:
    mov ax, 0xff7c                   ; 0x8c72
    call ds_aztec_csav               ; 0x8c75
    lea ax, word [bp - 0x0050]       ; 0x8c78
    push ax                          ; 0x8c7b
    push word [bss_91a8]             ; 0x8c7c
    call ds_app_mem_0782             ; 0x8c80
    add sp, byte 4                   ; 0x8c83
    mov al, byte [bp - 0x0050]       ; 0x8c86
    sub ah, ah                       ; 0x8c89
    mov word [bp - 0x0082], ax       ; 0x8c8b
    mov al, byte [bp - 0x004f]       ; 0x8c8f
    sub ah, ah                       ; 0x8c92
    dec ax                           ; 0x8c94
    mov word [bp - 0x0084], ax       ; 0x8c95
    mov word [bp - 0x0054], 0        ; 0x8c99
    mov word [bp - 0x0056], 2        ; 0x8c9e
@..api_idx_0084.l1:
    mov ax, 0x2f                     ; 0x8ca3
    push ax                          ; 0x8ca6
    mov ax, word [bp - 0x0056]       ; 0x8ca7
    lea cx, word [bp - 0x0050]       ; 0x8caa
    add ax, cx                       ; 0x8cad
    push ax                          ; 0x8caf
    call ds_strlen                   ; 0x8cb0
    add sp, byte 4                   ; 0x8cb3
    mov word [bp - 0x0052], ax       ; 0x8cb6
    cmp ax, strict word 0xffff       ; 0x8cb9
    je short @..api_idx_0084.l2      ; 0x8cbc
    mov ax, word [bp - 0x0056]       ; 0x8cbe
    mov cx, word [bp - 0x0054]       ; 0x8cc1
    shl cx, 1                        ; 0x8cc4
    mov bx, cx                       ; 0x8cc6
    add bx, bp                       ; 0x8cc8
    mov word [bx - 0x007e], ax       ; 0x8cca
    add ax, word [bp - 0x0052]       ; 0x8ccd
    inc ax                           ; 0x8cd0
    mov word [bp - 0x0056], ax       ; 0x8cd1
    inc word [bp - 0x0054]           ; 0x8cd4
    jmp short @..api_idx_0084.l1     ; 0x8cd7
@..api_idx_0084.l2:
    mov ax, word [bp - 0x0056]       ; 0x8cd9
    mov cx, word [bp - 0x0054]       ; 0x8cdc
    shl cx, 1                        ; 0x8cdf
    mov bx, cx                       ; 0x8ce1
    add bx, bp                       ; 0x8ce3
    mov word [bx - 0x007e], ax       ; 0x8ce5
    cmp word [bp + 0x6], byte 0      ; 0x8ce8
    jne short @..api_idx_0084.l4     ; 0x8cec
    mov ax, word [bp - 0x0054]       ; 0x8cee
    cmp ax, word [bp - 0x0082]       ; 0x8cf1
    jle short @..api_idx_0084.l3     ; 0x8cf5
    mov ax, word [bp - 0x0082]       ; 0x8cf7
    mov word [bp - 0x0054], ax       ; 0x8cfb
@..api_idx_0084.l3:
    push word [bp - 0x0054]          ; 0x8cfe
    call ds_app_09f0                 ; 0x8d01
    pop cx                           ; 0x8d04
    mov word [bp - 0x0080], ax       ; 0x8d05
    jmp short @..api_idx_0084.l5     ; 0x8d08
@..api_idx_0084.l4:
    mov ax, word [bp - 0x0084]       ; 0x8d0a
    sub word [bp - 0x0054], ax       ; 0x8d0e
    push word [bp - 0x0054]          ; 0x8d11
    call ds_app_09f0                 ; 0x8d14
    pop cx                           ; 0x8d17
    mov cx, ax                       ; 0x8d18
    mov ax, word [bp - 0x0084]       ; 0x8d1a
    add cx, ax                       ; 0x8d1e
    mov word [bp - 0x0080], cx       ; 0x8d20
@..api_idx_0084.l5:
    mov ax, word [bp - 0x0080]       ; 0x8d23
    shl ax, 1                        ; 0x8d26
    mov bx, ax                       ; 0x8d28
    add bx, bp                       ; 0x8d2a
    mov ax, word [bx - 0x007c]       ; 0x8d2c
    mov cx, word [bx - 0x007e]       ; 0x8d2f
    sub ax, cx                       ; 0x8d32
    mov word [bp - 0x0052], ax       ; 0x8d34
    push ax                          ; 0x8d37
    mov ax, cx                       ; 0x8d38
    lea cx, word [bp - 0x0050]       ; 0x8d3a
    add ax, cx                       ; 0x8d3d
    push ax                          ; 0x8d3f
    push word [bp + 0x4]             ; 0x8d40
    call aztec_strncpy               ; 0x8d43
    add sp, byte 6                   ; 0x8d46
    mov bx, word [bp + 0x4]          ; 0x8d49
    mov si, word [bp - 0x0052]       ; 0x8d4c
    mov byte [bx + si - 0x0001], 0   ; 0x8d4f
    push word [bp + 0x4]             ; 0x8d53
    lea ax, word [bp - 0x0050]       ; 0x8d56
    push ax                          ; 0x8d59
    call ds_aztec_strcpy             ; 0x8d5a
    add sp, byte 4                   ; 0x8d5d
    mov bx, word [bp - 0x0052]       ; 0x8d60
    add bx, bp                       ; 0x8d63
    mov byte [bx - 0x0051], 0x20     ; 0x8d65
    mov byte [bx - 0x0050], 0        ; 0x8d69
    mov ax, 0x9e44                   ; 0x8d6d
    push ax                          ; 0x8d70
    lea ax, word [bp - 0x0050]       ; 0x8d71
    push ax                          ; 0x8d74
    call api_idx_0058                ; 0x8d75
    add sp, byte 4                   ; 0x8d78
    mov word [bss_9e42], ax          ; 0x8d7b
    push word [bp + 0x4]             ; 0x8d7e
    call api_idx_0004_15             ; 0x8d81
    pop cx                           ; 0x8d84
    ret                              ; 0x8d85
