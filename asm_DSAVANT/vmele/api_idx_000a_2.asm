api_idx_000a_2:
    mov ax, 0xfff6                   ; 0x0f95
    call ds_dispatch_f40b            ; 0x0f98
    mov ax, word [bp + 0x4]          ; 0x0f9b
    shl ax, 1                        ; 0x0f9e
    mov bx, ax                       ; 0x0fa0
    mov bx, word [bx - 0x7b7e]       ; 0x0fa2
    cmp byte [bx + 0x19f], 0xff      ; 0x0fa6
    jne short @..api_idx_000a_2.l1   ; 0x0fab
    ret                              ; 0x0fad
@..api_idx_000a_2.l1:
    mov al, byte [bx + 0x19f]        ; 0x0fae
    cbw                              ; 0x0fb2
    mov word [bp - 0x0002], ax       ; 0x0fb3
    mov word [bp - 0x000a], 0        ; 0x0fb6
    cmp word [bp + 0xa], byte 0xff   ; 0x0fbb
    jne short @..api_idx_000a_2.l2   ; 0x0fbf
    mov word [bp + 0xa], 0           ; 0x0fc1
    mov cx, 0x15e                    ; 0x0fc6
    imul cx                          ; 0x0fc9
    mov bx, ax                       ; 0x0fcb
    mov al, byte [bx + 0x6b75]       ; 0x0fcd
    sub ah, ah                       ; 0x0fd1
    cmp ax, 0xfe                     ; 0x0fd3
    je short @..api_idx_000a_2.l2    ; 0x0fd6
    mov word [bp - 0x000a], 1        ; 0x0fd8
@..api_idx_000a_2.l2:
    mov ax, 0x15e                    ; 0x0fdd
    imul word [bp - 0x0002]          ; 0x0fe0
    add ax, word [bp + 0xa]          ; 0x0fe3
    mov bx, ax                       ; 0x0fe6
    mov al, byte [bx + 0x6a1a]       ; 0x0fe8
    sub ah, ah                       ; 0x0fec
    mov word [bp - 0x0004], ax       ; 0x0fee
    jmp near @..api_idx_000a_2.l10   ; 0x0ff1
