; auto-generated
api_idx_0084_VMPP:
    mov ax, 0xff7c                   ; 0x8c72
    call aztec_csav                  ; 0x8c75
    lea ax, word [bp - 0x50]         ; 0x8c78
    push ax                          ; 0x8c7b
    push word [bss_91a8]             ; 0x8c7c
    call load_message_string         ; 0x8c80
    add sp, byte 4                   ; 0x8c83
    mov al, byte [bp - 0x50]         ; 0x8c86
    sub ah, ah                       ; 0x8c89
    mov word [bp - 0x82], ax         ; 0x8c8b
    mov al, byte [bp - 0x4f]         ; 0x8c8f
    sub ah, ah                       ; 0x8c92
    dec ax                           ; 0x8c94
    mov word [bp - 0x84], ax         ; 0x8c95
    mov word [bp - 0x54], 0          ; 0x8c99
    mov word [bp - 0x56], 2          ; 0x8c9e
.back1:
    mov ax, 0x2f                     ; 0x8ca3
    push ax                          ; 0x8ca6
    mov ax, word [bp - 0x56]         ; 0x8ca7
    lea cx, word [bp - 0x50]         ; 0x8caa
    add ax, cx                       ; 0x8cad
    push ax                          ; 0x8caf
    call strpos                      ; 0x8cb0
    add sp, byte 4                   ; 0x8cb3
    mov word [bp - 0x52], ax         ; 0x8cb6
    cmp ax, strict word 0xffff       ; 0x8cb9
    je short .forward1               ; 0x8cbc
    mov ax, word [bp - 0x56]         ; 0x8cbe
    mov cx, word [bp - 0x54]         ; 0x8cc1
    shl cx, 1                        ; 0x8cc4
    mov bx, cx                       ; 0x8cc6
    add bx, bp                       ; 0x8cc8
    mov word [bx - 0x7e], ax         ; 0x8cca
    add ax, word [bp - 0x52]         ; 0x8ccd
    inc ax                           ; 0x8cd0
    mov word [bp - 0x56], ax         ; 0x8cd1
    inc word [bp - 0x54]             ; 0x8cd4
    jmp short .back1                 ; 0x8cd7
.forward1:
    mov ax, word [bp - 0x56]         ; 0x8cd9
    mov cx, word [bp - 0x54]         ; 0x8cdc
    shl cx, 1                        ; 0x8cdf
    mov bx, cx                       ; 0x8ce1
    add bx, bp                       ; 0x8ce3
    mov word [bx - 0x7e], ax         ; 0x8ce5
    cmp word [bp + 6], byte 0        ; 0x8ce8
    jne short .forward3              ; 0x8cec
    mov ax, word [bp - 0x54]         ; 0x8cee
    cmp ax, word [bp - 0x82]         ; 0x8cf1
    jle short .forward2              ; 0x8cf5
    mov ax, word [bp - 0x82]         ; 0x8cf7
    mov word [bp - 0x54], ax         ; 0x8cfb
.forward2:
    push word [bp - 0x54]            ; 0x8cfe
    call random_below                ; 0x8d01
    pop cx                           ; 0x8d04
    mov word [bp - 0x80], ax         ; 0x8d05
    jmp short .forward4              ; 0x8d08
.forward3:
    mov ax, word [bp - 0x84]         ; 0x8d0a
    sub word [bp - 0x54], ax         ; 0x8d0e
    push word [bp - 0x54]            ; 0x8d11
    call random_below                ; 0x8d14
    pop cx                           ; 0x8d17
    mov cx, ax                       ; 0x8d18
    mov ax, word [bp - 0x84]         ; 0x8d1a
    add cx, ax                       ; 0x8d1e
    mov word [bp - 0x80], cx         ; 0x8d20
.forward4:
    mov ax, word [bp - 0x80]         ; 0x8d23
    shl ax, 1                        ; 0x8d26
    mov bx, ax                       ; 0x8d28
    add bx, bp                       ; 0x8d2a
    mov ax, word [bx - 0x7c]         ; 0x8d2c
    mov cx, word [bx - 0x7e]         ; 0x8d2f
    sub ax, cx                       ; 0x8d32
    mov word [bp - 0x52], ax         ; 0x8d34
    push ax                          ; 0x8d37
    mov ax, cx                       ; 0x8d38
    lea cx, word [bp - 0x50]         ; 0x8d3a
    add ax, cx                       ; 0x8d3d
    push ax                          ; 0x8d3f
    push word [bp + 4]               ; 0x8d40
    call aztec_strncpy               ; 0x8d43
    add sp, byte 6                   ; 0x8d46
    mov bx, word [bp + 4]            ; 0x8d49
    mov si, word [bp - 0x52]         ; 0x8d4c
    mov byte [bx + si - 1], 0        ; 0x8d4f
    push word [bp + 4]               ; 0x8d53
    lea ax, word [bp - 0x50]         ; 0x8d56
    push ax                          ; 0x8d59
    call aztec_strcpy                ; 0x8d5a
    add sp, byte 4                   ; 0x8d5d
    mov bx, word [bp - 0x52]         ; 0x8d60
    add bx, bp                       ; 0x8d63
    mov byte [bx - 0x51], 0x20       ; 0x8d65
    mov byte [bx - 0x50], 0          ; 0x8d69
    mov ax, bss_9e44                 ; 0x8d6d
    push ax                          ; 0x8d70
    lea ax, word [bp - 0x50]         ; 0x8d71
    push ax                          ; 0x8d74
    call api_idx_0058_PMKH           ; 0x8d75
    add sp, byte 4                   ; 0x8d78
    mov word [bss_9e42], ax          ; 0x8d7b
    push word [bp + 4]               ; 0x8d7e
    call titlecase_string            ; 0x8d81
    pop cx                           ; 0x8d84
    ret                              ; 0x8d85
