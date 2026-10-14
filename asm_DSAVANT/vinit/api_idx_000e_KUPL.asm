; auto-generated
api_idx_000e_KUPL:
    mov ax, 0xfff2                   ; 0x09d3
    call aztec_csav                  ; 0x09d6
    mov al, byte [bp + 0x4]          ; 0x09d9
    mov byte [bp - 0x000e], al       ; 0x09dc
    mov byte [bp - 0x000d], 0        ; 0x09df
    mov ax, word [bp + 0x4]          ; 0x09e3
    shl ax, 1                        ; 0x09e6
    mov bx, ax                       ; 0x09e8
    mov al, byte [bx + 0x7ed4]       ; 0x09ea
    sub ah, ah                       ; 0x09ee
    mov word [bp - 0x0002], ax       ; 0x09f0
    mov bx, word [bp + 0x4]          ; 0x09f3
    mov al, byte [bx + 0x7f1d]       ; 0x09f6
    sub ah, ah                       ; 0x09fa
    mov word [bp - 0x0004], ax       ; 0x09fc
    cmp word [bp + 0x6], byte 0      ; 0x09ff
    je short @..api_idx_000e_KUPL.l1 ; 0x0a03
    mov ax, 0xa0                     ; 0x0a05
    sub ax, word [bp - 0x0002]       ; 0x0a08
    imul word [bp + 0x6]             ; 0x0a0b
    mov cx, 0x64                     ; 0x0a0e
    cwd                              ; 0x0a11
    idiv cx                          ; 0x0a12
    add word [bp - 0x0002], ax       ; 0x0a14
    mov ax, 0x31                     ; 0x0a17
    sub ax, word [bp - 0x0004]       ; 0x0a1a
    imul word [bp + 0x6]             ; 0x0a1d
    cwd                              ; 0x0a20
    idiv cx                          ; 0x0a21
    add word [bp - 0x0004], ax       ; 0x0a23
@..api_idx_000e_KUPL.l1:
    push word [bp + 0x6]             ; 0x0a26
    mov ax, 0                        ; 0x0a29
    push ax                          ; 0x0a2c
    lea ax, word [bp - 0x000e]       ; 0x0a2d
    push ax                          ; 0x0a30
    mov ax, 0                        ; 0x0a31
    push ax                          ; 0x0a34
    mov ax, 0xc7                     ; 0x0a35
    push ax                          ; 0x0a38
    mov ax, 0                        ; 0x0a39
    push ax                          ; 0x0a3c
    mov ax, 0x13f                    ; 0x0a3d
    push ax                          ; 0x0a40
    mov ax, 0                        ; 0x0a41
    push ax                          ; 0x0a44
    push word [bp - 0x0004]          ; 0x0a45
    push word [bp - 0x0002]          ; 0x0a48
    mov ax, 0xf                      ; 0x0a4b
    push ax                          ; 0x0a4e
    call thunk_28                    ; 0x0a4f
    add sp, byte 0x16                ; 0x0a52
    ret                              ; 0x0a55
loc_0a56:
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
    call thunk_7                     ; 0x0a6d
    add sp, byte 0x0a                ; 0x0a70
    mov ax, 0                        ; 0x0a73
    push ax                          ; 0x0a76
    push word [bp + 0x4]             ; 0x0a77
    call api_idx_000e_KUPL           ; 0x0a7a
    add sp, byte 4                   ; 0x0a7d
    cmp word [bp + 0x6], byte 0      ; 0x0a80
    je short @..loc_0a56.l1          ; 0x0a84
    mov ax, 0                        ; 0x0a86
    push ax                          ; 0x0a89
    push word [bp + 0x6]             ; 0x0a8a
    call api_idx_000e_KUPL           ; 0x0a8d
    add sp, byte 4                   ; 0x0a90
@..loc_0a56.l1:
    cmp word [bp + 0x8], byte 0      ; 0x0a93
    je short @..loc_0a56.l2          ; 0x0a97
    mov ax, 0                        ; 0x0a99
    push ax                          ; 0x0a9c
    push word [bp + 0x8]             ; 0x0a9d
    call api_idx_000e_KUPL           ; 0x0aa0
    add sp, byte 4                   ; 0x0aa3
@..loc_0a56.l2:
    mov ax, 0xc7                     ; 0x0aa6
    push ax                          ; 0x0aa9
    mov ax, 0x13f                    ; 0x0aaa
    push ax                          ; 0x0aad
    mov ax, 0                        ; 0x0aae
    push ax                          ; 0x0ab1
    push ax                          ; 0x0ab2
    call thunk_4                     ; 0x0ab3
    add sp, byte 8                   ; 0x0ab6
    cmp word [bp + 0xa], byte 0      ; 0x0ab9
    je short @..loc_0a56.l3          ; 0x0abd
    push word [bp + 0xa]             ; 0x0abf
    call api_idx_0004_JPMO           ; 0x0ac2
    pop cx                           ; 0x0ac5
@..loc_0a56.l3:
    ret                              ; 0x0ac6
