api_idx_0004_9:
    mov ax, 0xfffc                   ; 0x6eb1
    call ds_dispatch_f40b            ; 0x6eb4
@..api_idx_0004_9.l1:
    mov ax, 0x20                     ; 0x6eb7
    push ax                          ; 0x6eba
    push word [bp + 0x4]             ; 0x6ebb
    call ds_dispatch_ee4a            ; 0x6ebe
    add sp, byte 4                   ; 0x6ec1
    mov word [bp - 0x0002], ax       ; 0x6ec4
    cmp ax, strict word 0xffff       ; 0x6ec7
    je short @..api_idx_0004_9.l4    ; 0x6eca
    mov bx, word [bp + 0x4]          ; 0x6ecc
    mov si, ax                       ; 0x6ecf
    mov byte [bx + si], 0            ; 0x6ed1
@..api_idx_0004_9.l2:
    mov ax, 0x5f                     ; 0x6ed4
    push ax                          ; 0x6ed7
    push word [bp + 0x4]             ; 0x6ed8
    call ds_dispatch_ee4a            ; 0x6edb
    add sp, byte 4                   ; 0x6ede
    mov word [bp - 0x0004], ax       ; 0x6ee1
    cmp ax, strict word 0xffff       ; 0x6ee4
    je short @..api_idx_0004_9.l3    ; 0x6ee7
    mov bx, word [bp + 0x4]          ; 0x6ee9
    mov si, ax                       ; 0x6eec
    mov byte [bx + si], 0x20         ; 0x6eee
    jmp short @..api_idx_0004_9.l2   ; 0x6ef1
@..api_idx_0004_9.l3:
    push word [bp + 0x4]             ; 0x6ef3
    call api_idx_0090                ; 0x6ef6
    pop cx                           ; 0x6ef9
    mov ax, word [bp - 0x0002]       ; 0x6efa
    add word [bp + 0x4], ax          ; 0x6efd
    add word [bp + 0x4], byte 1      ; 0x6f00
    jmp short @..api_idx_0004_9.l1   ; 0x6f04
@..api_idx_0004_9.l4:
    mov bx, word [bp + 0x4]          ; 0x6f06
    cmp byte [bx], 0                 ; 0x6f09
    je short @..api_idx_0004_9.l5    ; 0x6f0c
    push bx                          ; 0x6f0e
    call api_idx_0090                ; 0x6f0f
    pop cx                           ; 0x6f12
@..api_idx_0004_9.l5:
    ret                              ; 0x6f13
loc_6f14:
    mov ax, 0xfefa                   ; 0x6f14
    call ds_dispatch_f40b            ; 0x6f17
    mov word [bss_9b48], 0           ; 0x6f1a
    mov ax, 0xc6                     ; 0x6f20
    push ax                          ; 0x6f23
    mov ax, 0x109                    ; 0x6f24
    push ax                          ; 0x6f27
    mov ax, 0x92                     ; 0x6f28
    push ax                          ; 0x6f2b
    mov ax, 0x37                     ; 0x6f2c
    push ax                          ; 0x6f2f
    call ds_dispatch_e928            ; 0x6f30
    add sp, byte 8                   ; 0x6f33
    mov word [bss_8d10], dx          ; 0x6f36
    mov word [bss_8d0e], ax          ; 0x6f3a
    call api_idx_000a_2              ; 0x6f3d
    mov word [bss_9b4e], 0x44        ; 0x6f40
    mov word [bss_9b4c], 0           ; 0x6f46
    mov byte [bss_9b50], 0           ; 0x6f4c
@..local.l89:
    lea ax, word [bp - 0x0105]       ; 0x6f51
    push ax                          ; 0x6f55
    push word [bp + 0x4]             ; 0x6f56
    call ds_dispatch_b53b            ; 0x6f59
    add sp, byte 4                   ; 0x6f5c
    cmp word [bss_5216], byte 0      ; 0x6f5f
    jne short @..local.l91           ; 0x6f64
    cmp word [bss_9b48], byte 0      ; 0x6f66
    jne short @..local.l90           ; 0x6f6b
    lea ax, word [bp - 0x0105]       ; 0x6f6d
    push ax                          ; 0x6f71
    call api_idx_0004_9              ; 0x6f72
    pop cx                           ; 0x6f75
@..local.l90:
    inc word [bp + 0x4]              ; 0x6f76
@..local.l91:
    cmp word [bss_5216], byte 0      ; 0x6f79
    je short @..local.l89            ; 0x6f7e
    cmp byte [bss_9b50], 0           ; 0x6f80
    je short @..local.l92            ; 0x6f85
    mov ax, 0x9b50                   ; 0x6f87
    push ax                          ; 0x6f8a
    call api_idx_0004_8              ; 0x6f8b
    pop cx                           ; 0x6f8e
@..local.l92:
    push word [bp + 0x6]             ; 0x6f8f
    call loc_6b5a                    ; 0x6f92
    pop cx                           ; 0x6f95
    mov ax, 1                        ; 0x6f96
    push ax                          ; 0x6f99
    push word [bss_8d10]             ; 0x6f9a
    push word [bss_8d0e]             ; 0x6f9e
    call ds_dispatch_e94f            ; 0x6fa2
    add sp, byte 6                   ; 0x6fa5
    mov ax, 0xc6                     ; 0x6fa8
    push ax                          ; 0x6fab
    mov ax, 0x109                    ; 0x6fac
    push ax                          ; 0x6faf
    mov ax, 0x92                     ; 0x6fb0
    push ax                          ; 0x6fb3
    mov ax, 0x37                     ; 0x6fb4
    push ax                          ; 0x6fb7
    call ds_dispatch_bb33            ; 0x6fb8
    add sp, byte 8                   ; 0x6fbb
    ret                              ; 0x6fbe
loc_6fbf:
    mov ax, 0                        ; 0x6fbf
    call ds_dispatch_f40b            ; 0x6fc2
    mov ax, 0x248                    ; 0x6fc5
    imul word [bp + 0x4]             ; 0x6fc8
    add ax, word [bp + 0x6]          ; 0x6fcb
    mov bx, ax                       ; 0x6fce
    cmp byte [bx + 0x5d6c], 0x64     ; 0x6fd0
    jae short @..local.l93           ; 0x6fd5
    mov al, byte [bx + 0x5d6c]       ; 0x6fd7
    sub ah, ah                       ; 0x6fdb
    push ax                          ; 0x6fdd
    call ds_dispatch_b7a9            ; 0x6fde
    pop cx                           ; 0x6fe1
    push ax                          ; 0x6fe2
    mov ax, 0x248                    ; 0x6fe3
    imul word [bp + 0x4]             ; 0x6fe6
    mov bx, ax                       ; 0x6fe9
    mov ax, word [bx + 0x5c18]       ; 0x6feb
    imul word [bp + 0x8]             ; 0x6fef
    mov cx, ax                       ; 0x6ff2
    pop ax                           ; 0x6ff4
    sub ax, cx                       ; 0x6ff5
    jg short @..local.l93            ; 0x6ff7
    add bx, word [bp + 0x6]          ; 0x6ff9
    inc byte [bx + 0x5d6c]           ; 0x6ffc
@..local.l93:
    ret                              ; 0x7000
