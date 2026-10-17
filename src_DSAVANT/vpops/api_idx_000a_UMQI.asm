; auto-generated
api_idx_000a_UMQI:
    mov ax, 0xfff6                   ; 0x1a0d
    call aztec_csav                  ; 0x1a10
    mov byte [bp - 0x000a], 1        ; 0x1a13
    mov byte [bp - 0x0009], 0        ; 0x1a17
    mov ax, 0                        ; 0x1a1b
    push ax                          ; 0x1a1e
    push ax                          ; 0x1a1f
    lea ax, word [bp - 0x000a]       ; 0x1a20
    push ax                          ; 0x1a23
    mov ax, 0                        ; 0x1a24
    push ax                          ; 0x1a27
    mov ax, 0xc7                     ; 0x1a28
    push ax                          ; 0x1a2b
    mov ax, 0                        ; 0x1a2c
    push ax                          ; 0x1a2f
    mov ax, 0x13f                    ; 0x1a30
    push ax                          ; 0x1a33
    mov ax, 0                        ; 0x1a34
    push ax                          ; 0x1a37
    mov ax, 0x73                     ; 0x1a38
    push ax                          ; 0x1a3b
    mov ax, 0x32                     ; 0x1a3c
    push ax                          ; 0x1a3f
    mov ax, 1                        ; 0x1a40
    push ax                          ; 0x1a43
    call thunk_28                    ; 0x1a44
    add sp, byte 0x16                ; 0x1a47
    ret                              ; 0x1a4a
