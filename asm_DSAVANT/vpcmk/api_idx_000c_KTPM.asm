; auto-generated
api_idx_000c_KTPM:
    mov ax, 0xfff4                   ; 0x2f3f
    call aztec_csav                  ; 0x2f42
    mov word [bp - 0x0002], 0        ; 0x2f45
@..api_idx_000c_KTPM.l1:
    lea ax, word [bp - 0x000c]       ; 0x2f4a
    push ax                          ; 0x2f4d
    mov ax, 0x248                    ; 0x2f4e
    imul word [bp + 0x4]             ; 0x2f51
    mov cx, word [bp - 0x0002]       ; 0x2f54
    shl cx, 1                        ; 0x2f57
    shl cx, 1                        ; 0x2f59
    add ax, cx                       ; 0x2f5b
    mov bx, ax                       ; 0x2f5d
    push word [bx + 0x5c1c]          ; 0x2f5f
    call ds_app_OPJO                 ; 0x2f63
    add sp, byte 4                   ; 0x2f66
    mov ax, 0                        ; 0x2f69
    push ax                          ; 0x2f6c
    mov ax, word [bp - 0x0002]       ; 0x2f6d
    shl ax, 1                        ; 0x2f70
    shl ax, 1                        ; 0x2f72
    mov bx, ax                       ; 0x2f74
    push word [word bx + 0x6]        ; 0x2f76
    call thunk_3                     ; 0x2f7a
    add sp, byte 4                   ; 0x2f7d
    mov ax, word [bp - 0x0002]       ; 0x2f80
    shl ax, 1                        ; 0x2f83
    shl ax, 1                        ; 0x2f85
    mov bx, ax                       ; 0x2f87
    push word [bx + 0x18e]           ; 0x2f89
    lea ax, word [bp - 0x000c]       ; 0x2f8d
    push ax                          ; 0x2f90
    call aztec_strlen                ; 0x2f91
    pop cx                           ; 0x2f94
    mov cx, 6                        ; 0x2f95
    imul cx                          ; 0x2f98
    mov cx, 2                        ; 0x2f9a
    cwd                              ; 0x2f9d
    idiv cx                          ; 0x2f9e
    mov cx, ax                       ; 0x2fa0
    mov ax, word [bp - 0x0002]       ; 0x2fa2
    shl ax, 1                        ; 0x2fa5
    shl ax, 1                        ; 0x2fa7
    mov bx, ax                       ; 0x2fa9
    mov ax, word [bx + 0x18c]        ; 0x2fab
    add ax, strict word 9            ; 0x2faf
    sub ax, cx                       ; 0x2fb2
    push ax                          ; 0x2fb4
    call thunk                       ; 0x2fb5
    add sp, byte 4                   ; 0x2fb8
    mov ax, 0                        ; 0x2fbb
    push ax                          ; 0x2fbe
    lea ax, word [bp - 0x000c]       ; 0x2fbf
    push ax                          ; 0x2fc2
    call ds_string_loc_PTIK          ; 0x2fc3
    add sp, byte 4                   ; 0x2fc6
    inc word [bp - 0x0002]           ; 0x2fc9
    mov ax, word [bp - 0x0002]       ; 0x2fcc
    cmp ax, strict word 6            ; 0x2fcf
    jge short @..api_idx_000c_KTPM.l2 ; 0x2fd2
    jmp near @..api_idx_000c_KTPM.l1 ; 0x2fd4
@..api_idx_000c_KTPM.l2:
    ret                              ; 0x2fd7
