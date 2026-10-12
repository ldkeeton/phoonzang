api_idx_0004_10:
    mov ax, 0xfffc                   ; 0x5efe
    call ds_aztec_csav               ; 0x5f01
    push word [bp + 0xc]             ; 0x5f04
    push word [bp + 0xa]             ; 0x5f07
    push word [bp + 0x8]             ; 0x5f0a
    push word [bp + 0x6]             ; 0x5f0d
    push word [bp + 0x4]             ; 0x5f10
    call api_idx_0006_5              ; 0x5f13
    add sp, byte 0x0a                ; 0x5f16
    mov word [bp - 0x0002], ax       ; 0x5f19
    cmp ax, strict word 0xffff       ; 0x5f1c
    jne short @..api_idx_0004_10.l2  ; 0x5f1f
    mov ax, word [bss_590e]          ; 0x5f21
    mov word [bp - 0x0002], ax       ; 0x5f24
    inc word [bss_590e]              ; 0x5f27
    mov ax, word [bss_590e]          ; 0x5f2b
    cmp ax, 0x200                    ; 0x5f2e
    jl short @..api_idx_0004_10.l2   ; 0x5f31
@..api_idx_0004_10.l1:
    mov ax, 0                        ; 0x5f33
    push ax                          ; 0x5f36
    call ds_app_0a27                 ; 0x5f37
    pop cx                           ; 0x5f3a
    jmp short @..api_idx_0004_10.l1  ; 0x5f3b
@..api_idx_0004_10.l2:
    mov ax, 6                        ; 0x5f3d
    imul word [bp - 0x0002]          ; 0x5f40
    mov cx, ax                       ; 0x5f43
    mov ax, word [bss_0e10]          ; 0x5f45
    add ax, cx                       ; 0x5f48
    mov word [bp - 0x0004], ax       ; 0x5f4a
    mov al, byte [bp + 0x4]          ; 0x5f4d
    mov bx, word [bp - 0x0004]       ; 0x5f50
    mov byte [bx], al                ; 0x5f53
    mov al, byte [bp + 0x6]          ; 0x5f55
    mov bx, word [bp - 0x0004]       ; 0x5f58
    mov byte [bx + 0x1], al          ; 0x5f5b
    mov ax, word [bp + 0x8]          ; 0x5f5e
    xchg al, ah                      ; 0x5f61
    sub al, al                       ; 0x5f63
    mov dx, word [bp + 0xa]          ; 0x5f65
    mov cx, 4                        ; 0x5f68
    shl dx, cl                       ; 0x5f6b
    mov cx, dx                       ; 0x5f6d
    add ax, cx                       ; 0x5f6f
    add ax, word [bp + 0xc]          ; 0x5f71
    mov bx, word [bp - 0x0004]       ; 0x5f74
    mov word [bx + 0x2], ax          ; 0x5f77
    mov ax, word [bp + 0x6]          ; 0x5f7a
    jmp short @..api_idx_0004_10.l3  ; 0x5f7d
