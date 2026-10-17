; auto-generated
api_idx_000a_RIKJ:
    mov ax, 0xfff6                   ; 0x6b0a
    call aztec_csav                  ; 0x6b0d
    mov ax, 0                        ; 0x6b10
    push ax                          ; 0x6b13
    push word [bss_8d10]             ; 0x6b14
    push word [bss_8d0e]             ; 0x6b18
    call thunk_13                    ; 0x6b1c
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
    call thunk_28                    ; 0x6b53
    add sp, byte 0x16                ; 0x6b56
    ret                              ; 0x6b59
