api_idx_000c_2:
    mov ax, 0xfff4                   ; 0x2f3f
    call ds_aztec_csav               ; 0x2f42
    mov word [bp - 0x0002], 0        ; 0x2f45
@..api_idx_000c_2.l1:
    lea ax, word [bp - 0x000c]       ; 0x2f4a
    push ax                          ; 0x2f4d
    mov ax, 0x248                    ; 0x2f4e
    imul word [bp + 0x4]             ; 0x2f51
    mov cx, word [bp - 0x0002]       ; 0x2f54
    shl cx, 1                        ; 0x2f57
    shl cx, 1                        ; 0x2f59
    add ax, cx                       ; 0x2f5b
    mov bx, ax                       ; 0x2f5d
    push word [bx + 0x5c1c]          ; 0x2f5f
    call ds_app_04c4                 ; 0x2f63
    add sp, byte 4                   ; 0x2f66
    mov ax, 0                        ; 0x2f69
    push ax                          ; 0x2f6c
    mov ax, word [bp - 0x0002]       ; 0x2f6d
    shl ax, 1                        ; 0x2f70
    shl ax, 1                        ; 0x2f72
    mov bx, ax                       ; 0x2f74
    db 0xff, 0xb7, 0x06, 0x00 ; push word [bx + 0x6]
    call ds_loc_3a6a                 ; 0x2f7a
    add sp, byte 4                   ; 0x2f7d
    mov ax, word [bp - 0x0002]       ; 0x2f80
    shl ax, 1                        ; 0x2f83
    shl ax, 1                        ; 0x2f85
    mov bx, ax                       ; 0x2f87
    push word [bx + 0x18e]           ; 0x2f89
    lea ax, word [bp - 0x000c]       ; 0x2f8d
    push ax                          ; 0x2f90
    call ds_aztec_strlen             ; 0x2f91
    pop cx                           ; 0x2f94
    mov cx, 6                        ; 0x2f95
    imul cx                          ; 0x2f98
    mov cx, 2                        ; 0x2f9a
    cwd                              ; 0x2f9d
    idiv cx                          ; 0x2f9e
    mov cx, ax                       ; 0x2fa0
    mov ax, word [bp - 0x0002]       ; 0x2fa2
    shl ax, 1                        ; 0x2fa5
    shl ax, 1                        ; 0x2fa7
    mov bx, ax                       ; 0x2fa9
    mov ax, word [bx + 0x18c]        ; 0x2fab
    add ax, strict word 9            ; 0x2faf
    sub ax, cx                       ; 0x2fb2
    push ax                          ; 0x2fb4
    call ds_loc_3a50                 ; 0x2fb5
    add sp, byte 4                   ; 0x2fb8
    mov ax, 0                        ; 0x2fbb
    push ax                          ; 0x2fbe
    lea ax, word [bp - 0x000c]       ; 0x2fbf
    push ax                          ; 0x2fc2
    call ds_string_loc_3a95          ; 0x2fc3
    add sp, byte 4                   ; 0x2fc6
    inc word [bp - 0x0002]           ; 0x2fc9
    mov ax, word [bp - 0x0002]       ; 0x2fcc
    cmp ax, strict word 6            ; 0x2fcf
    jge short @..api_idx_000c_2.l2   ; 0x2fd2
    jmp near @..api_idx_000c_2.l1    ; 0x2fd4
@..api_idx_000c_2.l2:
    ret                              ; 0x2fd7
loc_2fd8:
    mov ax, 0                        ; 0x2fd8
    call ds_aztec_csav               ; 0x2fdb
    les bx, word [dseg_0002]         ; 0x2fde
    mov ax, word [es:bx]             ; 0x2fe2
    mov dx, word [es:bx + 0x2]       ; 0x2fe5
    mov word [bss_9090], dx          ; 0x2fe9
    mov word [bss_908e], ax          ; 0x2fed
    mov ax, word [bss_908e]          ; 0x2ff0
    mov dx, word [bss_9090]          ; 0x2ff3
    sub ax, word [bss_908a]          ; 0x2ff7
    sbb dx, word [bss_908c]          ; 0x2ffb
    mov word [bss_9094], dx          ; 0x2fff
    mov word [bss_9092], ax          ; 0x3003
    mov ax, word [bss_976c]          ; 0x3006
    cwd                              ; 0x3009
    mov cx, ax                       ; 0x300a
    mov bx, dx                       ; 0x300c
    mov ax, word [bss_9092]          ; 0x300e
    mov dx, word [bss_9094]          ; 0x3011
    cmp bx, dx                       ; 0x3015
    jg short @..local.l32            ; 0x3017
    jne short @..local.l33           ; 0x3019
    cmp cx, ax                       ; 0x301b
    jbe short @..local.l33           ; 0x301d
@..local.l32:
    jmp short @..local.l34           ; 0x301f
@..local.l33:
    mov ax, word [bss_908e]          ; 0x3021
    mov dx, word [bss_9090]          ; 0x3024
    mov word [bss_908c], dx          ; 0x3028
    mov word [bss_908a], ax          ; 0x302c
    call api_idx_000a_2              ; 0x302f
    push word [bp + 0x4]             ; 0x3032
    call api_idx_000c_2              ; 0x3035
    pop cx                           ; 0x3038
    push word [bp + 0x6]             ; 0x3039
    call api_idx_0002_3              ; 0x303c
    pop cx                           ; 0x303f
    mov ax, 1                        ; 0x3040
    push ax                          ; 0x3043
    mov ax, 0x73                     ; 0x3044
    push ax                          ; 0x3047
    mov ax, 0x32                     ; 0x3048
    push ax                          ; 0x304b
    call api_idx_000c                ; 0x304c
    add sp, byte 6                   ; 0x304f
    mov ax, 0xc5                     ; 0x3052
    push ax                          ; 0x3055
    mov ax, 0x93                     ; 0x3056
    push ax                          ; 0x3059
    mov ax, 0x73                     ; 0x305a
    push ax                          ; 0x305d
    mov ax, 0x32                     ; 0x305e
    push ax                          ; 0x3061
    call ds_loc_3b21                 ; 0x3062
    add sp, byte 8                   ; 0x3065
@..local.l34:
    ret                              ; 0x3068
