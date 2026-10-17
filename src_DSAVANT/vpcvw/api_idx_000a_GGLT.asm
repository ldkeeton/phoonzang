; auto-generated
api_idx_000a_GGLT:
    mov ax, 0xfff6                   ; 0x29ef
    call aztec_csav                  ; 0x29f2
    mov byte [bp - 0x000a], 1        ; 0x29f5
    mov byte [bp - 0x0009], 0        ; 0x29f9
    mov ax, 0                        ; 0x29fd
    push ax                          ; 0x2a00
    push ax                          ; 0x2a01
    lea ax, word [bp - 0x000a]       ; 0x2a02
    push ax                          ; 0x2a05
    mov ax, 0                        ; 0x2a06
    push ax                          ; 0x2a09
    mov ax, 0xc7                     ; 0x2a0a
    push ax                          ; 0x2a0d
    mov ax, 0                        ; 0x2a0e
    push ax                          ; 0x2a11
    mov ax, 0x13f                    ; 0x2a12
    push ax                          ; 0x2a15
    mov ax, 0                        ; 0x2a16
    push ax                          ; 0x2a19
    mov ax, 0x73                     ; 0x2a1a
    push ax                          ; 0x2a1d
    mov ax, 0x32                     ; 0x2a1e
    push ax                          ; 0x2a21
    mov ax, 1                        ; 0x2a22
    push ax                          ; 0x2a25
    call thunk_28                    ; 0x2a26
    add sp, byte 0x16                ; 0x2a29
    ret                              ; 0x2a2c
