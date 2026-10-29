; auto-generated
loc_KVVL:
    mov ax, 0                        ; 0x0a56
    call aztec_csav                  ; 0x0a59
    mov ax, 0                        ; 0x0a5c
    push ax                          ; 0x0a5f
    mov ax, 0xc7                     ; 0x0a60
    push ax                          ; 0x0a63
    mov ax, 0x13f                    ; 0x0a64
    push ax                          ; 0x0a67
    mov ax, 0                        ; 0x0a68
    push ax                          ; 0x0a6b
    push ax                          ; 0x0a6c
    call call_fill_area              ; 0x0a6d
    add sp, byte 0xa                 ; 0x0a70
    mov ax, 0                        ; 0x0a73
    push ax                          ; 0x0a76
    push word [bp + 4]               ; 0x0a77
    call api_idx_000e_JRRT           ; 0x0a7a
    add sp, byte 4                   ; 0x0a7d
    cmp word [bp + 6], byte 0        ; 0x0a80
    je short .forward1               ; 0x0a84
    mov ax, 0                        ; 0x0a86
    push ax                          ; 0x0a89
    push word [bp + 6]               ; 0x0a8a
    call api_idx_000e_JRRT           ; 0x0a8d
    add sp, byte 4                   ; 0x0a90
.forward1:
    cmp word [bp + 8], byte 0        ; 0x0a93
    je short .forward2               ; 0x0a97
    mov ax, 0                        ; 0x0a99
    push ax                          ; 0x0a9c
    push word [bp + 8]               ; 0x0a9d
    call api_idx_000e_JRRT           ; 0x0aa0
    add sp, byte 4                   ; 0x0aa3
.forward2:
    mov ax, 0xc7                     ; 0x0aa6
    push ax                          ; 0x0aa9
    mov ax, 0x13f                    ; 0x0aaa
    push ax                          ; 0x0aad
    mov ax, 0                        ; 0x0aae
    push ax                          ; 0x0ab1
    push ax                          ; 0x0ab2
    call call_show_area              ; 0x0ab3
    add sp, byte 8                   ; 0x0ab6
    cmp word [bp + 0xa], byte 0      ; 0x0ab9
    je short .return1                ; 0x0abd
    push word [bp + 0xa]             ; 0x0abf
    call api_idx_0004_OIGN           ; 0x0ac2
    pop cx                           ; 0x0ac5
.return1:
    ret                              ; 0x0ac6
