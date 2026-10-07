api_idx_0002_3:
    mov ax, 0xfffe                   ; 0x065b
    call ds_dispatch_f40b            ; 0x065e
    mov bx, word [data_0e12]         ; 0x0661
    mov si, word [data_8f3e]         ; 0x0665
    mov al, byte [bx + si + 0xb40]   ; 0x0669
    sub ah, ah                       ; 0x066d
    mov word [bp - 0x0002], ax       ; 0x066f
@..api_idx_0002_3.l1:
    push word [bp - 0x0002]          ; 0x0672
    push word [data_8f3e]            ; 0x0675
    push word [data_8f40]            ; 0x0679
    push word [data_8f42]            ; 0x067d
    call api_idx_0002                ; 0x0681
    add sp, byte 8                   ; 0x0684
    mov word [bp - 0x0002], ax       ; 0x0687
    cmp ax, strict word 0xffff       ; 0x068a
    je short @..api_idx_0002_3.l4    ; 0x068d
    mov bx, word [data_0e12]         ; 0x068f
    mov si, ax                       ; 0x0693
    cmp byte [bx + si + 0x5a0], 7    ; 0x0695
    jne short @..api_idx_0002_3.l3   ; 0x069a
    mov ax, data_0002                ; 0x069c
    push ax                          ; 0x069f
    mov ax, word [data_82ee]         ; 0x06a0
    shl ax, 1                        ; 0x06a3
    push ax                          ; 0x06a5
    shl si, 1                        ; 0x06a6
    push word [bx + si + 0x3c0]      ; 0x06a8
    call ds_dispatch_ed3a            ; 0x06ac
    add sp, byte 6                   ; 0x06af
    cmp ax, strict word 1            ; 0x06b2
    je short @..api_idx_0002_3.l2    ; 0x06b5
    mov ax, data_0002                ; 0x06b7
    push ax                          ; 0x06ba
    mov ax, word [data_82ee]         ; 0x06bb
    shl ax, 1                        ; 0x06be
    push ax                          ; 0x06c0
    mov ax, word [bp - 0x0002]       ; 0x06c1
    shl ax, 1                        ; 0x06c4
    mov si, ax                       ; 0x06c6
    mov bx, word [data_0e12]         ; 0x06c8
    push word [bx + si + 0x3c0]      ; 0x06cc
    call ds_dispatch_ed3a            ; 0x06d0
    add sp, byte 6                   ; 0x06d3
    cmp ax, strict word 2            ; 0x06d6
    jne short @..api_idx_0002_3.l3   ; 0x06d9
@..api_idx_0002_3.l2:
    mov ax, word [bp - 0x0002]       ; 0x06db
    ret                              ; 0x06de
