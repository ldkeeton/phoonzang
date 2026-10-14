; auto-generated
ds_app_0f2a: ; Aztec csav frame=0x0000
    mov ax, 0                        ; 0x0f2a
    call aztec_csav                  ; 0x0f2d
    mov ax, 0xc0                     ; 0x0f30
    push ax                          ; 0x0f33
    push word [bp + 0xa]             ; 0x0f34
    push word [bp + 0x8]             ; 0x0f37
    push word [bp + 0x6]             ; 0x0f3a
    push word [bp + 0x4]             ; 0x0f3d
    call thunk_7                     ; 0x0f40
    add sp, byte 0x0a                ; 0x0f43
    push word [bp + 0xa]             ; 0x0f46
    push word [bp + 0x8]             ; 0x0f49
    push word [bp + 0x6]             ; 0x0f4c
    push word [bp + 0x4]             ; 0x0f4f
    call ds_app_0e03                 ; 0x0f52
    add sp, byte 8                   ; 0x0f55
    mov ax, 0xc5                     ; 0x0f58
    push ax                          ; 0x0f5b
    mov ax, 0xb0                     ; 0x0f5c
    push ax                          ; 0x0f5f
    push word [bp + 0xa]             ; 0x0f60
    push word [bp + 0x8]             ; 0x0f63
    push word [bp + 0x6]             ; 0x0f66
    push word [bp + 0x4]             ; 0x0f69
    call ds_app_0e82                 ; 0x0f6c
    add sp, byte 0x0c                ; 0x0f6f
    cmp word [bp + 0xc], byte 0      ; 0x0f72
    je short @..ds_app_0f2a.l1       ; 0x0f76
    mov ax, 0xb4                     ; 0x0f78
    push ax                          ; 0x0f7b
    mov ax, 0xc5                     ; 0x0f7c
    push ax                          ; 0x0f7f
    mov ax, word [bp + 0xa]          ; 0x0f80
    inc ax                           ; 0x0f83
    inc ax                           ; 0x0f84
    push ax                          ; 0x0f85
    mov ax, word [bp + 0x8]          ; 0x0f86
    inc ax                           ; 0x0f89
    inc ax                           ; 0x0f8a
    push ax                          ; 0x0f8b
    mov ax, word [bp + 0x6]          ; 0x0f8c
    dec ax                           ; 0x0f8f
    dec ax                           ; 0x0f90
    push ax                          ; 0x0f91
    mov ax, word [bp + 0x4]          ; 0x0f92
    dec ax                           ; 0x0f95
    dec ax                           ; 0x0f96
    push ax                          ; 0x0f97
    call ds_app_0e82                 ; 0x0f98
    add sp, byte 0x0c                ; 0x0f9b
@..ds_app_0f2a.l1:
    mov ax, 0x51                     ; 0x0f9e
    push ax                          ; 0x0fa1
    push word [bp + 0x6]             ; 0x0fa2
    push word [bp + 0x4]             ; 0x0fa5
    call thunk_6                     ; 0x0fa8
    add sp, byte 6                   ; 0x0fab
    mov ax, 0xb6                     ; 0x0fae
    push ax                          ; 0x0fb1
    push word [bp + 0x6]             ; 0x0fb2
    push word [bp + 0x8]             ; 0x0fb5
    call thunk_6                     ; 0x0fb8
    add sp, byte 6                   ; 0x0fbb
    mov ax, 0xb6                     ; 0x0fbe
    push ax                          ; 0x0fc1
    push word [bp + 0xa]             ; 0x0fc2
    push word [bp + 0x4]             ; 0x0fc5
    call thunk_6                     ; 0x0fc8
    add sp, byte 6                   ; 0x0fcb
    mov ax, 0xc6                     ; 0x0fce
    push ax                          ; 0x0fd1
    push word [bp + 0xa]             ; 0x0fd2
    push word [bp + 0x8]             ; 0x0fd5
    call thunk_6                     ; 0x0fd8
    add sp, byte 6                   ; 0x0fdb
    ret                              ; 0x0fde
