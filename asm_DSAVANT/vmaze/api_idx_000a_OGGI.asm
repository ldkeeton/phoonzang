; auto-generated
api_idx_000a_OGGI:
    mov ax, 0xfff6                   ; 0x8c47
    call aztec_csav                  ; 0x8c4a
    mov ax, word [bss_8f3e]          ; 0x8c4d
    mov cx, 6                        ; 0x8c50
    shl ax, cl                       ; 0x8c53
    mov cx, word [bss_8f40]          ; 0x8c55
    shl cx, 1                        ; 0x8c59
    shl cx, 1                        ; 0x8c5b
    shl cx, 1                        ; 0x8c5d
    add ax, cx                       ; 0x8c5f
    add ax, word [bss_8f42]          ; 0x8c61
    mov word [bp - 0x0002], ax       ; 0x8c65
    lea ax, word [bp - 0x0008]       ; 0x8c68
    push ax                          ; 0x8c6b
    lea ax, word [bp - 0x0006]       ; 0x8c6c
    push ax                          ; 0x8c6f
    push word [bp - 0x0002]          ; 0x8c70
    call loc_2f55                    ; 0x8c73
    add sp, byte 6                   ; 0x8c76
    mov word [bp - 0x000a], 0        ; 0x8c79
    mov ax, word [bp - 0x0006]       ; 0x8c7e
    cmp ax, strict word 5            ; 0x8c81
    je short @..api_idx_000a_OGGI.l1 ; 0x8c84
    cmp ax, strict word 0xa          ; 0x8c86
    je short @..api_idx_000a_OGGI.l1 ; 0x8c89
    cmp ax, strict word 0xb          ; 0x8c8b
    jne short @..api_idx_000a_OGGI.l3 ; 0x8c8e
@..api_idx_000a_OGGI.l1:
    mov ax, word [bp - 0x0008]       ; 0x8c90
    cmp ax, word [bss_82ee]          ; 0x8c93
    jne short @..api_idx_000a_OGGI.l3 ; 0x8c97
    cmp word [bp + 0x4], byte 0      ; 0x8c99
    je short @..api_idx_000a_OGGI.l2 ; 0x8c9d
    mov word [bp - 0x000a], 2        ; 0x8c9f
@..api_idx_000a_OGGI.l2:
    jmp short @..api_idx_000a_OGGI.l4 ; 0x8ca4
@..api_idx_000a_OGGI.l3:
    cmp word [bp + 0x4], byte 0      ; 0x8ca6
    je short @..api_idx_000a_OGGI.l4 ; 0x8caa
    mov word [bp - 0x000a], 1        ; 0x8cac
    mov ax, 0x7fb                    ; 0x8cb1
    push ax                          ; 0x8cb4
    call api_idx_0050_RIIV           ; 0x8cb5
    pop cx                           ; 0x8cb8
    push word [bss_905a]             ; 0x8cb9
    call api_idx_0006_KLOT           ; 0x8cbd
    pop cx                           ; 0x8cc0
@..api_idx_000a_OGGI.l4:
    mov ax, 0x98                     ; 0x8cc1
    push ax                          ; 0x8cc4
    mov ax, 0x13f                    ; 0x8cc5
    push ax                          ; 0x8cc8
    mov ax, 0x92                     ; 0x8cc9
    push ax                          ; 0x8ccc
    mov ax, 0                        ; 0x8ccd
    push ax                          ; 0x8cd0
    call thunk_4                     ; 0x8cd1
    add sp, byte 8                   ; 0x8cd4
    mov bx, word [bss_0e12]          ; 0x8cd7
    mov si, word [bss_8f3e]          ; 0x8cdb
    mov al, byte [bx + si + 0xb40]   ; 0x8cdf
    sub ah, ah                       ; 0x8ce3
    mov word [bp - 0x0004], ax       ; 0x8ce5
@..api_idx_000a_OGGI.l5:
    push word [bp - 0x0004]          ; 0x8ce8
    push word [bss_8f3e]             ; 0x8ceb
    push word [bss_8f40]             ; 0x8cef
    push word [bss_8f42]             ; 0x8cf3
    call api_idx_0002_IVNS           ; 0x8cf7
    add sp, byte 8                   ; 0x8cfa
    mov word [bp - 0x0004], ax       ; 0x8cfd
    cmp ax, strict word 0xffff       ; 0x8d00
    jne short @..api_idx_000a_OGGI.l6 ; 0x8d03
    jmp near @..api_idx_000a_OGGI.l10 ; 0x8d05
@..api_idx_000a_OGGI.l6:
    mov bx, word [bss_0e12]          ; 0x8d08
    mov si, ax                       ; 0x8d0c
    cmp byte [bx + si + 0x5a0], 7    ; 0x8d0e
    jne short @..api_idx_000a_OGGI.l7 ; 0x8d13
    mov ax, 2                        ; 0x8d15
    push ax                          ; 0x8d18
    mov ax, word [bss_82ee]          ; 0x8d19
    shl ax, 1                        ; 0x8d1c
    add ax, strict word 8            ; 0x8d1e
    push ax                          ; 0x8d21
    shl si, 1                        ; 0x8d22
    push word [bx + si + 0x3c0]      ; 0x8d24
    call ds_dos_con_loc_RGTO         ; 0x8d28
    add sp, byte 6                   ; 0x8d2b
    cmp ax, strict word 2            ; 0x8d2e
    jne short @..api_idx_000a_OGGI.l7 ; 0x8d31
    push word [bp - 0x0004]          ; 0x8d33
    call api_idx_0002_RGKN           ; 0x8d36
    pop cx                           ; 0x8d39
    ret                              ; 0x8d3a
@..api_idx_000a_OGGI.l7:
    mov bx, word [bss_0e12]          ; 0x8d3b
    mov si, word [bp - 0x0004]       ; 0x8d3f
    cmp byte [bx + si + 0x5a0], 8    ; 0x8d42
    jne short @..api_idx_000a_OGGI.l8 ; 0x8d47
    push si                          ; 0x8d49
    call api_idx_0006_RPNQ           ; 0x8d4a
    pop cx                           ; 0x8d4d
    cmp ax, strict word 1            ; 0x8d4e
    jne short @..api_idx_000a_OGGI.l8 ; 0x8d51
    ret                              ; 0x8d53
@..api_idx_000a_OGGI.l8:
    mov bx, word [bss_0e12]          ; 0x8d54
    mov si, word [bp - 0x0004]       ; 0x8d58
    cmp byte [bx + si + 0x5a0], 0x19 ; 0x8d5b
    jne short @..api_idx_000a_OGGI.l9 ; 0x8d60
    mov al, byte [bx + si + 0xa50]   ; 0x8d62
    sub ah, ah                       ; 0x8d66
    mov word [bss_8f24], ax          ; 0x8d68
    cmp ax, word [bss_82ee]          ; 0x8d6b
    jne short @..api_idx_000a_OGGI.l9 ; 0x8d6f
    mov word [bss_830a], 0x1b        ; 0x8d71
    mov word [bss_8d12], si          ; 0x8d77
    ret                              ; 0x8d7b
@..api_idx_000a_OGGI.l9:
    inc word [bp - 0x0004]           ; 0x8d7c
    jmp near @..api_idx_000a_OGGI.l5 ; 0x8d7f
@..api_idx_000a_OGGI.l10:
    cmp word [bp - 0x000a], byte 2   ; 0x8d82
    jne short @..api_idx_000a_OGGI.l11 ; 0x8d86
    mov ax, 0x7fb                    ; 0x8d88
    push ax                          ; 0x8d8b
    call api_idx_0050_RIIV           ; 0x8d8c
    pop cx                           ; 0x8d8f
    push word [bss_905a]             ; 0x8d90
    call api_idx_0006_KLOT           ; 0x8d94
    pop cx                           ; 0x8d97
    mov ax, 0x98                     ; 0x8d98
    push ax                          ; 0x8d9b
    mov ax, 0x13f                    ; 0x8d9c
    push ax                          ; 0x8d9f
    mov ax, 0x92                     ; 0x8da0
    push ax                          ; 0x8da3
    mov ax, 0                        ; 0x8da4
    push ax                          ; 0x8da7
    call thunk_4                     ; 0x8da8
    add sp, byte 8                   ; 0x8dab
@..api_idx_000a_OGGI.l11:
    cmp word [bp - 0x000a], byte 0   ; 0x8dae
    je short @..api_idx_000a_OGGI.l12 ; 0x8db2
    mov ax, 0x7fd                    ; 0x8db4
    push ax                          ; 0x8db7
    call api_idx_0050_RIIV           ; 0x8db8
    pop cx                           ; 0x8dbb
    mov ax, 0                        ; 0x8dbc
    push ax                          ; 0x8dbf
    call ds_app_IPOK                 ; 0x8dc0
    pop cx                           ; 0x8dc3
    mov ax, word [bss_905a]          ; 0x8dc4
    mov cx, 2                        ; 0x8dc7
    cwd                              ; 0x8dca
    idiv cx                          ; 0x8dcb
    push ax                          ; 0x8dcd
    call api_idx_0006_KLOT           ; 0x8dce
    pop cx                           ; 0x8dd1
@..api_idx_000a_OGGI.l12:
    mov ax, 0x98                     ; 0x8dd2
    push ax                          ; 0x8dd5
    mov ax, 0x13f                    ; 0x8dd6
    push ax                          ; 0x8dd9
    mov ax, 0x92                     ; 0x8dda
    push ax                          ; 0x8ddd
    mov ax, 0                        ; 0x8dde
    push ax                          ; 0x8de1
    call thunk_4                     ; 0x8de2
    add sp, byte 8                   ; 0x8de5
    ret                              ; 0x8de8
