api_idx_0002_18:
    mov ax, 0xfffe                   ; 0x8de9
    call ds_dispatch_f40b            ; 0x8dec
    mov ax, word [bp + 0x4]          ; 0x8def
    shl ax, 1                        ; 0x8df2
    mov si, ax                       ; 0x8df4
    mov bx, word [dseg_0e12]         ; 0x8df6
    mov ax, word [bx + si + 0x3c0]   ; 0x8dfa
    mov word [bp - 0x0002], ax       ; 0x8dfe
    mov ax, 1                        ; 0x8e01
    push ax                          ; 0x8e04
    mov ax, 0xe                      ; 0x8e05
    push ax                          ; 0x8e08
    push word [bp - 0x0002]          ; 0x8e09
    call ds_dispatch_ed3a            ; 0x8e0c
    add sp, byte 6                   ; 0x8e0f
    cmp ax, strict word 1            ; 0x8e12
    jne short @..api_idx_0002_18.l1  ; 0x8e15
    mov ax, 2                        ; 0x8e17
    push ax                          ; 0x8e1a
    mov ax, 0xc                      ; 0x8e1b
    push ax                          ; 0x8e1e
    push word [bp - 0x0002]          ; 0x8e1f
    call ds_dispatch_ed3a            ; 0x8e22
    add sp, byte 6                   ; 0x8e25
    cmp ax, word [dseg_82ee]         ; 0x8e28
    je short @..api_idx_0002_18.l1   ; 0x8e2c
    mov ax, 0                        ; 0x8e2e
    ret                              ; 0x8e31
@..api_idx_0002_18.l1:
    mov ax, 1                        ; 0x8e32
    push ax                          ; 0x8e35
    mov ax, 8                        ; 0x8e36
    push ax                          ; 0x8e39
    push word [bp - 0x0002]          ; 0x8e3a
    call ds_dispatch_ed3a            ; 0x8e3d
    add sp, byte 6                   ; 0x8e40
    test ax, ax                      ; 0x8e43
    jne short @..api_idx_0002_18.l2  ; 0x8e45
    mov ax, 0                        ; 0x8e47
    ret                              ; 0x8e4a
@..api_idx_0002_18.l2:
    mov ax, word [bp + 0x4]          ; 0x8e4b
    mov word [dseg_8d12], ax         ; 0x8e4e
    mov bx, word [dseg_0e12]         ; 0x8e51
    mov si, ax                       ; 0x8e55
    mov al, byte [bx + si + 0xa50]   ; 0x8e57
    sub ah, ah                       ; 0x8e5b
    mov word [dseg_84a0], ax         ; 0x8e5d
    mov word [dseg_830a], 0x15       ; 0x8e60
    mov ax, 1                        ; 0x8e66
    ret                              ; 0x8e69
