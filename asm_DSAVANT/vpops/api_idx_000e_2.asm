api_idx_000e_2:
    mov ax, 0xfff2                   ; 0x0d77
    call ds_dispatch_f40b            ; 0x0d7a
    cmp word [dseg_8f20], byte 0     ; 0x0d7d
    jg short @..api_idx_000e_2.l1    ; 0x0d82
    jmp near @..api_idx_000e_2.l8    ; 0x0d84
@..api_idx_000e_2.l1:
    mov ax, word [dseg_82ee]         ; 0x0d87
    mov cx, word [dseg_8f20]         ; 0x0d8a
    dec cx                           ; 0x0d8e
    sub ax, cx                       ; 0x0d8f
    add ax, strict word 6            ; 0x0d91
    mov cx, 4                        ; 0x0d94
    cwd                              ; 0x0d97
    idiv cx                          ; 0x0d98
    mov word [bp - 0x0002], dx       ; 0x0d9a
    mov ax, dx                       ; 0x0d9d
    jmp short @..api_idx_000e_2.l6   ; 0x0d9f
@..api_idx_000e_2.l2:
    mov byte [bp - 0x000e], 1        ; 0x0da1
    mov byte [bp - 0x000d], 2        ; 0x0da5
    mov ax, 5                        ; 0x0da9
    cmp word [bp - 0x0002], byte 0   ; 0x0dac
    jne short @..api_idx_000e_2.l3   ; 0x0db0
    mov ax, 4                        ; 0x0db2
@..api_idx_000e_2.l3:
    mov byte [bp - 0x000c], al       ; 0x0db5
    mov byte [bp - 0x000b], 0        ; 0x0db8
    mov word [bp - 0x0004], 0        ; 0x0dbc
    jmp short @..api_idx_000e_2.l7   ; 0x0dc1
@..api_idx_000e_2.l4:
    mov byte [bp - 0x000e], 3        ; 0x0dc3
    mov byte [bp - 0x000d], 0        ; 0x0dc7
    mov ax, 0                        ; 0x0dcb
    cmp word [bp - 0x0002], byte 3   ; 0x0dce
    jne short @..api_idx_000e_2.l5   ; 0x0dd2
    mov ax, 1                        ; 0x0dd4
@..api_idx_000e_2.l5:
    mov word [bp - 0x0004], ax       ; 0x0dd7
    jmp short @..api_idx_000e_2.l7   ; 0x0dda
@..api_idx_000e_2.l6:
    cmp ax, strict word 0            ; 0x0ddc
    je short @..api_idx_000e_2.l2    ; 0x0ddf
    cmp ax, strict word 1            ; 0x0de1
    je short @..api_idx_000e_2.l4    ; 0x0de4
    cmp ax, strict word 2            ; 0x0de6
    je short @..api_idx_000e_2.l2    ; 0x0de9
    cmp ax, strict word 3            ; 0x0deb
    je short @..api_idx_000e_2.l4    ; 0x0dee
@..api_idx_000e_2.l7:
    lea ax, word [bp - 0x000e]       ; 0x0df0
    push ax                          ; 0x0df3
    mov ax, 0                        ; 0x0df4
    push ax                          ; 0x0df7
    push word [bp - 0x0004]          ; 0x0df8
    mov ax, 0xf8                     ; 0x0dfb
    push ax                          ; 0x0dfe
    mov ax, 0x48                     ; 0x0dff
    push ax                          ; 0x0e02
    mov al, byte [bp - 0x000e]       ; 0x0e03
    sub ah, ah                       ; 0x0e06
    mov bx, ax                       ; 0x0e08
    mov al, byte [bx + 0x6eb5]       ; 0x0e0a
    sub ah, ah                       ; 0x0e0e
    inc ax                           ; 0x0e10
    push ax                          ; 0x0e11
    shl bx, 1                        ; 0x0e12
    mov ax, bx                       ; 0x0e14
    add ax, word [bp - 0x0004]       ; 0x0e16
    mov bx, ax                       ; 0x0e19
    mov al, byte [bx + 0x6e6c]       ; 0x0e1b
    sub ah, ah                       ; 0x0e1f
    inc ax                           ; 0x0e21
    push ax                          ; 0x0e22
    mov ax, 3                        ; 0x0e23
    push ax                          ; 0x0e26
    mov ax, 0x1b                     ; 0x0e27
    push ax                          ; 0x0e2a
    call api_idx_0004                ; 0x0e2b
    add sp, byte 0x12                ; 0x0e2e
@..api_idx_000e_2.l8:
    cmp word [dseg_8f20], byte 0xff  ; 0x0e31
    jne short @..api_idx_000e_2.l9   ; 0x0e36
    mov byte [bp - 0x000e], 1        ; 0x0e38
    mov byte [bp - 0x000d], 0        ; 0x0e3c
    lea ax, word [bp - 0x000e]       ; 0x0e40
    push ax                          ; 0x0e43
    mov ax, 0                        ; 0x0e44
    push ax                          ; 0x0e47
    push ax                          ; 0x0e48
    mov ax, 0xf8                     ; 0x0e49
    push ax                          ; 0x0e4c
    mov ax, 0x48                     ; 0x0e4d
    push ax                          ; 0x0e50
    mov al, byte [dseg_7b04]         ; 0x0e51
    sub ah, ah                       ; 0x0e54
    push ax                          ; 0x0e56
    mov al, byte [dseg_7abc]         ; 0x0e57
    sub ah, ah                       ; 0x0e5a
    push ax                          ; 0x0e5c
    mov ax, 0xc                      ; 0x0e5d
    push ax                          ; 0x0e60
    mov ax, 0x1c                     ; 0x0e61
    push ax                          ; 0x0e64
    call api_idx_0004                ; 0x0e65
    add sp, byte 0x12                ; 0x0e68
@..api_idx_000e_2.l9:
    ret                              ; 0x0e6b
loc_0e6c:
    mov ax, 0                        ; 0x0e6c
    call ds_dispatch_f40b            ; 0x0e6f
    mov ax, word [bp + 0x4]          ; 0x0e72
    shl ax, 1                        ; 0x0e75
    mov bx, ax                       ; 0x0e77
    mov bx, word [bx - 0x7b96]       ; 0x0e79
    mov al, byte [bx + 0x14]         ; 0x0e7d
    sub ah, ah                       ; 0x0e80
    cmp ax, 0xff                     ; 0x0e82
    je short @..local.l9             ; 0x0e85
    mov al, byte [bx + 0x17]         ; 0x0e87
    sub ah, ah                       ; 0x0e8a
    push ax                          ; 0x0e8c
    mov ax, 0                        ; 0x0e8d
    push ax                          ; 0x0e90
    add bx, byte 8                   ; 0x0e91
    mov ax, bx                       ; 0x0e94
    push ax                          ; 0x0e96
    mov ax, word [bp + 0x4]          ; 0x0e97
    shl ax, 1                        ; 0x0e9a
    mov bx, ax                       ; 0x0e9c
    mov bx, word [bx - 0x7b96]       ; 0x0e9e
    mov al, byte [bx + 0x16]         ; 0x0ea2
    sub ah, ah                       ; 0x0ea5
    push ax                          ; 0x0ea7
    mov ax, 0x8e                     ; 0x0ea8
    push ax                          ; 0x0eab
    mov ax, 0x21                     ; 0x0eac
    push ax                          ; 0x0eaf
    push word [bx + 0x6]             ; 0x0eb0
    push word [bx + 0x4]             ; 0x0eb3
    push word [bx + 0x2]             ; 0x0eb6
    push word [bx]                   ; 0x0eb9
    mov al, byte [bx + 0x15]         ; 0x0ebb
    sub ah, ah                       ; 0x0ebe
    push ax                          ; 0x0ec0
    call ds_dispatch_efd1            ; 0x0ec1
    add sp, byte 0x16                ; 0x0ec4
@..local.l9:
    ret                              ; 0x0ec7
loc_0ec8:
    mov ax, 0                        ; 0x0ec8
    call ds_dispatch_f40b            ; 0x0ecb
    les bx, word [dseg_0002]         ; 0x0ece
    mov ax, word [es:bx]             ; 0x0ed2
    mov dx, word [es:bx + 0x2]       ; 0x0ed5
    mov word [dseg_9090], dx         ; 0x0ed9
    mov word [dseg_908e], ax         ; 0x0edd
    mov ax, word [dseg_908e]         ; 0x0ee0
    mov dx, word [dseg_9090]         ; 0x0ee3
    sub ax, word [dseg_908a]         ; 0x0ee7
    sbb dx, word [dseg_908c]         ; 0x0eeb
    mov word [dseg_9094], dx         ; 0x0eef
    mov word [dseg_9092], ax         ; 0x0ef3
    mov ax, word [dseg_90d6]         ; 0x0ef6
    cwd                              ; 0x0ef9
    mov cx, ax                       ; 0x0efa
    mov bx, dx                       ; 0x0efc
    mov ax, word [dseg_9092]         ; 0x0efe
    mov dx, word [dseg_9094]         ; 0x0f01
    cmp bx, dx                       ; 0x0f05
    jg short @..local.l10            ; 0x0f07
    jne short @..local.l11           ; 0x0f09
    cmp cx, ax                       ; 0x0f0b
    jbe short @..local.l11           ; 0x0f0d
@..local.l10:
    jmp short @..local.l12           ; 0x0f0f
@..local.l11:
    mov ax, word [dseg_908e]         ; 0x0f11
    mov dx, word [dseg_9090]         ; 0x0f14
    mov word [dseg_908c], dx         ; 0x0f18
    mov word [dseg_908a], ax         ; 0x0f1c
    mov ax, 1                        ; 0x0f1f
    ret                              ; 0x0f22
@..local.l12:
    mov ax, 0                        ; 0x0f23
    ret                              ; 0x0f26
