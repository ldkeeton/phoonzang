api_idx_0084:
    mov ax, 0xff7c                   ; 0x3b66
    call ds_dispatch_f40b            ; 0x3b69
    mov bx, word [bp + 0x4]          ; 0x3b6c
    cmp byte [bx], 0x21              ; 0x3b6f
    jne short @..api_idx_0084.l1     ; 0x3b72
    inc word [bp + 0x4]              ; 0x3b74
    mov ax, 0x956a                   ; 0x3b77
    push ax                          ; 0x3b7a
    call api_idx_0004_6              ; 0x3b7b
    pop cx                           ; 0x3b7e
    jmp short @..api_idx_0084.l2     ; 0x3b7f
@..api_idx_0084.l1:
    mov bx, word [bp + 0x4]          ; 0x3b81
    cmp byte [bx], 0x40              ; 0x3b84
    jne short @..api_idx_0084.l2     ; 0x3b87
    inc word [bp + 0x4]              ; 0x3b89
    mov ax, 0x956a                   ; 0x3b8c
    push ax                          ; 0x3b8f
    call api_idx_0004_6              ; 0x3b90
    pop cx                           ; 0x3b93
    call loc_3a6a                    ; 0x3b94
@..api_idx_0084.l2:
    cmp byte [dseg_956a], 0          ; 0x3b97
    je short @..api_idx_0084.l3      ; 0x3b9c
    mov ax, 0x956a                   ; 0x3b9e
    push ax                          ; 0x3ba1
    lea ax, word [bp - 0x0084]       ; 0x3ba2
    push ax                          ; 0x3ba6
    call ds_dispatch_f364            ; 0x3ba7
    add sp, byte 4                   ; 0x3baa
    mov ax, 0x90b1                   ; 0x3bad
    push ax                          ; 0x3bb0
    lea ax, word [bp - 0x0084]       ; 0x3bb1
    push ax                          ; 0x3bb5
    call ds_dispatch_f32d            ; 0x3bb6
    add sp, byte 4                   ; 0x3bb9
    push word [bp + 0x4]             ; 0x3bbc
    lea ax, word [bp - 0x0084]       ; 0x3bbf
    push ax                          ; 0x3bc3
    call ds_dispatch_f32d            ; 0x3bc4
    add sp, byte 4                   ; 0x3bc7
    jmp short @..api_idx_0084.l4     ; 0x3bca
@..api_idx_0084.l3:
    push word [bp + 0x4]             ; 0x3bcc
    lea ax, word [bp - 0x0084]       ; 0x3bcf
    push ax                          ; 0x3bd3
    call ds_dispatch_f364            ; 0x3bd4
    add sp, byte 4                   ; 0x3bd7
@..api_idx_0084.l4:
    mov ax, 2                        ; 0x3bda
    push ax                          ; 0x3bdd
    lea ax, word [bp - 0x0084]       ; 0x3bde
    push ax                          ; 0x3be2
    call ds_dispatch_e883            ; 0x3be3
    add sp, byte 4                   ; 0x3be6
    mov word [bp - 0x0002], ax       ; 0x3be9
    cmp ax, 0xa8                     ; 0x3bec
    jle short @..api_idx_0084.l5     ; 0x3bef
    mov ax, 0x956a                   ; 0x3bf1
    push ax                          ; 0x3bf4
    call api_idx_0004_6              ; 0x3bf5
    pop cx                           ; 0x3bf8
    push word [bp + 0x4]             ; 0x3bf9
    mov ax, 0x956a                   ; 0x3bfc
    push ax                          ; 0x3bff
    call ds_dispatch_f364            ; 0x3c00
    add sp, byte 4                   ; 0x3c03
    jmp short @..api_idx_0084.l6     ; 0x3c06
@..api_idx_0084.l5:
    lea ax, word [bp - 0x0084]       ; 0x3c08
    push ax                          ; 0x3c0c
    mov ax, 0x956a                   ; 0x3c0d
    push ax                          ; 0x3c10
    call ds_dispatch_f364            ; 0x3c11
    add sp, byte 4                   ; 0x3c14
@..api_idx_0084.l6:
    ret                              ; 0x3c17
