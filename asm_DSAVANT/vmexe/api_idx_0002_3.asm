api_idx_0002_3:
    mov ax, 0xfffe                   ; 0x1f00
    call ds_dispatch_f40b            ; 0x1f03
    mov ax, word [bp + 0x4]          ; 0x1f06
    shl ax, 1                        ; 0x1f09
    mov bx, ax                       ; 0x1f0b
    mov bx, word [bx - 0x7b70]       ; 0x1f0d
    mov si, word [bp + 0x8]          ; 0x1f11
    mov al, byte [bx + si + 0x9a]    ; 0x1f14
    sub ah, ah                       ; 0x1f18
    mov cx, ax                       ; 0x1f1a
    sub ax, word [bp + 0xa]          ; 0x1f1c
    mov cx, ax                       ; 0x1f1f
    mov ax, word [bp + 0x6]          ; 0x1f21
    mov bx, cx                       ; 0x1f24
    imul bx                          ; 0x1f26
    mov cx, 0x64                     ; 0x1f28
    mov bx, 0                        ; 0x1f2b
    call ds_dispatch_f99f            ; 0x1f2e
    mov word [bp - 0x0002], ax       ; 0x1f31
    cmp ax, strict word 0            ; 0x1f34
    jge short @..api_idx_0002_3.l1   ; 0x1f37
    mov word [bp - 0x0002], 0        ; 0x1f39
@..api_idx_0002_3.l1:
    mov ax, word [bp - 0x0002]       ; 0x1f3e
    cmp ax, word [bp + 0x6]          ; 0x1f41
    jle short @..api_idx_0002_3.l2   ; 0x1f44
    mov ax, word [bp + 0x6]          ; 0x1f46
    mov word [bp - 0x0002], ax       ; 0x1f49
@..api_idx_0002_3.l2:
    mov ax, word [bp - 0x0002]       ; 0x1f4c
    inc ax                           ; 0x1f4f
    push ax                          ; 0x1f50
    call ds_dispatch_b7a9            ; 0x1f51
    pop cx                           ; 0x1f54
    mov cx, ax                       ; 0x1f55
    mov ax, word [bp + 0x6]          ; 0x1f57
    sub ax, cx                       ; 0x1f5a
    ret                              ; 0x1f5c
