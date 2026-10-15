; auto-generated
string_loc_PKGM:
    mov word [bss_95a6], 0           ; 0x6c08
    mov word [bss_830a], 0x17        ; 0x6c0e
    jmp short loc_GSSJ               ; 0x6c14
jumptable_6c16:
    dw loc_MKOO - IMAGE_BASE + 0x5055          ; 0x6c16
    dw loc_MNPQ - IMAGE_BASE + 0x5055          ; 0x6c18
    dw loc_MKOO - IMAGE_BASE + 0x5055          ; 0x6c1a
    dw loc_UGJT - IMAGE_BASE + 0x5055          ; 0x6c1c
    dw loc_UGJT - IMAGE_BASE + 0x5055          ; 0x6c1e
    dw loc_UGJT - IMAGE_BASE + 0x5055          ; 0x6c20
    dw loc_UGJT - IMAGE_BASE + 0x5055          ; 0x6c22
    dw loc_RPTH - IMAGE_BASE + 0x5055          ; 0x6c24
    dw string_loc_TOQM - IMAGE_BASE + 0x5055   ; 0x6c26
    dw string_loc_PKGM - IMAGE_BASE + 0x5055   ; 0x6c28
loc_LPIM:
    cmp ax, strict word 0xa          ; 0x6c2a
    jae short loc_GSSJ               ; 0x6c2d
    xchg bx, ax                      ; 0x6c2f
    shl bx, 1                        ; 0x6c30
    jmp [cs:bx - 0x43a3]             ; 0x6c32
loc_GSSJ:
    cmp word [bp - 0x000c], byte 0   ; 0x6c37
    jl short loc_TMNU                ; 0x6c3b
    mov ax, word [bss_69c8]          ; 0x6c3d
    dec ax                           ; 0x6c40
    cmp ax, word [bp - 0x000c]       ; 0x6c41
    jl short loc_TMNU                ; 0x6c44
    mov ax, 4                        ; 0x6c46
    push ax                          ; 0x6c49
    call ds_app_GGUI                 ; 0x6c4a
    pop cx                           ; 0x6c4d
    test ax, ax                      ; 0x6c4e
    jne short loc_IIVM               ; 0x6c50
loc_TMNU:
    push word [bss_69c8]             ; 0x6c52
    call ds_app_GGUI                 ; 0x6c56
    pop cx                           ; 0x6c59
    mov word [bp - 0x000c], ax       ; 0x6c5a
loc_IIVM:
    mov ax, 0x248                    ; 0x6c5d
    imul word [bp - 0x000c]          ; 0x6c60
    add ax, word [bss_9136]          ; 0x6c63
    mov bx, ax                       ; 0x6c67
    mov al, byte [bx + 0x5db2]       ; 0x6c69
    cbw                              ; 0x6c6d
    push ax                          ; 0x6c6e
    mov ax, 0x248                    ; 0x6c6f
    imul word [bp - 0x000c]          ; 0x6c72
    mov bx, ax                       ; 0x6c75
    mov al, byte [bx + 0x5d6a]       ; 0x6c77
    sub ah, ah                       ; 0x6c7b
    mov cx, ax                       ; 0x6c7d
    pop ax                           ; 0x6c7f
    add ax, cx                       ; 0x6c80
    add ax, word [bss_964e]          ; 0x6c82
    mov word [bp - 0x000a], ax       ; 0x6c86
    mov al, byte [bss_91c7]          ; 0x6c89
    sub ah, ah                       ; 0x6c8c
    mov bx, ax                       ; 0x6c8e
    mov al, byte [bx - 0x7622]       ; 0x6c90
    cbw                              ; 0x6c94
    add ax, word [bss_964e]          ; 0x6c95
    mov word [bp - 0x0002], ax       ; 0x6c99
    cmp word [bss_830a], byte 0x0a   ; 0x6c9c
    je short loc_TRPG                ; 0x6ca1
    cmp ax, strict word 0xfff6       ; 0x6ca3
    jl short loc_GPGU                ; 0x6ca6
    cmp word [bp - 0x000a], byte 0xf6 ; 0x6ca8
    jge short loc_TRPG               ; 0x6cac
loc_GPGU:
    mov ax, 0x64                     ; 0x6cae
    push ax                          ; 0x6cb1
    call ds_app_GGUI                 ; 0x6cb2
    pop cx                           ; 0x6cb5
    add ax, strict word 0xff9c       ; 0x6cb6
    mov word [bp - 0x0008], ax       ; 0x6cb9
    cmp ax, word [bp - 0x0002]       ; 0x6cbc
    jl short loc_GQKI                ; 0x6cbf
    cmp ax, word [bp - 0x000a]       ; 0x6cc1
    jge short loc_TRPG               ; 0x6cc4
loc_GQKI:
    mov ax, 2                        ; 0x6cc6
    push ax                          ; 0x6cc9
    call ds_app_GGUI                 ; 0x6cca
    pop cx                           ; 0x6ccd
    cmp ax, strict word 1            ; 0x6cce
    jne short loc_NUTQ               ; 0x6cd1
    mov ax, 1                        ; 0x6cd3
    push ax                          ; 0x6cd6
    call loc_PPOM                    ; 0x6cd7
    pop cx                           ; 0x6cda
    mov word [bp - 0x0006], 8        ; 0x6cdb
    jmp short loc_TRPG               ; 0x6ce0
loc_NUTQ:
    cmp word [bss_830a], byte 0x17   ; 0x6ce2
    je short loc_TRPG                ; 0x6ce7
    mov ax, 0x55                     ; 0x6ce9
    push ax                          ; 0x6cec
    mov ax, 0                        ; 0x6ced
    push ax                          ; 0x6cf0
    mov ax, 1                        ; 0x6cf1
    push ax                          ; 0x6cf4
    mov ax, 0x606                    ; 0x6cf5
    push ax                          ; 0x6cf8
    call api_idx_0050_OJIT           ; 0x6cf9
    add sp, byte 8                   ; 0x6cfc
    mov word [bss_95a6], 1           ; 0x6cff
    mov word [bp - 0x0006], 8        ; 0x6d05
loc_TRPG:
    cmp word [bp - 0x0006], byte 8   ; 0x6d0a
    je short loc_JGNQ                ; 0x6d0e
    cmp word [bp - 0x0006], byte 9   ; 0x6d10
    je short loc_JGNQ                ; 0x6d14
    jmp near loc_SVHO                ; 0x6d16
loc_JGNQ:
    cmp word [bss_9d62], byte 1      ; 0x6d19
    jne short loc_RQHM               ; 0x6d1e
    mov ax, 5                        ; 0x6d20
    push ax                          ; 0x6d23
    call ds_app_GGUI                 ; 0x6d24
    pop cx                           ; 0x6d27
    mov cx, ax                       ; 0x6d28
    add ax, strict word 5            ; 0x6d2a
    mov cx, ax                       ; 0x6d2d
    mov ax, 0                        ; 0x6d2f
    sub ax, cx                       ; 0x6d32
    push ax                          ; 0x6d34
    mov ax, 0                        ; 0x6d35
    push ax                          ; 0x6d38
    push ax                          ; 0x6d39
    call loc_MQOK                    ; 0x6d3a
    add sp, byte 6                   ; 0x6d3d
loc_RQHM:
    cmp word [bss_830a], byte 0x0a   ; 0x6d40
    jne short loc_OOOS               ; 0x6d45
    mov ax, 0                        ; 0x6d47
    push ax                          ; 0x6d4a
    push ax                          ; 0x6d4b
    push ax                          ; 0x6d4c
    mov ax, 6                        ; 0x6d4d
    push ax                          ; 0x6d50
    mov ax, 0                        ; 0x6d51
    push ax                          ; 0x6d54
    call api_idx_0006_VKIT           ; 0x6d55
    add sp, byte 0x0a                ; 0x6d58
    jmp short loc_SKOG               ; 0x6d5b
loc_OOOS:
    cmp word [bss_830a], byte 0x17   ; 0x6d5d
    je short loc_SKOG                ; 0x6d62
    mov ax, 0                        ; 0x6d64
    push ax                          ; 0x6d67
    push ax                          ; 0x6d68
    push ax                          ; 0x6d69
    mov ax, 7                        ; 0x6d6a
    push ax                          ; 0x6d6d
    mov ax, 0                        ; 0x6d6e
    push ax                          ; 0x6d71
    call api_idx_0006_VKIT           ; 0x6d72
    add sp, byte 0x0a                ; 0x6d75
loc_SKOG:
    cmp word [bss_95a6], byte 1      ; 0x6d78
    jne short loc_NUGN_6d9c          ; 0x6d7d
    mov word [bss_93dc], 1           ; 0x6d7f
    mov ax, 0                        ; 0x6d85
    push ax                          ; 0x6d88
    mov ax, 1                        ; 0x6d89
    push ax                          ; 0x6d8c
    call api_idx_005e_USKO           ; 0x6d8d
    add sp, byte 4                   ; 0x6d90
    mov word [bss_843a], 0           ; 0x6d93
    call loc_UHKR                    ; 0x6d99
loc_NUGN_6d9c:
    ret                              ; 0x6d9c
