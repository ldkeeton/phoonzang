api_idx_000a_2:
    mov ax, 0xfff6                   ; 0x6b0a
    call ds_aztec_csav               ; 0x6b0d
    mov ax, 0                        ; 0x6b10
    push ax                          ; 0x6b13
    push word [bss_8d10]             ; 0x6b14
    push word [bss_8d0e]             ; 0x6b18
    call ds_loc_3b96                 ; 0x6b1c
    add sp, byte 6                   ; 0x6b1f
    mov byte [bp - 0x000a], 1        ; 0x6b22
    mov byte [bp - 0x0009], 0        ; 0x6b26
    mov ax, 0                        ; 0x6b2a
    push ax                          ; 0x6b2d
    push ax                          ; 0x6b2e
    lea ax, word [bp - 0x000a]       ; 0x6b2f
    push ax                          ; 0x6b32
    mov ax, 0                        ; 0x6b33
    push ax                          ; 0x6b36
    mov ax, 0xc7                     ; 0x6b37
    push ax                          ; 0x6b3a
    mov ax, 0                        ; 0x6b3b
    push ax                          ; 0x6b3e
    mov ax, 0x13f                    ; 0x6b3f
    push ax                          ; 0x6b42
    mov ax, 0                        ; 0x6b43
    push ax                          ; 0x6b46
    mov ax, 0x9a                     ; 0x6b47
    push ax                          ; 0x6b4a
    mov ax, 0x37                     ; 0x6b4b
    push ax                          ; 0x6b4e
    mov ax, 0xe                      ; 0x6b4f
    push ax                          ; 0x6b52
    call ds_loc_4218                 ; 0x6b53
    add sp, byte 0x16                ; 0x6b56
    ret                              ; 0x6b59
loc_6b5a:
    mov ax, 0                        ; 0x6b5a
    call ds_aztec_csav               ; 0x6b5d
    cmp word [bss_9b48], byte 0      ; 0x6b60
    je short @..local.l58            ; 0x6b65
    ret                              ; 0x6b67
@..local.l58:
    mov ax, 0xc6                     ; 0x6b68
    push ax                          ; 0x6b6b
    mov ax, 0x109                    ; 0x6b6c
    push ax                          ; 0x6b6f
    mov ax, 0x92                     ; 0x6b70
    push ax                          ; 0x6b73
    mov ax, 0x37                     ; 0x6b74
    push ax                          ; 0x6b77
    call ds_app_io_0d7a              ; 0x6b78
    add sp, byte 8                   ; 0x6b7b
    mov ax, 0x3c                     ; 0x6b7e
    push ax                          ; 0x6b81
    call ds_app_09f0                 ; 0x6b82
    pop cx                           ; 0x6b85
    cwd                              ; 0x6b86
    les bx, word [dseg_0002]         ; 0x6b87
    mov cx, word [es:bx]             ; 0x6b8b
    mov bx, word [es:bx + 0x2]       ; 0x6b8e
    add ax, cx                       ; 0x6b92
    adc dx, bx                       ; 0x6b94
    add ax, strict word 0x24         ; 0x6b96
    adc dx, byte 0                   ; 0x6b99
    mov word [bss_919c], dx          ; 0x6b9c
    mov word [bss_919a], ax          ; 0x6ba0
    cmp word [bp + 0x4], byte 0      ; 0x6ba3
    je short @..local.l60            ; 0x6ba7
    mov ax, word [bss_905a]          ; 0x6ba9
    cmp byte [bss_598c], 0           ; 0x6bac
    je short @..local.l59            ; 0x6bb1
    shl ax, 1                        ; 0x6bb3
@..local.l59:
    push ax                          ; 0x6bb5
    call api_idx_0006_2              ; 0x6bb6
    pop cx                           ; 0x6bb9
    jmp short @..local.l62           ; 0x6bba
@..local.l60:
    call ds_app_0d36                 ; 0x6bbc
    test ax, ax                      ; 0x6bbf
    jne short @..local.l62           ; 0x6bc1
    call loc_0f1d                    ; 0x6bc3
    test ax, ax                      ; 0x6bc6
    je short @..local.l61            ; 0x6bc8
    mov ax, word [bss_82e8]          ; 0x6bca
    inc ax                           ; 0x6bcd
    mov cx, 2                        ; 0x6bce
    cwd                              ; 0x6bd1
    idiv cx                          ; 0x6bd2
    mov word [bss_82e8], dx          ; 0x6bd4
    cmp word [bss_5b3e], byte 0      ; 0x6bd8
    jne short @..local.l61           ; 0x6bdd
    call loc_676c                    ; 0x6bdf
@..local.l61:
    mov ax, 0                        ; 0x6be2
    push ax                          ; 0x6be5
    call loc_0ea6                    ; 0x6be6
    pop cx                           ; 0x6be9
    jmp short @..local.l60           ; 0x6bea
@..local.l62:
    cmp word [bss_59fa], byte 0      ; 0x6bec
    je short @..local.l63            ; 0x6bf1
    cmp word [bss_9b4a], byte 0      ; 0x6bf3
    jne short @..local.l63           ; 0x6bf8
    mov word [bss_9b48], 1           ; 0x6bfa
@..local.l63:
    call api_idx_000a_2              ; 0x6c00
    mov word [bss_9b4c], 0           ; 0x6c03
    ret                              ; 0x6c09
