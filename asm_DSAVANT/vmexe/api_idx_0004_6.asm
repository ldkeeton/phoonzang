; auto-generated
api_idx_0004_6:
    mov ax, 0xfffc                   ; 0x1b45
    call aztec_csav                  ; 0x1b48
    mov word [bp - 0x0002], 0        ; 0x1b4b
    mov word [bp - 0x0004], 0        ; 0x1b50
    cmp word [bp + 0x4], byte 0      ; 0x1b55
    jle short @..api_idx_0004_6.l1   ; 0x1b59
    mov ax, 0x9098                   ; 0x1b5b
    push ax                          ; 0x1b5e
    mov ax, 7                        ; 0x1b5f
    imul word [bp + 0x4]             ; 0x1b62
    add ax, 0x9b                     ; 0x1b65
    push ax                          ; 0x1b68
    mov ax, 0x13a                    ; 0x1b69
    push ax                          ; 0x1b6c
    mov ax, 0x9c                     ; 0x1b6d
    push ax                          ; 0x1b70
    mov ax, 8                        ; 0x1b71
    push ax                          ; 0x1b74
    call ds_app_file_14ca            ; 0x1b75
    add sp, byte 0x0a                ; 0x1b78
    mov word [bp - 0x0002], ax       ; 0x1b7b
@..api_idx_0004_6.l1:
    cmp word [bp + 0x6], byte 4      ; 0x1b7e
    jge short @..api_idx_0004_6.l2   ; 0x1b82
    mov ax, 0x909f                   ; 0x1b84
    push ax                          ; 0x1b87
    mov ax, 0xc4                     ; 0x1b88
    push ax                          ; 0x1b8b
    mov ax, 0x13a                    ; 0x1b8c
    push ax                          ; 0x1b8f
    mov ax, 7                        ; 0x1b90
    imul word [bp + 0x6]             ; 0x1b93
    add ax, 0xa2                     ; 0x1b96
    push ax                          ; 0x1b99
    mov ax, 8                        ; 0x1b9a
    push ax                          ; 0x1b9d
    call ds_app_file_14ca            ; 0x1b9e
    add sp, byte 0x0a                ; 0x1ba1
    mov word [bp - 0x0004], ax       ; 0x1ba4
@..api_idx_0004_6.l2:
    mov ax, 0                        ; 0x1ba7
    push ax                          ; 0x1baa
    call api_idx_000a_2              ; 0x1bab
    pop cx                           ; 0x1bae
    cmp word [bp - 0x0004], byte 0   ; 0x1baf
    je short @..api_idx_0004_6.l3    ; 0x1bb3
    mov ax, 1                        ; 0x1bb5
    push ax                          ; 0x1bb8
    push word [bp - 0x0004]          ; 0x1bb9
    call ds_app_file_16a0            ; 0x1bbc
    add sp, byte 4                   ; 0x1bbf
@..api_idx_0004_6.l3:
    cmp word [bp - 0x0002], byte 0   ; 0x1bc2
    je short @..api_idx_0004_6.l4    ; 0x1bc6
    mov ax, 1                        ; 0x1bc8
    push ax                          ; 0x1bcb
    push word [bp - 0x0002]          ; 0x1bcc
    call ds_app_file_16a0            ; 0x1bcf
    add sp, byte 4                   ; 0x1bd2
@..api_idx_0004_6.l4:
    mov ax, 0xc2                     ; 0x1bd5
    push ax                          ; 0x1bd8
    mov ax, 0x13a                    ; 0x1bd9
    push ax                          ; 0x1bdc
    mov ax, 0x93                     ; 0x1bdd
    push ax                          ; 0x1be0
    mov ax, 8                        ; 0x1be1
    push ax                          ; 0x1be4
    call thunk_4                     ; 0x1be5
    add sp, byte 8                   ; 0x1be8
    mov ax, 2                        ; 0x1beb
    push ax                          ; 0x1bee
    call api_idx_0004_5              ; 0x1bef
    pop cx                           ; 0x1bf2
    ret                              ; 0x1bf3
loc_1bf4:
    mov ax, 0                        ; 0x1bf4
    call aztec_csav                  ; 0x1bf7
    mov ax, 0x248                    ; 0x1bfa
    imul word [bp + 0x4]             ; 0x1bfd
    add ax, word [bp + 0x6]          ; 0x1c00
    mov bx, ax                       ; 0x1c03
    cmp byte [bx + 0x5d6c], 0x64     ; 0x1c05
    jae short @..loc_1bf4.l1         ; 0x1c0a
    mov al, byte [bx + 0x5d6c]       ; 0x1c0c
    sub ah, ah                       ; 0x1c10
    push ax                          ; 0x1c12
    call ds_app_09f0                 ; 0x1c13
    pop cx                           ; 0x1c16
    push ax                          ; 0x1c17
    mov ax, 0x248                    ; 0x1c18
    imul word [bp + 0x4]             ; 0x1c1b
    mov bx, ax                       ; 0x1c1e
    mov ax, word [bx + 0x5c18]       ; 0x1c20
    imul word [bp + 0x8]             ; 0x1c24
    mov cx, ax                       ; 0x1c27
    pop ax                           ; 0x1c29
    sub ax, cx                       ; 0x1c2a
    jg short @..loc_1bf4.l1          ; 0x1c2c
    add bx, word [bp + 0x6]          ; 0x1c2e
    inc byte [bx + 0x5d6c]           ; 0x1c31
@..loc_1bf4.l1:
    ret                              ; 0x1c35
loc_1c36:
    mov ax, 0                        ; 0x1c36
    call aztec_csav                  ; 0x1c39
    mov ax, 6                        ; 0x1c3c
    imul word [bp + 0x4]             ; 0x1c3f
    mov bx, ax                       ; 0x1c42
    mov al, byte [bx + 0x621]        ; 0x1c44
    sub ah, ah                       ; 0x1c48
    mov cx, 3                        ; 0x1c4a
    imul cx                          ; 0x1c4d
    push ax                          ; 0x1c4f
    mov ax, word [bp + 0x6]          ; 0x1c50
    imul cx                          ; 0x1c53
    mov cx, ax                       ; 0x1c55
    pop ax                           ; 0x1c57
    add ax, cx                       ; 0x1c58
    add ax, strict word 0xfffa       ; 0x1c5a
    ret                              ; 0x1c5d
