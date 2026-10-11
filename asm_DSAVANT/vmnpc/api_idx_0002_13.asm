api_idx_0002_13:
    mov ax, 0xfffe                   ; 0x9bcc
    call ds_dispatch_f40b            ; 0x9bcf
    mov al, byte [bss_91c7]          ; 0x9bd2
    sub ah, ah                       ; 0x9bd5
    cmp ax, word [bp + 0x4]          ; 0x9bd7
    jne short @..api_idx_0002_13.l1  ; 0x9bda
    mov ax, 0x95a8                   ; 0x9bdc
    push ax                          ; 0x9bdf
    mov ax, 0x790                    ; 0x9be0
    push ax                          ; 0x9be3
    call ds_dispatch_b53b            ; 0x9be4
    add sp, byte 4                   ; 0x9be7
    jmp near @..api_idx_0002_13.l4   ; 0x9bea
@..api_idx_0002_13.l1:
    mov al, byte [bss_91c7]          ; 0x9bed
    sub ah, ah                       ; 0x9bf0
    mov cx, 0xc                      ; 0x9bf2
    imul cx                          ; 0x9bf5
    add ax, word [bp + 0x4]          ; 0x9bf7
    mov bx, ax                       ; 0x9bfa
    mov al, byte [bx - 0x7622]       ; 0x9bfc
    cbw                              ; 0x9c00
    mov word [bp - 0x0002], ax       ; 0x9c01
    cmp word [bp + 0x4], byte 0      ; 0x9c04
    jne short @..api_idx_0002_13.l2  ; 0x9c08
    mov al, byte [bss_91c7]          ; 0x9c0a
    sub ah, ah                       ; 0x9c0d
    mov bx, ax                       ; 0x9c0f
    mov al, byte [bx - 0x7622]       ; 0x9c11
    cbw                              ; 0x9c15
    mov word [bp - 0x0002], ax       ; 0x9c16
@..api_idx_0002_13.l2:
    mov ax, 0x95a8                   ; 0x9c19
    push ax                          ; 0x9c1c
    mov al, byte [bss_91c7]          ; 0x9c1d
    sub ah, ah                       ; 0x9c20
    mov cx, 3                        ; 0x9c22
    imul cx                          ; 0x9c25
    mov cx, 0                        ; 0x9c27
    cmp word [bp - 0x0002], byte 0xe7 ; 0x9c2a
    jl short @..api_idx_0002_13.l3   ; 0x9c2e
    mov cx, 2                        ; 0x9c30
    cmp word [bp - 0x0002], byte 0x19 ; 0x9c33
    jge short @..api_idx_0002_13.l3  ; 0x9c37
    mov cx, 1                        ; 0x9c39
@..api_idx_0002_13.l3:
    add ax, cx                       ; 0x9c3c
    add ax, 0x76c                    ; 0x9c3e
    push ax                          ; 0x9c41
    call ds_dispatch_b53b            ; 0x9c42
    add sp, byte 4                   ; 0x9c45
    mov ax, 0x9d10                   ; 0x9c48
    push ax                          ; 0x9c4b
    mov ax, word [bp + 0x4]          ; 0x9c4c
    add ax, 0x79e                    ; 0x9c4f
    push ax                          ; 0x9c52
    call ds_dispatch_b53b            ; 0x9c53
    add sp, byte 4                   ; 0x9c56
    mov ax, 0x24                     ; 0x9c59
    push ax                          ; 0x9c5c
    mov ax, 0x9d10                   ; 0x9c5d
    push ax                          ; 0x9c60
    mov ax, 0x95a8                   ; 0x9c61
    push ax                          ; 0x9c64
    call ds_dispatch_b300            ; 0x9c65
    add sp, byte 6                   ; 0x9c68
@..api_idx_0002_13.l4:
    mov ax, 0x95a8                   ; 0x9c6b
    push ax                          ; 0x9c6e
    call loc_9587                    ; 0x9c6f
    pop cx                           ; 0x9c72
    call api_idx_000e_2              ; 0x9c73
    call api_idx_0004_2              ; 0x9c76
    ret                              ; 0x9c79
loc_9c7a:
    mov ax, 0                        ; 0x9c7a
    call ds_dispatch_f40b            ; 0x9c7d
    mov ax, 0x95fa                   ; 0x9c80
    push ax                          ; 0x9c83
    push word [bp + 0x4]             ; 0x9c84
    call ds_dispatch_b53b            ; 0x9c87
    add sp, byte 4                   ; 0x9c8a
    mov ax, 0x9d10                   ; 0x9c8d
    push ax                          ; 0x9c90
    push word [bp + 0x6]             ; 0x9c91
    call ds_dispatch_b53b            ; 0x9c94
    add sp, byte 4                   ; 0x9c97
    cmp byte [bss_95fa], 0           ; 0x9c9a
    jne short @..local.l113          ; 0x9c9f
    mov ax, 0x9d10                   ; 0x9ca1
    push ax                          ; 0x9ca4
    mov ax, 0x650                    ; 0x9ca5
    push ax                          ; 0x9ca8
    call api_idx_0080                ; 0x9ca9
    add sp, byte 4                   ; 0x9cac
    jmp short @..local.l118          ; 0x9caf
@..local.l113:
    cmp byte [bss_95fa], 0x24        ; 0x9cb1
    jne short @..local.l115          ; 0x9cb6
    mov al, byte [bss_95fb]          ; 0x9cb8
    sub ah, ah                       ; 0x9cbb
    push ax                          ; 0x9cbd
    push word [bss_b04e]             ; 0x9cbe
    call api_idx_0040                ; 0x9cc2
    add sp, byte 4                   ; 0x9cc5
    cmp ax, strict word 1            ; 0x9cc8
    jne short @..local.l114          ; 0x9ccb
    mov word [bss_9e70], 1           ; 0x9ccd
@..local.l114:
    jmp short @..local.l118          ; 0x9cd3
@..local.l115:
    cmp byte [bss_95fa], 0x26        ; 0x9cd5
    jne short @..local.l116          ; 0x9cda
    mov al, byte [bss_95fb]          ; 0x9cdc
    sub ah, ah                       ; 0x9cdf
    dec ax                           ; 0x9ce1
    push ax                          ; 0x9ce2
    call api_idx_0002_13             ; 0x9ce3
    pop cx                           ; 0x9ce6
    jmp short @..local.l118          ; 0x9ce7
@..local.l116:
    cmp byte [bss_95fa], 0x2d        ; 0x9ce9
    jne short @..local.l117          ; 0x9cee
    mov al, byte [bss_95fb]          ; 0x9cf0
    sub ah, ah                       ; 0x9cf3
    sub word [bp + 0x4], ax          ; 0x9cf5
@..local.l117:
    mov ax, 0x9102                   ; 0x9cf8
    push ax                          ; 0x9cfb
    push word [bp + 0x4]             ; 0x9cfc
    call api_idx_0080                ; 0x9cff
    add sp, byte 4                   ; 0x9d02
@..local.l118:
    ret                              ; 0x9d05
loc_9d06:
    mov ax, 0                        ; 0x9d06
    call ds_dispatch_f40b            ; 0x9d09
    mov ax, word [bp + 0x4]          ; 0x9d0c
    cmp ax, word [bss_b046]          ; 0x9d0f
    jge short @..local.l119          ; 0x9d13
    mov cx, 5                        ; 0x9d15
    imul cx                          ; 0x9d18
    add ax, word [bss_b050]          ; 0x9d1a
    ret                              ; 0x9d1e
@..local.l119:
    mov ax, word [bp + 0x4]          ; 0x9d1f
    sub ax, word [bss_b046]          ; 0x9d22
    mov cx, 5                        ; 0x9d26
    imul cx                          ; 0x9d29
    add ax, word [bss_b052]          ; 0x9d2b
    ret                              ; 0x9d2f
