; auto-generated
loc_RIRS:
    mov ax, 0                        ; 0x0dc0
    call aztec_csav                  ; 0x0dc3
    push word [bp + 0xc]             ; 0x0dc6
    mov ax, word [bp + 0x6]          ; 0x0dc9
    dec ax                           ; 0x0dcc
    push ax                          ; 0x0dcd
    mov ax, word [bp + 0x8]          ; 0x0dce
    inc ax                           ; 0x0dd1
    push ax                          ; 0x0dd2
    mov ax, word [bp + 0x6]          ; 0x0dd3
    dec ax                           ; 0x0dd6
    push ax                          ; 0x0dd7
    mov ax, word [bp + 0x4]          ; 0x0dd8
    dec ax                           ; 0x0ddb
    push ax                          ; 0x0ddc
    call thunk_7                     ; 0x0ddd
    add sp, byte 0x0a                ; 0x0de0
    push word [bp + 0xc]             ; 0x0de3
    mov ax, word [bp + 0xa]          ; 0x0de6
    inc ax                           ; 0x0de9
    push ax                          ; 0x0dea
    mov ax, word [bp + 0x8]          ; 0x0deb
    inc ax                           ; 0x0dee
    push ax                          ; 0x0def
    mov ax, word [bp + 0x6]          ; 0x0df0
    dec ax                           ; 0x0df3
    push ax                          ; 0x0df4
    mov ax, word [bp + 0x8]          ; 0x0df5
    inc ax                           ; 0x0df8
    push ax                          ; 0x0df9
    call thunk_7                     ; 0x0dfa
    add sp, byte 0x0a                ; 0x0dfd
    push word [bp + 0xc]             ; 0x0e00
    mov ax, word [bp + 0xa]          ; 0x0e03
    inc ax                           ; 0x0e06
    push ax                          ; 0x0e07
    mov ax, word [bp + 0x8]          ; 0x0e08
    inc ax                           ; 0x0e0b
    push ax                          ; 0x0e0c
    mov ax, word [bp + 0xa]          ; 0x0e0d
    inc ax                           ; 0x0e10
    push ax                          ; 0x0e11
    mov ax, word [bp + 0x4]          ; 0x0e12
    dec ax                           ; 0x0e15
    push ax                          ; 0x0e16
    call thunk_7                     ; 0x0e17
    add sp, byte 0x0a                ; 0x0e1a
    push word [bp + 0xc]             ; 0x0e1d
    mov ax, word [bp + 0xa]          ; 0x0e20
    inc ax                           ; 0x0e23
    push ax                          ; 0x0e24
    mov ax, word [bp + 0x4]          ; 0x0e25
    dec ax                           ; 0x0e28
    push ax                          ; 0x0e29
    mov ax, word [bp + 0x6]          ; 0x0e2a
    dec ax                           ; 0x0e2d
    push ax                          ; 0x0e2e
    mov ax, word [bp + 0x4]          ; 0x0e2f
    dec ax                           ; 0x0e32
    push ax                          ; 0x0e33
    call thunk_7                     ; 0x0e34
    add sp, byte 0x0a                ; 0x0e37
    ret                              ; 0x0e3a
