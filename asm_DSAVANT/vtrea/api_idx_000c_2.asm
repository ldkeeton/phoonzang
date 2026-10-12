api_idx_000c_2:
    mov ax, 0xfff4                   ; 0x8bf4
    call ds_aztec_csav               ; 0x8bf7
    mov word [bp - 0x0002], 0        ; 0x8bfa
@..api_idx_000c_2.l1:
    lea ax, word [bp - 0x000c]       ; 0x8bff
    push ax                          ; 0x8c02
    mov ax, 0x248                    ; 0x8c03
    imul word [bp + 0x4]             ; 0x8c06
    mov cx, word [bp - 0x0002]       ; 0x8c09
    shl cx, 1                        ; 0x8c0c
    shl cx, 1                        ; 0x8c0e
    add ax, cx                       ; 0x8c10
    mov bx, ax                       ; 0x8c12
    push word [bx + 0x5c1c]          ; 0x8c14
    call ds_app_04c4                 ; 0x8c18
    add sp, byte 4                   ; 0x8c1b
    mov ax, 0                        ; 0x8c1e
    push ax                          ; 0x8c21
    mov ax, word [bp - 0x0002]       ; 0x8c22
    shl ax, 1                        ; 0x8c25
    shl ax, 1                        ; 0x8c27
    mov bx, ax                       ; 0x8c29
    db 0xff, 0xb7, 0x06, 0x00 ; push word [bx + 0x6]
    call ds_loc_3a6a                 ; 0x8c2f
    add sp, byte 4                   ; 0x8c32
    mov ax, word [bp - 0x0002]       ; 0x8c35
    shl ax, 1                        ; 0x8c38
    shl ax, 1                        ; 0x8c3a
    mov bx, ax                       ; 0x8c3c
    push word [bx + 0x18e]           ; 0x8c3e
    lea ax, word [bp - 0x000c]       ; 0x8c42
    push ax                          ; 0x8c45
    call ds_aztec_strlen             ; 0x8c46
    pop cx                           ; 0x8c49
    mov cx, 6                        ; 0x8c4a
    imul cx                          ; 0x8c4d
    mov cx, 2                        ; 0x8c4f
    cwd                              ; 0x8c52
    idiv cx                          ; 0x8c53
    mov cx, ax                       ; 0x8c55
    mov ax, word [bp - 0x0002]       ; 0x8c57
    shl ax, 1                        ; 0x8c5a
    shl ax, 1                        ; 0x8c5c
    mov bx, ax                       ; 0x8c5e
    mov ax, word [bx + 0x18c]        ; 0x8c60
    add ax, strict word 9            ; 0x8c64
    sub ax, cx                       ; 0x8c67
    push ax                          ; 0x8c69
    call ds_loc_3a50                 ; 0x8c6a
    add sp, byte 4                   ; 0x8c6d
    mov ax, 0                        ; 0x8c70
    push ax                          ; 0x8c73
    lea ax, word [bp - 0x000c]       ; 0x8c74
    push ax                          ; 0x8c77
    call ds_string_loc_3a95          ; 0x8c78
    add sp, byte 4                   ; 0x8c7b
    inc word [bp - 0x0002]           ; 0x8c7e
    mov ax, word [bp - 0x0002]       ; 0x8c81
    cmp ax, strict word 6            ; 0x8c84
    jge short @..api_idx_000c_2.l2   ; 0x8c87
    jmp near @..api_idx_000c_2.l1    ; 0x8c89
@..api_idx_000c_2.l2:
    ret                              ; 0x8c8c
loc_8c8d:
    mov ax, 0                        ; 0x8c8d
    call ds_aztec_csav               ; 0x8c90
    les bx, word [dseg_0002]         ; 0x8c93
    mov ax, word [es:bx]             ; 0x8c97
    mov dx, word [es:bx + 0x2]       ; 0x8c9a
    mov word [bss_9090], dx          ; 0x8c9e
    mov word [bss_908e], ax          ; 0x8ca2
    mov ax, word [bss_908e]          ; 0x8ca5
    mov dx, word [bss_9090]          ; 0x8ca8
    sub ax, word [bss_908a]          ; 0x8cac
    sbb dx, word [bss_908c]          ; 0x8cb0
    mov word [bss_9094], dx          ; 0x8cb4
    mov word [bss_9092], ax          ; 0x8cb8
    mov ax, word [bss_9124]          ; 0x8cbb
    cwd                              ; 0x8cbe
    mov cx, ax                       ; 0x8cbf
    mov bx, dx                       ; 0x8cc1
    mov ax, word [bss_9092]          ; 0x8cc3
    mov dx, word [bss_9094]          ; 0x8cc6
    cmp bx, dx                       ; 0x8cca
    jg short @..local.l177           ; 0x8ccc
    jne short @..local.l178          ; 0x8cce
    cmp cx, ax                       ; 0x8cd0
    jbe short @..local.l178          ; 0x8cd2
@..local.l177:
    jmp short @..local.l179          ; 0x8cd4
@..local.l178:
    mov ax, word [bss_908e]          ; 0x8cd6
    mov dx, word [bss_9090]          ; 0x8cd9
    mov word [bss_908c], dx          ; 0x8cdd
    mov word [bss_908a], ax          ; 0x8ce1
    call api_idx_000a_3              ; 0x8ce4
    push word [bp + 0x4]             ; 0x8ce7
    call api_idx_000c_2              ; 0x8cea
    pop cx                           ; 0x8ced
    push word [bp + 0x6]             ; 0x8cee
    call api_idx_0002_6              ; 0x8cf1
    pop cx                           ; 0x8cf4
    mov ax, 1                        ; 0x8cf5
    push ax                          ; 0x8cf8
    mov ax, 0x73                     ; 0x8cf9
    push ax                          ; 0x8cfc
    mov ax, 0x32                     ; 0x8cfd
    push ax                          ; 0x8d00
    call api_idx_000c                ; 0x8d01
    add sp, byte 6                   ; 0x8d04
    mov ax, 0xc5                     ; 0x8d07
    push ax                          ; 0x8d0a
    mov ax, 0x93                     ; 0x8d0b
    push ax                          ; 0x8d0e
    mov ax, 0x73                     ; 0x8d0f
    push ax                          ; 0x8d12
    mov ax, 0x32                     ; 0x8d13
    push ax                          ; 0x8d16
    call ds_loc_3b21                 ; 0x8d17
    add sp, byte 8                   ; 0x8d1a
@..local.l179:
    ret                              ; 0x8d1d
