; auto-generated
loc_HOII:
    mov ax, 0                        ; 0x8b53
    call aztec_csav                  ; 0x8b56
    mov ax, word [bp + 0x6]          ; 0x8b59
    add ax, strict word 6            ; 0x8b5c
    push ax                          ; 0x8b5f
    mov ax, word [bp + 0x4]          ; 0x8b60
    add ax, strict word 0x14         ; 0x8b63
    push ax                          ; 0x8b66
    push word [bp + 0x6]             ; 0x8b67
    push word [bp + 0x4]             ; 0x8b6a
    call ds_app_OPOL                 ; 0x8b6d
    add sp, byte 8                   ; 0x8b70
    mov ax, word [bp + 0x8]          ; 0x8b73
    shl ax, 1                        ; 0x8b76
    shl ax, 1                        ; 0x8b78
    mov bx, ax                       ; 0x8b7a
    push word [word bx + 0x8]        ; 0x8b7c
    mov ax, word [bp + 0x6]          ; 0x8b80
    add ax, strict word 6            ; 0x8b83
    push ax                          ; 0x8b86
    mov ax, word [bp + 0x4]          ; 0x8b87
    add ax, strict word 0x14         ; 0x8b8a
    push ax                          ; 0x8b8d
    push word [bp + 0x6]             ; 0x8b8e
    push word [bp + 0x4]             ; 0x8b91
    call thunk_7                     ; 0x8b94
    add sp, byte 0x0a                ; 0x8b97
    mov ax, word [bp + 0x6]          ; 0x8b9a
    inc ax                           ; 0x8b9d
    push ax                          ; 0x8b9e
    mov ax, word [bp + 0x4]          ; 0x8b9f
    inc ax                           ; 0x8ba2
    inc ax                           ; 0x8ba3
    push ax                          ; 0x8ba4
    call thunk                       ; 0x8ba5
    add sp, byte 4                   ; 0x8ba8
    cmp word [bp + 0xa], byte 0      ; 0x8bab
    jle short @..loc_HOII.l1         ; 0x8baf
    mov ax, word [bp + 0xa]          ; 0x8bb1
    cmp ax, word [bp + 0xc]          ; 0x8bb4
    jg short @..loc_HOII.l1          ; 0x8bb7
    mov ax, 0                        ; 0x8bb9
    push ax                          ; 0x8bbc
    mov ax, 1                        ; 0x8bbd
    push ax                          ; 0x8bc0
    call thunk_3                     ; 0x8bc1
    add sp, byte 4                   ; 0x8bc4
    mov ax, 0                        ; 0x8bc7
    push ax                          ; 0x8bca
    mov ax, 3                        ; 0x8bcb
    push ax                          ; 0x8bce
    push word [bp + 0xa]             ; 0x8bcf
    call ds_app_GUML                 ; 0x8bd2
    add sp, byte 6                   ; 0x8bd5
    jmp short @..loc_HOII.l2         ; 0x8bd8
@..loc_HOII.l1:
    mov ax, 0                        ; 0x8bda
    push ax                          ; 0x8bdd
    push ax                          ; 0x8bde
    call thunk_3                     ; 0x8bdf
    add sp, byte 4                   ; 0x8be2
    mov ax, 0                        ; 0x8be5
    push ax                          ; 0x8be8
    mov ax, 0x9100                   ; 0x8be9
    push ax                          ; 0x8bec
    call ds_string_loc_QRJV          ; 0x8bed
    add sp, byte 4                   ; 0x8bf0
@..loc_HOII.l2:
    ret                              ; 0x8bf3
