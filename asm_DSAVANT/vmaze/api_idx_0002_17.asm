api_idx_0002_17:
    mov ax, 0xfffe                   ; 0x8a14
    call ds_dispatch_f40b            ; 0x8a17
    mov ax, word [bss_8f3e]          ; 0x8a1a
    mov cx, 6                        ; 0x8a1d
    shl ax, cl                       ; 0x8a20
    mov cx, word [bss_8f40]          ; 0x8a22
    shl cx, 1                        ; 0x8a26
    shl cx, 1                        ; 0x8a28
    shl cx, 1                        ; 0x8a2a
    add ax, cx                       ; 0x8a2c
    add ax, word [bss_8f42]          ; 0x8a2e
    mov word [bp - 0x0002], ax       ; 0x8a32
    mov ax, 6                        ; 0x8a35
    push ax                          ; 0x8a38
    push ax                          ; 0x8a39
    push word [bp - 0x0002]          ; 0x8a3a
    mov ax, word [bss_0e14]          ; 0x8a3d
    add ax, 0x4b0                    ; 0x8a40
    push ax                          ; 0x8a43
    call ds_dispatch_eca4            ; 0x8a44
    add sp, byte 8                   ; 0x8a47
    push word [bss_82ee]             ; 0x8a4a
    mov ax, 2                        ; 0x8a4e
    push ax                          ; 0x8a51
    push word [bp - 0x0002]          ; 0x8a52
    mov ax, word [bss_0e14]          ; 0x8a55
    add ax, 0x7b0                    ; 0x8a58
    push ax                          ; 0x8a5b
    call ds_dispatch_eca4            ; 0x8a5c
    add sp, byte 8                   ; 0x8a5f
    call loc_676c                    ; 0x8a62
    mov ax, 0x7fc                    ; 0x8a65
    push ax                          ; 0x8a68
    call api_idx_0050                ; 0x8a69
    pop cx                           ; 0x8a6c
    mov ax, 4                        ; 0x8a6d
    push ax                          ; 0x8a70
    call ds_dispatch_b7e0            ; 0x8a71
    pop cx                           ; 0x8a74
    mov ax, 2                        ; 0x8a75
    push ax                          ; 0x8a78
    call api_idx_0006_2              ; 0x8a79
    pop cx                           ; 0x8a7c
    mov ax, 0x98                     ; 0x8a7d
    push ax                          ; 0x8a80
    mov ax, 0x13f                    ; 0x8a81
    push ax                          ; 0x8a84
    mov ax, 0x92                     ; 0x8a85
    push ax                          ; 0x8a88
    mov ax, 0                        ; 0x8a89
    push ax                          ; 0x8a8c
    call ds_dispatch_e8da            ; 0x8a8d
    add sp, byte 8                   ; 0x8a90
    push word [bss_8f40]             ; 0x8a93
    push word [bss_8f42]             ; 0x8a97
    push word [bss_8f3e]             ; 0x8a9b
    mov ax, 1                        ; 0x8a9f
    push ax                          ; 0x8aa2
    push word [bss_82ee]             ; 0x8aa3
    call api_idx_000a_4              ; 0x8aa7
    add sp, byte 0x0a                ; 0x8aaa
    mov ax, 0                        ; 0x8aad
    push ax                          ; 0x8ab0
    push ax                          ; 0x8ab1
    push ax                          ; 0x8ab2
    push ax                          ; 0x8ab3
    push word [bss_8f40]             ; 0x8ab4
    push word [bss_8f42]             ; 0x8ab8
    push word [bss_8f3e]             ; 0x8abc
    mov ax, 5                        ; 0x8ac0
    push ax                          ; 0x8ac3
    push word [bss_830c]             ; 0x8ac4
    call api_idx_0004_7              ; 0x8ac8
    add sp, byte 0x12                ; 0x8acb
    mov ax, 0                        ; 0x8ace
    push ax                          ; 0x8ad1
    mov ax, 6                        ; 0x8ad2
    push ax                          ; 0x8ad5
    push word [bp - 0x0002]          ; 0x8ad6
    mov ax, word [bss_0e14]          ; 0x8ad9
    add ax, 0x4b0                    ; 0x8adc
    push ax                          ; 0x8adf
    call ds_dispatch_eca4            ; 0x8ae0
    add sp, byte 8                   ; 0x8ae3
    mov ax, 0                        ; 0x8ae6
    push ax                          ; 0x8ae9
    mov ax, 2                        ; 0x8aea
    push ax                          ; 0x8aed
    push word [bp - 0x0002]          ; 0x8aee
    mov ax, word [bss_0e14]          ; 0x8af1
    add ax, 0x7b0                    ; 0x8af4
    push ax                          ; 0x8af7
    call ds_dispatch_eca4            ; 0x8af8
    add sp, byte 8                   ; 0x8afb
    mov ax, 0x12                     ; 0x8afe
    push ax                          ; 0x8b01
    call loc_6ac7                    ; 0x8b02
    pop cx                           ; 0x8b05
    call loc_676c                    ; 0x8b06
    mov ax, word [bss_82ee]          ; 0x8b09
    shl ax, 1                        ; 0x8b0c
    add ax, strict word 8            ; 0x8b0e
    push ax                          ; 0x8b11
    mov cx, word [bp + 0x4]          ; 0x8b12
    shl cx, 1                        ; 0x8b15
    mov ax, word [bss_0e12]          ; 0x8b17
    add ax, cx                       ; 0x8b1a
    add ax, 0x3c0                    ; 0x8b1c
    push ax                          ; 0x8b1f
    call api_idx_0002_16             ; 0x8b20
    add sp, byte 4                   ; 0x8b23
    mov ax, 0                        ; 0x8b26
    push ax                          ; 0x8b29
    push ax                          ; 0x8b2a
    push ax                          ; 0x8b2b
    mov ax, word [bp + 0x4]          ; 0x8b2c
    shl ax, 1                        ; 0x8b2f
    mov si, ax                       ; 0x8b31
    mov bx, word [bss_0e12]          ; 0x8b33
    push word [bx + si + 0x3c0]      ; 0x8b37
    mov ax, 0                        ; 0x8b3b
    push ax                          ; 0x8b3e
    push ax                          ; 0x8b3f
    push word [bp + 0x4]             ; 0x8b40
    mov ax, 6                        ; 0x8b43
    push ax                          ; 0x8b46
    push word [bss_830c]             ; 0x8b47
    call api_idx_0004_7              ; 0x8b4b
    add sp, byte 0x12                ; 0x8b4e
    ret                              ; 0x8b51
