api_idx_000c_3:
    mov ax, 0xfff4                   ; 0x2b5a
    call ds_dispatch_f40b            ; 0x2b5d
    mov word [bp - 0x0002], 0        ; 0x2b60
@..api_idx_000c_3.l1:
    lea ax, word [bp - 0x000c]       ; 0x2b65
    push ax                          ; 0x2b68
    mov ax, 0x248                    ; 0x2b69
    imul word [bp + 0x4]             ; 0x2b6c
    mov cx, word [bp - 0x0002]       ; 0x2b6f
    shl cx, 1                        ; 0x2b72
    shl cx, 1                        ; 0x2b74
    add ax, cx                       ; 0x2b76
    mov bx, ax                       ; 0x2b78
    push word [bx + 0x5c1c]          ; 0x2b7a
    call ds_dispatch_b27d            ; 0x2b7e
    add sp, byte 4                   ; 0x2b81
    mov ax, 0                        ; 0x2b84
    push ax                          ; 0x2b87
    mov ax, word [bp - 0x0002]       ; 0x2b88
    shl ax, 1                        ; 0x2b8b
    shl ax, 1                        ; 0x2b8d
    mov bx, ax                       ; 0x2b8f
    db 0xff, 0xb7, 0x06, 0x00 ; push word [bx + 0x6]
    call ds_dispatch_e823            ; 0x2b95
    add sp, byte 4                   ; 0x2b98
    mov ax, word [bp - 0x0002]       ; 0x2b9b
    shl ax, 1                        ; 0x2b9e
    shl ax, 1                        ; 0x2ba0
    mov bx, ax                       ; 0x2ba2
    push word [bx + 0x18e]           ; 0x2ba4
    lea ax, word [bp - 0x000c]       ; 0x2ba8
    push ax                          ; 0x2bab
    call ds_dispatch_fa90            ; 0x2bac
    pop cx                           ; 0x2baf
    mov cx, 6                        ; 0x2bb0
    imul cx                          ; 0x2bb3
    mov cx, data_0002                ; 0x2bb5
    cwd                              ; 0x2bb8
    idiv cx                          ; 0x2bb9
    mov cx, ax                       ; 0x2bbb
    mov ax, word [bp - 0x0002]       ; 0x2bbd
    shl ax, 1                        ; 0x2bc0
    shl ax, 1                        ; 0x2bc2
    mov bx, ax                       ; 0x2bc4
    mov ax, word [bx + 0x18c]        ; 0x2bc6
    add ax, strict word 9            ; 0x2bca
    sub ax, cx                       ; 0x2bcd
    push ax                          ; 0x2bcf
    call ds_dispatch_e809            ; 0x2bd0
    add sp, byte 4                   ; 0x2bd3
    mov ax, 0                        ; 0x2bd6
    push ax                          ; 0x2bd9
    lea ax, word [bp - 0x000c]       ; 0x2bda
    push ax                          ; 0x2bdd
    call ds_dispatch_e84e            ; 0x2bde
    add sp, byte 4                   ; 0x2be1
    inc word [bp - 0x0002]           ; 0x2be4
    mov ax, word [bp - 0x0002]       ; 0x2be7
    cmp ax, strict word 6            ; 0x2bea
    jge short @..api_idx_000c_3.l2   ; 0x2bed
    jmp near @..api_idx_000c_3.l1    ; 0x2bef
@..api_idx_000c_3.l2:
    ret                              ; 0x2bf2
