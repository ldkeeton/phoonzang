; auto-generated
api_idx_004e_PHKR:
    mov ax, 0xffb2                   ; 0x5b74
    call aztec_csav                  ; 0x5b77
    mov ax, word [bp + 0x6]          ; 0x5b7a
    shl ax, 1                        ; 0x5b7d
    mov bx, ax                       ; 0x5b7f
    mov ax, word [bx - 0x6356]       ; 0x5b81
    mov cx, 0x100                    ; 0x5b85
    cwd                              ; 0x5b88
    idiv cx                          ; 0x5b89
    mov word [bp - 0x0004], ax       ; 0x5b8b
    mov word [bp - 0x0006], dx       ; 0x5b8e
    mov ax, 0x248                    ; 0x5b91
    imul word [bp + 0x4]             ; 0x5b94
    push ax                          ; 0x5b97
    mov ax, 0x78                     ; 0x5b98
    imul word [bp - 0x0004]          ; 0x5b9b
    mov cx, ax                       ; 0x5b9e
    pop ax                           ; 0x5ba0
    add ax, cx                       ; 0x5ba1
    push ax                          ; 0x5ba3
    mov ax, 0xc                      ; 0x5ba4
    imul word [bp - 0x0006]          ; 0x5ba7
    mov cx, ax                       ; 0x5baa
    pop ax                           ; 0x5bac
    add ax, cx                       ; 0x5bad
    mov bx, ax                       ; 0x5baf
    mov ax, word [bx + 0x5c34]       ; 0x5bb1
    mov word [bp - 0x0002], ax       ; 0x5bb5
    mov ax, 0                        ; 0x5bb8
    push ax                          ; 0x5bbb
    push word [bp - 0x0002]          ; 0x5bbc
    lea ax, word [bp - 0x004e]       ; 0x5bbf
    push ax                          ; 0x5bc2
    mov ax, 1                        ; 0x5bc3
    push ax                          ; 0x5bc6
    call ds_app_file_MPPM            ; 0x5bc7
    add sp, byte 8                   ; 0x5bca
    push word [bp - 0x0002]          ; 0x5bcd
    call loc_GMVH                    ; 0x5bd0
    pop cx                           ; 0x5bd3
    test ax, ax                      ; 0x5bd4
    je short @..api_idx_004e_PHKR.l1 ; 0x5bd6
    cmp byte [bss_91c6], 0xff        ; 0x5bd8
    je short @..api_idx_004e_PHKR.l2 ; 0x5bdd
@..api_idx_004e_PHKR.l1:
    push word [bp - 0x0002]          ; 0x5bdf
    call loc_GMVH                    ; 0x5be2
    pop cx                           ; 0x5be5
    test ax, ax                      ; 0x5be6
    jne short @..api_idx_004e_PHKR.l3 ; 0x5be8
    mov al, byte [bp - 0x0017]       ; 0x5bea
    sub ah, ah                       ; 0x5bed
    test ax, 2                       ; 0x5bef
    je short @..api_idx_004e_PHKR.l3 ; 0x5bf2
    mov ax, word [bp - 0x0002]       ; 0x5bf4
    cmp ax, word [bss_91ae]          ; 0x5bf7
    je short @..api_idx_004e_PHKR.l3 ; 0x5bfb
@..api_idx_004e_PHKR.l2:
    mov ax, 0x98                     ; 0x5bfd
    push ax                          ; 0x5c00
    mov ax, 0x65                     ; 0x5c01
    push ax                          ; 0x5c04
    mov ax, 0x5dd                    ; 0x5c05
    push ax                          ; 0x5c08
    call api_idx_0054_LVHV           ; 0x5c09
    add sp, byte 6                   ; 0x5c0c
    mov ax, 0                        ; 0x5c0f
    ret                              ; 0x5c12
@..api_idx_004e_PHKR.l3:
    mov ax, 0x248                    ; 0x5c13
    imul word [bp + 0x4]             ; 0x5c16
    push ax                          ; 0x5c19
    mov ax, 0x78                     ; 0x5c1a
    imul word [bp - 0x0004]          ; 0x5c1d
    mov cx, ax                       ; 0x5c20
    pop ax                           ; 0x5c22
    add ax, cx                       ; 0x5c23
    push ax                          ; 0x5c25
    mov ax, 0xc                      ; 0x5c26
    imul word [bp - 0x0006]          ; 0x5c29
    mov cx, ax                       ; 0x5c2c
    pop ax                           ; 0x5c2e
    add ax, cx                       ; 0x5c2f
    mov bx, ax                       ; 0x5c31
    mov al, byte [bx + 0x5c3b]       ; 0x5c33
    sub ah, ah                       ; 0x5c37
    test ax, 1                       ; 0x5c39
    je short @..api_idx_004e_PHKR.l4 ; 0x5c3c
    mov ax, 0x98                     ; 0x5c3e
    push ax                          ; 0x5c41
    mov ax, 0x65                     ; 0x5c42
    push ax                          ; 0x5c45
    mov ax, 0x5dc                    ; 0x5c46
    push ax                          ; 0x5c49
    call api_idx_0054_LVHV           ; 0x5c4a
    add sp, byte 6                   ; 0x5c4d
    mov ax, 0                        ; 0x5c50
    ret                              ; 0x5c53
@..api_idx_004e_PHKR.l4:
    mov ax, 5                        ; 0x5c54
    push ax                          ; 0x5c57
    call ds_app_PUNN                 ; 0x5c58
    pop cx                           ; 0x5c5b
    add ax, strict word 5            ; 0x5c5c
    push ax                          ; 0x5c5f
    mov ax, word [bp - 0x0038]       ; 0x5c60
    mov dx, word [bp - 0x0036]       ; 0x5c63
    mov cx, 0xa                      ; 0x5c66
    mov bx, 0                        ; 0x5c69
    call aztec_ldv                   ; 0x5c6c
    push ax                          ; 0x5c6f
    push dx                          ; 0x5c70
    mov al, byte [bss_91c5]          ; 0x5c71
    sub ah, ah                       ; 0x5c74
    inc ax                           ; 0x5c76
    cwd                              ; 0x5c77
    mov cx, ax                       ; 0x5c78
    mov bx, dx                       ; 0x5c7a
    pop dx                           ; 0x5c7c
    pop ax                           ; 0x5c7d
    call aztec_ldv                   ; 0x5c7e
    push dx                          ; 0x5c81
    push ax                          ; 0x5c82
    push word [bp + 0x4]             ; 0x5c83
    call loc_HOSN                    ; 0x5c86
    add sp, byte 8                   ; 0x5c89
    push word [bp - 0x0002]          ; 0x5c8c
    call loc_GMVH                    ; 0x5c8f
    pop cx                           ; 0x5c92
    test ax, ax                      ; 0x5c93
    je short @..api_idx_004e_PHKR.l5 ; 0x5c95
    mov ax, word [bp - 0x0002]       ; 0x5c97
    add ax, 0xfe70                   ; 0x5c9a
    push ax                          ; 0x5c9d
    mov ax, 0x15                     ; 0x5c9e
    push ax                          ; 0x5ca1
    mov al, byte [bss_91c6]          ; 0x5ca2
    cbw                              ; 0x5ca5
    push ax                          ; 0x5ca6
    call api_idx_0002_QVIM           ; 0x5ca7
    add sp, byte 6                   ; 0x5caa
@..api_idx_004e_PHKR.l5:
    push word [bp - 0x0006]          ; 0x5cad
    push word [bp - 0x0004]          ; 0x5cb0
    push word [bp + 0x4]             ; 0x5cb3
    call ds_app_IPJO                 ; 0x5cb6
    add sp, byte 6                   ; 0x5cb9
    push word [bp + 0x6]             ; 0x5cbc
    call api_idx_0002_MIIL           ; 0x5cbf
    pop cx                           ; 0x5cc2
    mov ax, 0x98                     ; 0x5cc3
    push ax                          ; 0x5cc6
    mov ax, 0x65                     ; 0x5cc7
    push ax                          ; 0x5cca
    mov ax, 0x5e0                    ; 0x5ccb
    push ax                          ; 0x5cce
    call api_idx_0054_LVHV           ; 0x5ccf
    add sp, byte 6                   ; 0x5cd2
    mov ax, 0xc6                     ; 0x5cd5
    push ax                          ; 0x5cd8
    mov ax, 0x109                    ; 0x5cd9
    push ax                          ; 0x5cdc
    mov ax, 0x8e                     ; 0x5cdd
    push ax                          ; 0x5ce0
    mov ax, 0x36                     ; 0x5ce1
    push ax                          ; 0x5ce4
    call gfx_entry_16                ; 0x5ce5
    add sp, byte 8                   ; 0x5ce8
    mov ax, 1                        ; 0x5ceb
    push ax                          ; 0x5cee
    push word [bp + 0x4]             ; 0x5cef
    call ds_app_LUOV                 ; 0x5cf2
    add sp, byte 4                   ; 0x5cf5
    mov ax, 0                        ; 0x5cf8
    push ax                          ; 0x5cfb
    push ax                          ; 0x5cfc
    push word [bp - 0x0002]          ; 0x5cfd
    mov ax, 1                        ; 0x5d00
    push ax                          ; 0x5d03
    push word [bp + 0x4]             ; 0x5d04
    call api_idx_0006_SRQN           ; 0x5d07
    add sp, byte 0x0a                ; 0x5d0a
    ret                              ; 0x5d0d
