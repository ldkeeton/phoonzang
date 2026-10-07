api_idx_000a_5:
    mov ax, 0xfff6                   ; 0x8c47
    call ds_dispatch_f40b            ; 0x8c4a
    mov ax, word [data_8f3e]         ; 0x8c4d
    mov cx, 6                        ; 0x8c50
    shl ax, cl                       ; 0x8c53
    mov cx, word [data_8f40]         ; 0x8c55
    shl cx, 1                        ; 0x8c59
    shl cx, 1                        ; 0x8c5b
    shl cx, 1                        ; 0x8c5d
    add ax, cx                       ; 0x8c5f
    add ax, word [data_8f42]         ; 0x8c61
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
    je short @..api_idx_000a_5.l1    ; 0x8c84
    cmp ax, strict word 0xa          ; 0x8c86
    je short @..api_idx_000a_5.l1    ; 0x8c89
    cmp ax, strict word 0xb          ; 0x8c8b
    jne short @..api_idx_000a_5.l3   ; 0x8c8e
@..api_idx_000a_5.l1:
    mov ax, word [bp - 0x0008]       ; 0x8c90
    cmp ax, word [data_82ee]         ; 0x8c93
    jne short @..api_idx_000a_5.l3   ; 0x8c97
    cmp word [bp + 0x4], byte 0      ; 0x8c99
    je short @..api_idx_000a_5.l2    ; 0x8c9d
    mov word [bp - 0x000a], 2        ; 0x8c9f
@..api_idx_000a_5.l2:
    jmp short @..api_idx_000a_5.l4   ; 0x8ca4
@..api_idx_000a_5.l3:
    cmp word [bp + 0x4], byte 0      ; 0x8ca6
    je short @..api_idx_000a_5.l4    ; 0x8caa
    mov word [bp - 0x000a], 1        ; 0x8cac
    mov ax, 0x7fb                    ; 0x8cb1
    push ax                          ; 0x8cb4
    call api_idx_0050                ; 0x8cb5
    pop cx                           ; 0x8cb8
    push word [data_905a]            ; 0x8cb9
    call api_idx_0006_2              ; 0x8cbd
    pop cx                           ; 0x8cc0
@..api_idx_000a_5.l4:
    mov ax, 0x98                     ; 0x8cc1
    push ax                          ; 0x8cc4
    mov ax, 0x13f                    ; 0x8cc5
    push ax                          ; 0x8cc8
    mov ax, 0x92                     ; 0x8cc9
    push ax                          ; 0x8ccc
    mov ax, 0                        ; 0x8ccd
    push ax                          ; 0x8cd0
    call ds_dispatch_e8da            ; 0x8cd1
    add sp, byte 8                   ; 0x8cd4
    mov bx, word [data_0e12]         ; 0x8cd7
    mov si, word [data_8f3e]         ; 0x8cdb
    mov al, byte [bx + si + 0xb40]   ; 0x8cdf
    sub ah, ah                       ; 0x8ce3
    mov word [bp - 0x0004], ax       ; 0x8ce5
@..api_idx_000a_5.l5:
    push word [bp - 0x0004]          ; 0x8ce8
    push word [data_8f3e]            ; 0x8ceb
    push word [data_8f40]            ; 0x8cef
    push word [data_8f42]            ; 0x8cf3
    call api_idx_0002_11             ; 0x8cf7
    add sp, byte 8                   ; 0x8cfa
    mov word [bp - 0x0004], ax       ; 0x8cfd
    cmp ax, strict word 0xffff       ; 0x8d00
    jne short @..api_idx_000a_5.l6   ; 0x8d03
    jmp near @..api_idx_000a_5.l10   ; 0x8d05
@..api_idx_000a_5.l6:
    mov bx, word [data_0e12]         ; 0x8d08
    mov si, ax                       ; 0x8d0c
    cmp byte [bx + si + 0x5a0], 7    ; 0x8d0e
    jne short @..api_idx_000a_5.l7   ; 0x8d13
    mov ax, 2                        ; 0x8d15
    push ax                          ; 0x8d18
    mov ax, word [data_82ee]         ; 0x8d19
    shl ax, 1                        ; 0x8d1c
    add ax, strict word 8            ; 0x8d1e
    push ax                          ; 0x8d21
    shl si, 1                        ; 0x8d22
    push word [bx + si + 0x3c0]      ; 0x8d24
    call ds_dispatch_ed3a            ; 0x8d28
    add sp, byte 6                   ; 0x8d2b
    cmp ax, strict word 2            ; 0x8d2e
    jne short @..api_idx_000a_5.l7   ; 0x8d31
    push word [bp - 0x0004]          ; 0x8d33
    call api_idx_0002_17             ; 0x8d36
    pop cx                           ; 0x8d39
    ret                              ; 0x8d3a
