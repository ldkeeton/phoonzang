api_idx_0004_7:
    mov ax, 0xfffc                   ; 0x6f16
    call ds_dispatch_f40b            ; 0x6f19
@..api_idx_0004_7.l1:
    mov ax, 0x20                     ; 0x6f1c
    push ax                          ; 0x6f1f
    push word [bp + 0x4]             ; 0x6f20
    call ds_dispatch_ee4a            ; 0x6f23
    add sp, byte 4                   ; 0x6f26
    mov word [bp - 0x0002], ax       ; 0x6f29
    cmp ax, strict word 0xffff       ; 0x6f2c
    je short @..api_idx_0004_7.l4    ; 0x6f2f
    mov bx, word [bp + 0x4]          ; 0x6f31
    mov si, ax                       ; 0x6f34
    mov byte [bx + si], 0            ; 0x6f36
@..api_idx_0004_7.l2:
    mov ax, 0x5f                     ; 0x6f39
    push ax                          ; 0x6f3c
    push word [bp + 0x4]             ; 0x6f3d
    call ds_dispatch_ee4a            ; 0x6f40
    add sp, byte 4                   ; 0x6f43
    mov word [bp - 0x0004], ax       ; 0x6f46
    cmp ax, strict word 0xffff       ; 0x6f49
    je short @..api_idx_0004_7.l3    ; 0x6f4c
    mov bx, word [bp + 0x4]          ; 0x6f4e
    mov si, ax                       ; 0x6f51
    mov byte [bx + si], 0x20         ; 0x6f53
    jmp short @..api_idx_0004_7.l2   ; 0x6f56
@..api_idx_0004_7.l3:
    push word [bp + 0x4]             ; 0x6f58
    call loc_6dd9                    ; 0x6f5b
    pop cx                           ; 0x6f5e
    mov ax, word [bp - 0x0002]       ; 0x6f5f
    add word [bp + 0x4], ax          ; 0x6f62
    add word [bp + 0x4], byte 1      ; 0x6f65
    jmp short @..api_idx_0004_7.l1   ; 0x6f69
@..api_idx_0004_7.l4:
    mov bx, word [bp + 0x4]          ; 0x6f6b
    cmp byte [bx], 0                 ; 0x6f6e
    je short @..api_idx_0004_7.l5    ; 0x6f71
    push bx                          ; 0x6f73
    call loc_6dd9                    ; 0x6f74
    pop cx                           ; 0x6f77
@..api_idx_0004_7.l5:
    ret                              ; 0x6f78
loc_6f79:
    mov ax, 0xfefa                   ; 0x6f79
    call ds_dispatch_f40b            ; 0x6f7c
    call loc_6c1e                    ; 0x6f7f
    mov word [bss_a5ac], 0           ; 0x6f82
    mov word [bss_a4a8], 0xc         ; 0x6f88
    mov word [bss_a4a6], 0           ; 0x6f8e
    mov byte [bss_a4aa], 0           ; 0x6f94
@..local.l143:
    lea ax, word [bp - 0x0105]       ; 0x6f99
    push ax                          ; 0x6f9d
    push word [bp + 0x4]             ; 0x6f9e
    call ds_dispatch_b53b            ; 0x6fa1
    add sp, byte 4                   ; 0x6fa4
    cmp word [bss_5216], byte 0      ; 0x6fa7
    jne short @..local.l144          ; 0x6fac
    lea ax, word [bp - 0x0105]       ; 0x6fae
    push ax                          ; 0x6fb2
    call api_idx_0004_7              ; 0x6fb3
    pop cx                           ; 0x6fb6
    inc word [bp + 0x4]              ; 0x6fb7
@..local.l144:
    cmp word [bss_5216], byte 0      ; 0x6fba
    je short @..local.l143           ; 0x6fbf
    cmp byte [bss_a4aa], 0           ; 0x6fc1
    je short @..local.l145           ; 0x6fc6
    mov ax, 0xa4aa                   ; 0x6fc8
    push ax                          ; 0x6fcb
    call api_idx_0004_6              ; 0x6fcc
    pop cx                           ; 0x6fcf
@..local.l145:
    cmp word [bp + 0x6], byte 0      ; 0x6fd0
    je short @..local.l146           ; 0x6fd4
    call api_idx_0004_5              ; 0x6fd6
@..local.l146:
    ret                              ; 0x6fd9
